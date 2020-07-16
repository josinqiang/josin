-- Drop table

-- DROP TABLE ods_machine.b4_cf_r2_m_event_define;

CREATE TABLE ods_machine.b4_cf_r2_m_event_define (
	eventno int4 NULL, -- �¼����
	eventtype int4 NULL, -- �¼�����
	unitno int4 NULL,
	viewlevel int4 NULL,
	eventname1 varchar(128) NULL, -- �¼����ƣ�Ӣ��
	eventname2 varchar(128) NULL, -- �¼����ƣ�����
	eventname3 varchar(128) NULL, -- �¼����ƣ�����
	eventname4 varchar(128) NULL, -- �¼����ƣ�����
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
COMMENT ON TABLE ods_machine.b4_cf_r2_m_event_define IS 'event_historyע�ͱ�';

-- Column comments

COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventno IS '�¼����';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventtype IS '�¼�����';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname1 IS '�¼����ƣ�Ӣ��';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname2 IS '�¼����ƣ�����';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname3 IS '�¼����ƣ�����';
COMMENT ON COLUMN ods_machine.b4_cf_r2_m_event_define.eventname4 IS '�¼����ƣ�����';

-- Permissions

ALTER TABLE ods_machine.b4_cf_r2_m_event_define OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_event_define TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_m_event_define TO gr_uapp_data;
GRANT SELECT ON TABLE ods_machine.b4_cf_r2_m_event_define TO gr_uqry_data;
