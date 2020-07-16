CREATE OR REPLACE FUNCTION dw.fnc_motioncoating_r2(v_t0 numeric,v_ts timestamp)
	RETURNS numeric
	LANGUAGE plpgsql
	VOLATILE
AS $$
	
declare
        v_v numeric(19,7) := 0;            --motion阶段总吐胶量volume
        v_pm numeric(19,7) := -1;        --吐出选项pump motion
        v_pns numeric(19,7) := -1;       --通用recipe表参数选择pump number selection
        v_ms numeric(19,7) := 512;       --动作选项motion selection，初始化为Motion 1对应动作选项
        v_mts numeric(19,7) := 513;      --执行时间选项motion time selection，初始化为Motion 1对应执行时间选项
        v_nms numeric(19,7) := 514;      --下一步动作参数next motion selection，初始化为Motion 1对应下一步动作参数
        v_nm numeric(19,7) := -1;          --下一步动作next motion
        v_t numeric(19,7);                     --Auto Standby剩余时间
        v_t500 numeric(19,7);                --通用recipe中参数为500的时间
        v_t504 numeric(19,7);                --通用recipe中参数为504的时间
        v_tm numeric(19,7);                   --Motion持续时间
        v_mt numeric(19,7);                   --Motion最大执行时间
        v_vdp numeric(19,7);                 --单次吐胶量volume dispensed
begin
        --取距离Auto Standby开始时间最近时间的通用recipe清单
        with temp_recipe as (
                SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
                from ods_machine.b4_cf_r2_d_prm_prc dpp
                inner join (
                        select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
                        from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
                        where recent_dpp.ChangeDate <= $2
                        group by recent_dpp.ParamNo
                 ) rdpp
                on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
        --从连续涂布状态进入Standby状态的等待时间
        select tr.value into v_t500 from temp_recipe tr where tr.paramNo = 500;
        --进入Standby后的吐出间隔时间
		with temp_recipe as (
                SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
                from ods_machine.b4_cf_r2_d_prm_prc dpp
                inner join (
                        select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
                        from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
                        where recent_dpp.ChangeDate <= $2
                        group by recent_dpp.ParamNo
                 ) rdpp
                on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
        select tr.value into v_t504 from temp_recipe tr where tr.paramNo = 504;
        --当Auto Standby剩余时间大于进入Standby状态的等待时间才开始执行Motion
        v_t := $1 - v_t500;
        while v_t > 0 loop
                --吐出选项为通用recipe中参数为v_ms的值，v_ms初始为512，即Motion 1 selection，吐出选项取值范围为0,1,2,3
				with temp_recipe as (
                SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
                from ods_machine.b4_cf_r2_d_prm_prc dpp
                inner join (
                        select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
                        from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
                        where recent_dpp.ChangeDate <= $2
                        group by recent_dpp.ParamNo
                 ) rdpp
                on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
				)
                select tr.value into v_pm from temp_recipe tr where tr.paramNo = v_ms;
                --根据吐出选项的值决定单次吐出量选项
                case v_pm
                        when 0 then
                                continue;
                        when 1 then
                                v_pns := 501;
                        when 2 then
                                v_pns := 502;
                        when 3 then
                                return v_v;
                        else
                                v_pns := -1;
                end case;
                --Motion最大执行时间为通用recipe中参数为v_mts的值，v_mts初始为513，即Motion 1 motion time，单位为min，乘以60后转化为秒
				with temp_recipe as (
                SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
                from ods_machine.b4_cf_r2_d_prm_prc dpp
                inner join (
                        select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
                        from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
                        where recent_dpp.ChangeDate <= $2
                        group by recent_dpp.ParamNo
                 ) rdpp
                on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
				)
                select cast(tr.value as numeric(19,7))*60 into v_mt from temp_recipe tr where tr.paramNo = v_mts;
                --Motion持续时间为Auto Standby剩余时间和Motion最大执行时间中的较小值
                case 
                        when v_t <= v_mt then 
                                v_tm := v_t; 
                        else 
                                v_tm := v_mt; 
                end case;
                --单次吐胶量
				with temp_recipe as (
                SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
                from ods_machine.b4_cf_r2_d_prm_prc dpp
                inner join (
                        select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
                        from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
                        where recent_dpp.ChangeDate <= $2
                        group by recent_dpp.ParamNo
                 ) rdpp
                on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
				)
                select tr.value into v_vdp from temp_recipe tr where tr.paramNo = v_pns;
                --计算该次Motion中的总吐胶量
                v_v := v_v + floor(v_tm / v_t504) * v_vdp;
                --Auto Standby剩余时间减去Motion持续时间为新的Auto Standby剩余时间
                v_t := v_t - v_tm;
                --下一步动作选项为通用recipe中参数为v_nms的值，v_nms初始为514，即Motion 1 next motion，取值范围为0,1,2,3,4
				with temp_recipe as (
                SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
                from ods_machine.b4_cf_r2_d_prm_prc dpp
                inner join (
                        select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
                        from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
                        where recent_dpp.ChangeDate <= $2
                        group by recent_dpp.ParamNo
                 ) rdpp
                on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
                select tr.value into v_nm from temp_recipe tr where tr.paramNo = v_nms;
                --根据下一步动作选项的值决定下一个Motion
                case v_nm
                        when 0 then
                                v_ms := 512;
                                v_mts := 513;
                                v_nms := 514;
                        when 1 then
                                v_ms := 515;
                                v_mts := 516;
                                v_nms := 517;
                        when 2 then
                                v_ms := 518;
                                v_mts := 519;
                                v_nms := 520;
                        when 3 then
                                v_ms := 521;
                                v_mts := 522;
                                v_nms := 523;
                        when 4 then
                                return v_v;
                        else
                                v_ms := 512;
                                v_mts := 513;
                                v_nms := 514;
                end case;
        end loop;
        return v_v;
end;

$$
EXECUTE ON ANY;

-- Permissions

ALTER FUNCTION dw.fnc_motioncoating_r2(numeric,timestamp) OWNER TO ur_uown_edw;
GRANT ALL ON FUNCTION dw.fnc_motioncoating_r2(numeric,timestamp) TO ur_uown_edw;
