-- Drop table

-- DROP TABLE dw.tf_qm_component_library_maintenance_ledger;

CREATE TABLE dw.tf_qm_component_library_maintenance_ledger (
	part_id varchar(256) NULL, -- 主键id
	link_vendor_part_id varchar(256) NULL, -- 主键id
	vendor_info_id varchar(256) NULL, -- 主键id
	dict_datum_id varchar(256) NULL, -- 主键id
	flag numeric NULL, -- 使用状态编码
	flag_name text NULL, -- 使用状态名称
	part_code varchar(256) NULL, -- 部件编码
	part_description varchar(1024) NULL, -- 部件描述
	part_unit varchar(128) NULL, -- 部件单元
	part_type varchar(64) NULL, -- 部件类型 ROH/ROH1
	part_model varchar(1024) NULL, -- 部件型号
	"version" varchar(10) NULL, -- 版本
	created_time_wid int8 NULL, -- 创建时间代理键
	audit_status varchar(48) NULL, -- 审计状态
	vendor_wid int8 NULL, -- 制造商代码代理键
	vendor_full_name_cn varchar(4000) NULL, -- 制造商名称
	datum_name varchar(1024) NULL, -- 声明基准
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_qm_component_library_maintenance_ledger IS '部件库维护台账';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_id IS '主键id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.link_vendor_part_id IS '主键id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.vendor_info_id IS '主键id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.dict_datum_id IS '主键id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.flag IS '使用状态编码';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.flag_name IS '使用状态名称';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_code IS '部件编码';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_description IS '部件描述';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_unit IS '部件单元';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_type IS '部件类型 ROH/ROH1';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_model IS '部件型号';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger."version" IS '版本';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.created_time_wid IS '创建时间代理键';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.audit_status IS '审计状态';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.vendor_wid IS '制造商代码代理键';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.vendor_full_name_cn IS '制造商名称';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.datum_name IS '声明基准';

-- Permissions

ALTER TABLE dw.tf_qm_component_library_maintenance_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_component_library_maintenance_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_component_library_maintenance_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_component_library_maintenance_ledger TO gr_uqry_data;
