-- Drop table

-- DROP TABLE ods_bwm.cpcjobcode;

CREATE TABLE ods_bwm.cpcjobcode (
	code varchar(50) NULL,
	names varchar(300) NULL,
	jobcodeid varchar(40) NULL,
	managelayerid varchar(40) NULL,
	memo varchar(1000) NULL,
	orders int4 NULL,
	modifydate varchar(40) NULL,
	modifyuserid varchar(40) NULL,
	iseffect int4 NULL,
	isdeleted int4 NULL,
	levelcontentid varchar(40) NULL,
	modifydate_utc varchar(40) NULL,
	modifydate_offset numeric(6,1) NULL,
	modifydate_tzid varchar(50) NULL,
	jobenglishname varchar(400) NULL,
	skills varchar(1000) NULL,
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
COMMENT ON TABLE ods_bwm.cpcjobcode IS '职务职级代码对应表，考勤系统配置项';

-- Permissions

ALTER TABLE ods_bwm.cpcjobcode OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.cpcjobcode TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.cpcjobcode TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.cpcjobcode TO gr_uqry_data;
