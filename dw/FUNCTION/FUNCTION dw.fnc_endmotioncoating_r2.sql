CREATE OR REPLACE FUNCTION dw.fnc_endmotioncoating_r2(v_ts timestamp,v_t0 numeric,v_flag bool)
	RETURNS numeric
	LANGUAGE plpgsql
	VOLATILE
AS $$
	
declare
	v_emn numeric(19,7) := 1;		--End Motion�����, end motion number��ȡֵ��ΧΪ1,2,3
	v_emp numeric(19,7) := 524;	--End Motion����, end motion parameter
	v_empv numeric(19,7) := -1;	--End Motion������Ӧ��ֵ, end motion parameter value��ȡֵ��ΧΪ0,1,2,3
	v_p527 numeric(19,7) := -1;	--����527��Ӧ��ֵ��nozzle airvent exec condition��ȡֵ��ΧΪ0,1,2
	v_p528 numeric(19,7);	--����528��Ӧ��ֵ��nozzle airvent judge time����λΪmin
	v_p529 numeric(19,7) := -1;	--����529��Ӧ��ֵ��non contact wipe exec condition��ȡֵ��ΧΪ0,1,2
	v_p530 numeric(19,7);	--����530��Ӧ��ֵ��non contact wipe judge time����λΪmin
	v_p531 numeric(19,7) := -1;	--����531��Ӧ��ֵ��bleed wiing exec condition��ȡֵ��ΧΪ0,1
	v_p532 numeric(19,7);	--����532��Ӧ��ֵ��bleed volume
	v_p534 numeric(19,7);	--����534��Ӧ��ֵ��bleed wiping count
	v_p724 numeric(19,7);	--����724��Ӧ��ֵ��nozzle airvent count
	v_p716 numeric(19,7);	--����716��Ӧ��ֵ��nozzle airvent volume
	v_p340 numeric(19,7);	--����340��Ӧ��ֵ��bleed volume
	v_p342 numeric(19,7);	--����342��Ӧ��ֵ��bleed count
	v_v	numeric(19,7) := 0;	--End Motion�׶��½���
begin
	while v_emn <= 3 loop
		--����ֵ��ʼ��
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
		select cast(tr.value as numeric(19,7))*60 into v_p528 from temp_recipe tr where tr.paramNo = 528;	--ת��Ϊ��
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
		select cast(tr.value as numeric(19,7))*60 into v_p530 from temp_recipe tr where tr.paramNo = 530;	--ת��Ϊ��
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
		--ѡ��end motion������ֵ����ʼʱv_empֵΪ524����ѡ��End motion selection 1��ֵ
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
			--��End Motion����ֵΪ0ʱ��ִ��No motion
			when 0 then
				v_emn := v_emn + 1;
				v_emp := v_emp + 1;
				continue;
			--��End Motion����ֵΪ1ʱ��ִ��Nozzle airvent
			when 1 then
				case v_p527
					--��Nozzle���ݲ���Ϊ0ʱ��������ִ��
					when 0 then
						v_v := v_v + v_p724 * v_p716;
					--��Nozzle���ݲ���Ϊ1ʱ��Only DIP motion
					when 1 then
						if($3) then
							v_v := v_v + v_p724 * v_p716;
						end if;
					--��Nozzle���ݲ���Ϊ2ʱ����Auto Standby����ʱ�����Nozzle airvent�ж�ʱ���ִ��
					when 2 then
						if($2 > v_p528) then
							v_v := v_v + v_p724 * v_p716;
						end if;
					else
						v_emn := v_emn + 1;
						v_emp := v_emp + 1;
						continue;
				end case;
			--��End Motion����ֵΪ2ʱ��ִ��Non contact wiping
			when 2 then
				case v_p529
					--���ǽӴ���ϴ����Ϊ0ʱ��������ִ��
					when 0 then
						v_v := v_v + v_p342 * v_p340;
					--���ǽӴ���ϴ����Ϊ1ʱ��Only DIP motion
					when 1 then
						if($3) then
							v_v := v_v + v_p342 * v_p340;
						end if;
					--�� �ǽӴ���ϴ����Ϊ2ʱ����Auto Standby����ʱ�����Non contact wiping�ж�ʱ���ִ��
					when 2 then
						if($2 > v_p530) then
							v_v := v_v + v_p342 * v_p340;
						end if;
					else
						v_emn := v_emn + 1;
						v_emp := v_emp + 1;
						continue;
					end case;
			--��End Motion����ֵΪ3ʱ��ִ��Bleed wipe
			when 3 then
				case v_p531
					--��Bleed wipe����Ϊ0ʱ��������ִ��
					when 0 then
						v_v := v_v + v_p534 * v_p532;
					--��Bleed wipe����Ϊ1ʱ��Only DIP motion
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
			--�ô�End motionִ����ϣ�������һ��End motion
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
