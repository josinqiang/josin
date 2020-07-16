-- Drop table

-- DROP TABLE ods_machine.b4_cf_r2_m_event_define;

CREATE TABLE ods_machine.b4_cf_r2_m_event_define (
	eventno int4 NULL, -- 事件编号
	eventtype int4 NULL, -- 事件类型
	unitno int4 NULL,
	viewlevel int4 NULL,
	eventname1 varchar(128) NULL, -- 事件名称，英文
	eventname2 varchar(128) NULL, -- 事件名称，日文
	eventname3 varchar(128) NULL, -- 事件名称，中文
	eventname4 varchar(128) NULL, -- 事件名称，德文
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
COMMENT ON TABLE ods_machine.b4_cf_r2_m_event_define IS 'event_history注释表';

-- Column comments

COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventno IS '事件编号';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventtype IS '事件类型';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname1 IS '事件名称，英文';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname2 IS '事件名称，日文';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname3 IS '事件名称，中文';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname4 IS '事件名称，德文';

-- Permissions

ALTER TABLE ods_machine.b4_cf_r2_m_event_define OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_event_define TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_event_define TO gr_uapp_data;
GRANT SELECT ON TABLE ods_machine.b4_cf_r2_m_event_define TO gr_uqry_data;
