-- Drop table

-- DROP TABLE ods_bcm.v_tmi_term_info_vw;

CREATE TABLE ods_bcm.v_tmi_term_info_vw (
	entry_id varchar(10) NULL, -- 词条ID
	access_labor_number varchar(32) NULL, -- 访问人工号
	name_of_visitor varchar(32) NULL, -- 访问人姓名
	access_time varchar(32) NULL, -- 访问时间
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
COMMENT ON TABLE ods_bcm.v_tmi_term_info_vw IS '词条访问记录';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_term_info_vw.entry_id IS '词条ID';
COMMENT ON COLUMN ods_bcm.v_tmi_term_info_vw.access_labor_number IS '访问人工号';
COMMENT ON COLUMN ods_bcm.v_tmi_term_info_vw.name_of_visitor IS '访问人姓名';
COMMENT ON COLUMN ods_bcm.v_tmi_term_info_vw.access_time IS '访问时间';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_term_info_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_term_info_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_term_info_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_term_info_vw TO gr_uqry_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_term_info_vw TO ur_uown_edw;
