-- Drop table

-- DROP TABLE ods_machine.b4_cf_r2_d_prm_prc;

CREATE TABLE ods_machine.b4_cf_r2_d_prm_prc (
	recipetype int4 NULL,
	recipeno int4 NULL, -- recipeno
	paramno int4 NULL, -- ͨ��recipe
	value varchar(32) NULL, -- ͨ��recipe��Ӧ��ֵ
	changedate timestamp NULL, -- ��Чʱ��
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED REPLICATED;
COMMENT ON TABLE ods_machine.b4_cf_r2_d_prm_prc IS 'ͨ��recipeno����ֵӳ���';

-- Column comments

COMMENT ON COLUMN ods_machine.b4_cf_r2_d_prm_prc.recipeno IS 'recipeno';
COMMENT ON COLUMN ods_machine.b4_cf_r2_d_prm_prc.paramno IS 'ͨ��recipe';
COMMENT ON COLUMN ods_machine.b4_cf_r2_d_prm_prc.value IS 'ͨ��recipe��Ӧ��ֵ';
COMMENT ON COLUMN ods_machine.b4_cf_r2_d_prm_prc.changedate IS '��Чʱ��';

-- Permissions

ALTER TABLE ods_machine.b4_cf_r2_d_prm_prc OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_d_prm_prc TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_d_prm_prc TO gr_uapp_data;
GRANT SELECT ON TABLE ods_machine.b4_cf_r2_d_prm_prc TO gr_uqry_data;
