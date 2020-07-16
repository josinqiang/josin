-- Drop table

-- DROP TABLE ods_bwm.atdemployeecalendar;

CREATE TABLE ods_bwm.atdemployeecalendar (
	calendardate varchar(10) NULL,
	personid varchar(40) NULL,
	timeclassid varchar(40) NULL,
	calendartype int4 NULL,
	businessunitid varchar(40) NULL,
	timefrom varchar(8) NULL,
	timeto varchar(8) NULL,
	lastupdateuser varchar(50) NULL,
	lastupdatedtm varchar(40) NULL,
	swrest int4 NULL,
	calhours numeric(5,2) NULL,
	isdeleted varchar(2) NULL,
	calendardate_offset numeric(6,1) NULL,
	calendardate_tzid varchar(50) NULL,
	lastupdatedtm_utc varchar(40) NULL,
	lastupdatedtm_offset numeric(6,1) NULL,
	lastupdatedtm_tzid varchar(50) NULL,
	status bpchar(1) NULL,
	atdecaid varchar(50) NULL,
	locker varchar(40) NULL,
	islocked numeric(5,2) NULL,
	begintime varchar(8) NULL,
	endtime varchar(8) NULL,
	elasticstarttime varchar(5) NULL,
	elasticendtime varchar(5) NULL,
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
COMMENT ON TABLE ods_bwm.atdemployeecalendar IS '员工排班记录表，每人每天一条排班记录';

-- Permissions

ALTER TABLE ods_bwm.atdemployeecalendar OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdemployeecalendar TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdemployeecalendar TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.atdemployeecalendar TO gr_uqry_data;
