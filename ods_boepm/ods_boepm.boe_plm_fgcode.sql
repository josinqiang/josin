-- Drop table

-- DROP TABLE ods_boepm.boe_plm_fgcode;

CREATE TABLE ods_boepm.boe_plm_fgcode (
	fgcode_id varchar(50) NOT NULL, -- fgcode���
	fgcode_name varchar(100) NULL, -- fgcode����
	project_id varchar(50) NOT NULL, -- ��ĿID
	project_name varchar(100) NULL, -- ��Ŀ����
	fgcode_edition varchar(10) NOT NULL, -- fgcode����
	fgcode_status varchar(30) NULL, -- fgcode״̬
	flow_name varchar(60) NOT NULL,
	create_time timestamp NULL, -- ����ʱ��
	receive_time timestamp NULL, -- ����ʱ��
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

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_boepm.boe_plm_fgcode IS 'boeplmϵͳfgcode����';

-- Column comments

COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_id IS 'fgcode���';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_name IS 'fgcode����';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.project_id IS '��ĿID';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.project_name IS '��Ŀ����';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_edition IS 'fgcode����';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_status IS 'fgcode״̬';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.create_time IS '����ʱ��';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.receive_time IS '����ʱ��';

-- Permissions

ALTER TABLE ods_boepm.boe_plm_fgcode OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode TO gr_uapp_data;
GRANT SELECT ON TABLE ods_boepm.boe_plm_fgcode TO gr_uqry_data;
