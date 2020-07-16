-- Drop table

-- DROP TABLE ods_machine.b4_cf_r2_d_event_history;

CREATE TABLE ods_machine.b4_cf_r2_d_event_history (
	startdatetime timestamp NULL,
	eventno int4 NULL,
	endflg bool NULL,
	enddatetime timestamp NULL,
	eventdata1 varchar(32) NULL,
	eventdata2 varchar(32) NULL,
	eventdata3 varchar(32) NULL,
	eventdata4 varchar(32) NULL,
	eventdata5 varchar(32) NULL,
	eventdata6 varchar(32) NULL,
	eventdata7 varchar(32) NULL,
	eventdata8 varchar(32) NULL,
	eventdata9 varchar(32) NULL,
	eventdata10 varchar(32) NULL,
	eventdata11 varchar(32) NULL,
	eventdata12 varchar(32) NULL,
	eventdata13 varchar(32) NULL,
	eventdata14 varchar(32) NULL,
	eventdata15 varchar(32) NULL,
	eventdata16 varchar(32) NULL,
	equipsts1 int4 NULL,
	equipsts2 int4 NULL,
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
COMMENT ON TABLE ods_machine.b4_cf_r2_d_event_history IS 'coater事件记录表，字段注释详见m_event_define表';

-- Permissions

ALTER TABLE ods_machine.b4_cf_r2_d_event_history OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_d_event_history TO ur_uown_ods;
GRANT ALL ON TABLE ods_machine.b4_cf_r2_d_event_history TO gr_uapp_data;
GRANT SELECT ON TABLE ods_machine.b4_cf_r2_d_event_history TO gr_uqry_data;
