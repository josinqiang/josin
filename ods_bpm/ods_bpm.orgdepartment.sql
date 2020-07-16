-- Drop table

-- DROP TABLE ods_bpm.orgdepartment;

CREATE TABLE ods_bpm.orgdepartment (
	id varchar(108) NOT NULL,
	parentdepartmentid varchar(108) NULL,
	departmentname varchar(384) NOT NULL,
	orderindex numeric(6) NULL,
	departmentdesc varchar(675) NULL,
	departmentno varchar(192) NULL,
	layer numeric(3) NULL,
	administrators varchar(675) NULL,
	departmentzone varchar(192) NULL,
	companyid varchar(108) NOT NULL,
	outerid varchar(1536) NULL,
	ext1 varchar(192) NULL,
	ext2 varchar(384) NULL,
	workcanlendar varchar(108) NULL,
	isunit numeric(1) NULL,
	ext3 varchar(384) NULL,
	ext4 varchar(384) NULL,
	ext5 varchar(384) NULL,
	departmenttype varchar(384) NULL,
	closed numeric(1) NULL,
	closedate timestamp NULL,
	begindate timestamp NULL,
	enddate timestamp NULL,
	createdate timestamp NULL,
	updatedate timestamp NULL,
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

ALTER TABLE ods_bpm.orgdepartment OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.orgdepartment TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.orgdepartment TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.orgdepartment TO gr_uapp_data;
