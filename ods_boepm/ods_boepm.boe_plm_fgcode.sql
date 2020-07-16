-- Drop table

-- DROP TABLE ods_boepm.boe_plm_fgcode;

CREATE TABLE ods_boepm.boe_plm_fgcode (
	fgcode_id varchar(50) NOT NULL, -- fgcode编号
	fgcode_name varchar(100) NULL, -- fgcode名称
	project_id varchar(50) NOT NULL, -- 项目ID
	project_name varchar(100) NULL, -- 项目名称
	fgcode_edition varchar(10) NOT NULL, -- fgcode描述
	fgcode_status varchar(30) NULL, -- fgcode状态
	flow_name varchar(60) NOT NULL,
	create_time timestamp NULL, -- 创建时间
	receive_time timestamp NULL, -- 接收时间
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
COMMENT ON TABLE ods_boepm.boe_plm_fgcode IS 'boeplm系统fgcode数据';

-- Column comments

COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_id IS 'fgcode编号';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_name IS 'fgcode名称';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.project_id IS '项目ID';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.project_name IS '项目名称';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_edition IS 'fgcode描述';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.fgcode_status IS 'fgcode状态';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.create_time IS '创建时间';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode.receive_time IS '接收时间';

-- Permissions

ALTER TABLE ods_boepm.boe_plm_fgcode OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode TO gr_uapp_data;
GRANT SELECT ON TABLE ods_boepm.boe_plm_fgcode TO gr_uqry_data;
