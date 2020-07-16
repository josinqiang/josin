-- Drop table

-- DROP TABLE ods_bwm.atdattendanceclass;

CREATE TABLE ods_bwm.atdattendanceclass (
	classcode varchar(10) NULL,
	id varchar(40) NULL,
	classname varchar(100) NULL,
	nocardreason varchar(40) NULL,
	maxtime int4 NULL,
	classtype varchar(10) NULL,
	yearmaxtime int4 NULL,
	issystem int4 NOT NULL,
	mapid varchar(4) NULL,
	minhour numeric(5,2) NULL,
	minunit numeric(5,2) NULL,
	orderid int4 NULL,
	beizhu varchar(255) NULL,
	maxhour varchar(255) NULL,
	swexception varchar(200) NULL,
	classzndetail text NULL,
	classendetail text NULL,
	is_onetime_finish varchar(5) NULL,
	gender_limit varchar(5) NULL,
	is_need_leave_reason int4 NULL,
	is_need_leave_attach int4 NULL,
	class_attachment text NULL,
	class_attachment_name varchar(100) NULL,
	is_need_schedule int4 NULL,
	swexception_from varchar(10) NULL,
	leave_model_code varchar(50) NULL,
	time_sheet_index varchar(2) NULL,
	sw_timecard_show int4 NULL,
	overdrawn numeric(18,2) NULL,
	isappshow bit(1) NULL,
	associatedaccrualcode varchar(10) NULL,
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
COMMENT ON TABLE ods_bwm.atdattendanceclass IS '出勤代码类别对应表，考勤系统配置项';

-- Permissions

ALTER TABLE ods_bwm.atdattendanceclass OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdattendanceclass TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdattendanceclass TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.atdattendanceclass TO gr_uqry_data;
