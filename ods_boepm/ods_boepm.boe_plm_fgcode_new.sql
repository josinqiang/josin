-- Drop table

-- DROP TABLE ods_boepm.boe_plm_fgcode_new;

CREATE TABLE ods_boepm.boe_plm_fgcode_new (
	fgcode_id varchar(50) NOT NULL, -- fgcode编号
	fgcode_name varchar(300) NULL, -- fgcode名称
	project_id varchar(50) NULL, -- 项目编号
	project_name varchar(100) NULL, -- 项目名称
	fgcode_edition varchar(20) NOT NULL, -- fgcode版本号
	fgcode_status varchar(30) NULL, -- fgcode状态
	flow_name varchar(60) NOT NULL, -- plm流程名称
	create_time timestamp NULL, -- fgcode创建时间
	receive_time timestamp NULL, -- 数据接收时间
	rp_time timestamp NULL, -- FG Code RP时间
	mp_time timestamp NULL, -- FG Code MP时间
	factory varchar(100) NULL, -- 流程抛送工厂
	array_no varchar(100) NULL, -- Array No
	cf_no varchar(100) NULL, -- CF No
	cell_no varchar(100) NULL, -- Cell No
	sensor_no varchar(100) NULL, -- Sensor No
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

-- Column comments

COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_id IS 'fgcode编号';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_name IS 'fgcode名称';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.project_id IS '项目编号';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.project_name IS '项目名称';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_edition IS 'fgcode版本号';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_status IS 'fgcode状态';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.flow_name IS 'plm流程名称';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.create_time IS 'fgcode创建时间';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.receive_time IS '数据接收时间';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.rp_time IS 'FG Code RP时间';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.mp_time IS 'FG Code MP时间';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.factory IS '流程抛送工厂';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.array_no IS 'Array No';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.cf_no IS 'CF No';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.cell_no IS 'Cell No';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.sensor_no IS 'Sensor No';

-- Permissions

ALTER TABLE ods_boepm.boe_plm_fgcode_new OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode_new TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode_new TO gr_uapp_data;
GRANT SELECT ON TABLE ods_boepm.boe_plm_fgcode_new TO gr_uqry_data;
