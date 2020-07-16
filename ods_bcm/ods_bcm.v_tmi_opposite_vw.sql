-- Drop table

-- DROP TABLE ods_bcm.v_tmi_opposite_vw;

CREATE TABLE ods_bcm.v_tmi_opposite_vw (
	opposite_party_registered_name varchar(800) NULL, -- 相对方注册名称
	counterpart_name varchar(200) NULL, -- 相对方名称
	relative_type varchar(180) NULL, -- 相对方类型
	temporary_encoding varchar(2048) NULL, -- 临时编码
	erp_encoding varchar(2048) NULL, -- ERP编码
	mdm_encoding varchar(50) NULL, -- MDM编码
	state varchar(180) NULL, -- 状态
	national_area varchar(180) NULL, -- 国家地区
	opposite_nature varchar(180) NULL, -- 相对方性质
	reserved_field_1 varchar(1) NULL, -- 预留字段1
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
COMMENT ON TABLE ods_bcm.v_tmi_opposite_vw IS '相对方信息';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.opposite_party_registered_name IS '相对方注册名称';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.counterpart_name IS '相对方名称';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.relative_type IS '相对方类型';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.temporary_encoding IS '临时编码';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.erp_encoding IS 'ERP编码';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.mdm_encoding IS 'MDM编码';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.state IS '状态';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.national_area IS '国家地区';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.opposite_nature IS '相对方性质';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_1 IS '预留字段1';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_2 IS '预留字段2';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_3 IS '预留字段3';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_4 IS '预留字段4';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_5 IS '预留字段5';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_opposite_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_opposite_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_opposite_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_opposite_vw TO gr_uqry_data;
