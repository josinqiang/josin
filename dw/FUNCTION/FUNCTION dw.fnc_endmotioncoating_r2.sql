CREATE OR REPLACE FUNCTION dw.fnc_endmotioncoating_r2(v_ts timestamp,v_t0 numeric,v_flag bool)
	RETURNS numeric
	LANGUAGE plpgsql
	VOLATILE
AS $$
	
declare
	v_emn numeric(19,7) := 1;		--End Motion步骤号, end motion number，取值范围为1,2,3
	v_emp numeric(19,7) := 524;	--End Motion参数, end motion parameter
	v_empv numeric(19,7) := -1;	--End Motion参数对应的值, end motion parameter value，取值范围为0,1,2,3
	v_p527 numeric(19,7) := -1;	--参数527对应的值，nozzle airvent exec condition，取值范围为0,1,2
	v_p528 numeric(19,7);	--参数528对应的值，nozzle airvent judge time，单位为min
	v_p529 numeric(19,7) := -1;	--参数529对应的值，non contact wipe exec condition，取值范围为0,1,2
	v_p530 numeric(19,7);	--参数530对应的值，non contact wipe judge time，单位为min
	v_p531 numeric(19,7) := -1;	--参数531对应的值，bleed wiing exec condition，取值范围为0,1
	v_p532 numeric(19,7);	--参数532对应的值，bleed volume
	v_p534 numeric(19,7);	--参数534对应的值，bleed wiping count
	v_p724 numeric(19,7);	--参数724对应的值，nozzle airvent count
	v_p716 numeric(19,7);	--参数716对应的值，nozzle airvent volume
	v_p340 numeric(19,7);	--参数340对应的值，bleed volume
	v_p342 numeric(19,7);	--参数342对应的值，bleed count
	v_v	numeric(19,7) := 0;	--End Motion阶段吐胶量
begin
	while v_emn <= 3 loop
		--参数值初始化
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p527 from temp_recipe tr where tr.paramNo = 527;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select cast(tr.value as numeric(19,7))*60 into v_p528 from temp_recipe tr where tr.paramNo = 528;	--转化为秒
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p529 from temp_recipe tr where tr.paramNo = 529;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select cast(tr.value as numeric(19,7))*60 into v_p530 from temp_recipe tr where tr.paramNo = 530;	--转化为秒
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p531 from temp_recipe tr where tr.paramNo = 531;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p532 from temp_recipe tr where tr.paramNo = 532;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p534 from temp_recipe tr where tr.paramNo = 534;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p724 from temp_recipe tr where tr.paramNo = 724;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p716 from temp_recipe tr where tr.paramNo = 716;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p340 from temp_recipe tr where tr.paramNo = 340;
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_p342 from temp_recipe tr where tr.paramNo = 342;
		--选择end motion参数的值，初始时v_emp值为524，即选择End motion selection 1的值
		with temp_recipe as (
			SELECT dpp.ParamNo, dpp.Value, dpp.ChangeDate 
			from ods_machine.b4_cf_r2_d_prm_prc dpp
			inner join (
				select recent_dpp.ParamNo, max(recent_dpp.ChangeDate) as maxchangedate 
				from ods_machine.b4_cf_r2_d_prm_prc recent_dpp
				where recent_dpp.ChangeDate <= $1
				group by recent_dpp.ParamNo
			) rdpp
			on dpp.ParamNo = rdpp.paramno and dpp.ChangeDate = rdpp.maxchangedate
		)
		select tr.value into v_empv from temp_recipe tr where tr.paramNo = v_emp;
		case v_empv
			--当End Motion参数值为0时，执行No motion
			when 0 then
				v_emn := v_emn + 1;
				v_emp := v_emp + 1;
				continue;
			--当End Motion参数值为1时，执行Nozzle airvent
			when 1 then
				case v_p527
					--当Nozzle排泡参数为0时，无条件执行
					when 0 then
						v_v := v_v + v_p724 * v_p716;
					--当Nozzle排泡参数为1时，Only DIP motion
					when 1 then
						if($3) then
							v_v := v_v + v_p724 * v_p716;
						end if;
					--当Nozzle排泡参数为2时，当Auto Standby持续时间大于Nozzle airvent判定时间才执行
					when 2 then
						if($2 > v_p528) then
							v_v := v_v + v_p724 * v_p716;
						end if;
					else
						v_emn := v_emn + 1;
						v_emp := v_emp + 1;
						continue;
				end case;
			--当End Motion参数值为2时，执行Non contact wiping
			when 2 then
				case v_p529
					--当非接触清洗参数为0时，无条件执行
					when 0 then
						v_v := v_v + v_p342 * v_p340;
					--当非接触清洗参数为1时，Only DIP motion
					when 1 then
						if($3) then
							v_v := v_v + v_p342 * v_p340;
						end if;
					--当 非接触清洗参数为2时，当Auto Standby持续时间大于Non contact wiping判定时间才执行
					when 2 then
						if($2 > v_p530) then
							v_v := v_v + v_p342 * v_p340;
						end if;
					else
						v_emn := v_emn + 1;
						v_emp := v_emp + 1;
						continue;
					end case;
			--当End Motion参数值为3时，执行Bleed wipe
			when 3 then
				case v_p531
					--当Bleed wipe参数为0时，无条件执行
					when 0 then
						v_v := v_v + v_p534 * v_p532;
					--当Bleed wipe参数为1时，Only DIP motion
					when 1 then
						if($3) then
							v_v := v_v + v_p534 * v_p532;
						end if;
					else
						v_emn := v_emn + 1;
						v_emp := v_emp + 1;
						continue;
				end case;
			else
				v_emn := v_emn + 1;
				v_emp := v_emp + 1;
			end case;
			--该次End motion执行完毕，进入下一次End motion
			v_emn := v_emn + 1;
			v_emp := v_emp + 1;
	end loop;
	return v_v;
end;

$$
EXECUTE ON ANY;

-- Permissions

ALTER FUNCTION dw.fnc_endmotioncoating_r2(timestamp,numeric,bool) OWNER TO ur_uown_edw;
GRANT ALL ON FUNCTION dw.fnc_endmotioncoating_r2(timestamp,numeric,bool) TO ur_uown_edw;
