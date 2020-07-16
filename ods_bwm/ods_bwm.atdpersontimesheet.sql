-- Drop table

-- DROP TABLE ods_bwm.atdpersontimesheet;

CREATE TABLE ods_bwm.atdpersontimesheet (
	psnpayid varchar(40) NULL,
	personid varchar(40) NULL,
	timesheetdatefrom varchar(10) NULL,
	timesheetdateto varchar(10) NULL,
	timesheettimefrom varchar(8) NULL,
	timesheettimeto varchar(8) NULL,
	tshours numeric(18,2) NULL,
	src int4 NULL,
	isapproved int4 NULL,
	approveduser varchar(50) NULL,
	approveddtm varchar(20) NULL,
	scheduledate varchar(10) NULL,
	timesheet_date_from2 varchar(10) NULL,
	timesheet_time_from2 varchar(5) NULL,
	timesheet_date_to2 varchar(10) NULL,
	timesheet_time_to2 varchar(5) NULL,
	timesheetdatefrom_offset numeric(6,1) NULL,
	timesheetdatefrom_tzid varchar(50) NULL,
	timesheetdateto_offset numeric(6,1) NULL,
	timesheetdateto_tzid varchar(50) NULL,
	timesheet_date_from2_offset numeric(6,1) NULL,
	timesheet_date_from2_tzid varchar(50) NULL,
	timesheet_date_to2_offset numeric(6,1) NULL,
	timesheet_date_to2_tzid varchar(50) NULL,
	scheduledate_offset numeric(6,1) NULL,
	scheduledate_tzid varchar(50) NULL,
	approveddtm_offset numeric(6,1) NULL,
	approveddtm_tzid varchar(50) NULL,
	lastupdateuser varchar(40) NULL,
	lastupdatedtm varchar(20) NULL,
	issend int4 NULL,
	timefromgaiapay varchar(8) NULL,
	timetogaiapay varchar(8) NULL,
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
COMMENT ON TABLE ods_bwm.atdpersontimesheet IS '员工人事资料信息表，每人一条记录(包括在职&离职)';

-- Permissions

ALTER TABLE ods_bwm.atdpersontimesheet OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdpersontimesheet TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdpersontimesheet TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.atdpersontimesheet TO gr_uqry_data;
