-- Drop table

-- DROP TABLE ods_bpm.wfc_process;

CREATE TABLE ods_bpm.wfc_process (
	id bpchar(36) NOT NULL,
	businesskey varchar(765) NULL,
	processdefid bpchar(36) NULL,
	processdefverid bpchar(36) NULL,
	controlstate varchar(96) NULL,
	processgroupid bpchar(36) NULL,
	processtitle varchar(765) NULL,
	startactivityid bpchar(36) NULL,
	starttaskinstid bpchar(36) NULL,
	starttime timestamp NULL,
	processprofileid bpchar(36) NULL,
	processinsttype numeric(1) NULL,
	parentprocessinstid bpchar(36) NULL,
	parenttaskinstid bpchar(36) NULL,
	securitylayer varchar(128) NULL,
	createuser varchar(108) NULL,
	createtime timestamp NULL,
	createuserorgid varchar(108) NULL,
	createuserdeptid varchar(108) NULL,
	createuserroleid varchar(108) NULL,
	createuserlocation varchar(765) NULL,
	endactivityid bpchar(36) NULL,
	endtime timestamp NULL,
	isprocess numeric(1) NULL,
	isstart numeric(1) NULL,
	isend numeric(1) NULL,
	isasync numeric(1) NULL,
	isexception numeric(1) NULL,
	isovertime numeric(1) NULL,
	isexistsubproc numeric(1) NULL,
	costttime numeric(12) NULL,
	expiretime numeric(12) NULL,
	remark varchar(765) NULL,
	iobd bpchar(36) NULL,
	ior bpchar(36) NULL,
	ios bpchar(36) NULL,
	ioc bpchar(36) NULL,
	ext1 varchar(192) NULL,
	ext2 varchar(384) NULL,
	ext3 varchar(765) NULL,
	remindtimes numeric(2) NULL,
	ext4 varchar(765) NULL,
	ext5 varchar(384) NULL,
	ext6 varchar(384) NULL,
	ext7 numeric(12) NULL,
	ext8 numeric(14,2) NULL,
	istrash numeric(1) NULL,
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

ALTER TABLE ods_bpm.wfc_process OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.wfc_process TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.wfc_process TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.wfc_process TO gr_uapp_data;
