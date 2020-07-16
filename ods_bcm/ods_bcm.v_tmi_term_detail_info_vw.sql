-- Drop table

-- DROP TABLE ods_bcm.v_tmi_term_detail_info_vw;

CREATE TABLE ods_bcm.v_tmi_term_detail_info_vw (
	entry_id varchar(10) NULL,
	entry_name varchar(1024) NULL, -- 词条名称
	secret_class varchar(90) NULL, -- 密级
	create_name varchar(30) NULL, -- 创建姓名
	create_labor_number varchar(15) NULL, -- 创建人工号
	date_of_creation date NULL, -- 创建日期
	last_editor varchar(15) NULL, -- 最近一次编辑人
	editing_time date NULL, -- 编辑时间
	reserved_field_1 varchar(30) NULL, -- 预留字段1
	reserved_field_2 varchar(1) NULL, -- 预留字段2
	reserved_field_3 varchar(1) NULL, -- 预留字段3
	reserved_field_4 varchar(1) NULL, -- 预留字段4
	reserved_field_5 varchar(1) NULL, -- 预留字段5
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
COMMENT ON TABLE ods_bcm.v_tmi_term_detail_info_vw IS '词条信息';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.entry_name IS '词条名称';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.secret_class IS '密级';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.create_name IS '创建姓名';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.create_labor_number IS '创建人工号';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.date_of_creation IS '创建日期';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.last_editor IS '最近一次编辑人';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.editing_time IS '编辑时间';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_1 IS '预留字段1';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_2 IS '预留字段2';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_3 IS '预留字段3';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_4 IS '预留字段4';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_5 IS '预留字段5';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_term_detail_info_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_term_detail_info_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_term_detail_info_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_term_detail_info_vw TO gr_uqry_data;
