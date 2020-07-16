-- Drop table

-- DROP TABLE ods_bwm.atdtimeclass;

CREATE TABLE ods_bwm.atdtimeclass (
	timeclasscode varchar(20) NULL,
	timeclassid varchar(40) NULL,
	timeclassname varchar(100) NULL,
	begintime varchar(8) NULL,
	endtime varchar(8) NULL,
	hours numeric(5,2) NULL,
	businessunitid varchar(40) NULL,
	creatorid varchar(40) NULL,
	createtime varchar(40) NULL,
	refdays varchar(10) NULL,
	classruleid varchar(40) NULL,
	all_value numeric(16,2) NULL,
	half_value numeric(16,2) NULL,
	middle_time varchar(10) NULL,
	all_hours numeric(16,2) NULL,
	half_hours numeric(16,2) NULL,
	card_model varchar(2) NULL,
	begintime2 varchar(5) NULL,
	endtime2 varchar(5) NULL,
	turnot_start varchar(10) NULL,
	turnot_end varchar(10) NULL,
	shift_catagory varchar(40) NULL,
	work_rule varchar(40) NULL,
	shift_rule_groupid varchar(40) NULL,
	isfreeclass text NULL,
	ispriorexecution text NULL,
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
COMMENT ON TABLE ods_bwm.atdtimeclass IS '班别表，考勤系统里配置好的班别';

-- Permissions

ALTER TABLE ods_bwm.atdtimeclass OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdtimeclass TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.atdtimeclass TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.atdtimeclass TO gr_uqry_data;
