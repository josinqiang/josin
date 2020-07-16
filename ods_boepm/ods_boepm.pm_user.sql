-- Drop table

-- DROP TABLE ods_boepm.pm_user;

CREATE TABLE ods_boepm.pm_user (
	id numeric NOT NULL,
	"name" varchar(150) NULL,
	"password" varchar(120) NULL,
	"type" numeric NULL,
	status numeric NULL,
	companyid numeric NOT NULL,
	title varchar(150) NULL,
	firstname varchar(150) NULL,
	lastname varchar(150) NULL,
	displayname varchar(300) NULL,
	resourceteamids varchar(150) NULL,
	resourceflag varchar(150) NULL,
	systemrole varchar(1500) NULL,
	email varchar(600) NULL,
	fax varchar(150) NULL,
	mobile varchar(150) NULL,
	tel varchar(150) NULL,
	zip varchar(150) NULL,
	sex numeric NULL,
	birthday timestamp NULL,
	loginfailedtimes numeric NULL,
	lastlogintime timestamp NULL,
	passwordchangetime timestamp NULL,
	"language" numeric NULL,
	alertmethod varchar(150) NULL,
	sourcetype numeric NULL,
	sourceid varchar(1500) NULL,
	sourcename varchar(1500) NULL,
	jobnumber varchar(150) NULL,
	resourceteamid numeric NULL,
	departmentid numeric NULL,
	departmentids varchar(150) NULL,
	currentlogintime timestamp NULL,
	createtime timestamp NULL,
	createby numeric NULL,
	lastupdatetime timestamp NULL,
	lastupdateby numeric NULL,
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

ALTER TABLE ods_boepm.pm_user OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.pm_user TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.pm_user TO gr_uapp_data;
GRANT SELECT ON TABLE ods_boepm.pm_user TO gr_uqry_data;
