CREATE OR REPLACE FUNCTION dw.fnc_motioncoating_r2(v_t0 numeric,v_ts timestamp)
	RETURNS numeric
	LANGUAGE plpgsql
	VOLATILE
AS $$
	
declare
        v_v numeric(19,7) := 0;            --motion�׶����½���volume
        v_pm numeric(19,7) := -1;        --�³�ѡ��pump motion
        v_pns numeric(19,7) := -1;       --ͨ��recipe�����ѡ��pump number selection
        v_ms numeric(19,7) := 512;       --����ѡ��motion selection����ʼ��ΪMotion 1��Ӧ����ѡ��
        v_mts numeric(19,7) := 513;      --ִ��ʱ��ѡ��motion time selection����ʼ��ΪMotion 1��Ӧִ��ʱ��ѡ��
        v_nms numeric(19,7) := 514;      --��һ����������next motion selection����ʼ��ΪMotion 1��Ӧ��һ����������
        v_nm numeric(19,7) := -1;          --��һ������next motion
        v_t numeric(19,7);                     --Auto Standbyʣ��ʱ��
        v_t500 numeric(19,7);                --ͨ��recipe�в���Ϊ500��ʱ��
        v_t504 numeric(19,7);                --ͨ��recipe�в���Ϊ504��ʱ��
        v_tm numeric(19,7);                   --Motion����ʱ��
        v_mt numeric(19,7);                   --Motion���ִ��ʱ��
        v_vdp numeric(19,7);                 --�����½���volume dispensed
begin
        --ȡ����Auto Standby��ʼʱ�����ʱ���ͨ��recipe�嵥
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
        --������Ϳ��״̬����Standby״̬�ĵȴ�ʱ��
        select tr.value into v_t500 from temp_recipe tr where tr.paramNo = 500;
        --����Standby����³����ʱ��
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
        --��Auto Standbyʣ��ʱ����ڽ���Standby״̬�ĵȴ�ʱ��ſ�ʼִ��Motion
        v_t := $1 - v_t500;
        while v_t > 0 loop
                --�³�ѡ��Ϊͨ��recipe�в���Ϊv_ms��ֵ��v_ms��ʼΪ512����Motion 1 selection���³�ѡ��ȡֵ��ΧΪ0,1,2,3
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
                --�����³�ѡ���ֵ���������³���ѡ��
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
                --Motion���ִ��ʱ��Ϊͨ��recipe�в���Ϊv_mts��ֵ��v_mts��ʼΪ513����Motion 1 motion time����λΪmin������60��ת��Ϊ��
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
                --Motion����ʱ��ΪAuto Standbyʣ��ʱ���Motion���ִ��ʱ���еĽ�Сֵ
                case 
                        when v_t <= v_mt then 
                                v_tm := v_t; 
                        else 
                                v_tm := v_mt; 
                end case;
                --�����½���
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
                --����ô�Motion�е����½���
                v_v := v_v + floor(v_tm / v_t504) * v_vdp;
                --Auto Standbyʣ��ʱ���ȥMotion����ʱ��Ϊ�µ�Auto Standbyʣ��ʱ��
                v_t := v_t - v_tm;
                --��һ������ѡ��Ϊͨ��recipe�в���Ϊv_nms��ֵ��v_nms��ʼΪ514����Motion 1 next motion��ȡֵ��ΧΪ0,1,2,3,4
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
                --������һ������ѡ���ֵ������һ��Motion
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
