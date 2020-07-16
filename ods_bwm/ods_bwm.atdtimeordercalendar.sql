-- Drop table

-- DROP TABLE ods_bwm.atdtimeordercalendar;

CREATE TABLE ods_bwm.atdtimeordercalendar (
	calendardate varchar(10) NULL,
	timeorderid varchar(40) NULL,
	calendartype int4 NULL,
	businessunitid varchar(40) NULL,
	timeclassid varchar(40) NULL,
	specialevent varchar(400) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_bwm.atdtimeordercalendar IS '行事历明细表，每天一条记录，考勤系统配置项，基本为上年年末更新下年行事历';

-- Permissions

ALTER TABLE ods_bwm.atdtimeordercalendar OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdtimeordercalendar TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdtimeordercalendar TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.atdtimeordercalendar TO gr_uqry_data;
