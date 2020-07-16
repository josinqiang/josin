-- Drop table

-- DROP TABLE ods_bpm.orguser;

CREATE TABLE ods_bpm.orguser (
	id varchar(108) NOT NULL,
	userno varchar(108) NULL,
	userid varchar(108) NOT NULL,
	username varchar(108) NULL,
	orderindex numeric(6) NULL,
	"password" varchar(192) NOT NULL,
	closed numeric(1) NOT NULL,
	departmentid varchar(108) NULL,
	roleid varchar(108) NULL,
	ismanager numeric(1) NULL,
	workcanlendar varchar(120) NULL,
	position_no varchar(48) NULL,
	position_name varchar(96) NULL,
	position_layer varchar(96) NULL,
	officetel varchar(90) NULL,
	officefax varchar(90) NULL,
	mobile varchar(90) NULL,
	email varchar(108) NULL,
	userip varchar(675) NULL,
	issinglelogin numeric(1) NULL,
	work_status varchar(96) NULL,
	sessiontime numeric(6) NULL,
	outerid varchar(1536) NULL,
	wechat varchar(192) NULL,
	wechateid varchar(192) NULL,
	ext1 varchar(192) NULL,
	ext2 varchar(192) NULL,
	ext3 varchar(192) NULL,
	ext4 varchar(384) NULL,
	ext5 varchar(384) NULL,
	reportto varchar(108) NULL,
	closedate timestamp NULL,
	createdate timestamp NULL,
	updatedate timestamp NULL,
	securitylevel numeric(1) NULL,
	user_summary varchar(675) NULL,
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

-- Permissions

ALTER TABLE ods_bpm.orguser OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.orguser TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.orguser TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.orguser TO gr_uapp_data;
