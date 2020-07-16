-- Drop table

-- DROP TABLE ods_bpm.wfc_task;

CREATE TABLE ods_bpm.wfc_task (
	id bpchar(36) NOT NULL,
	parenttaskinstid bpchar(36) NULL,
	scopeid bpchar(36) NULL,
	activitytype varchar(108) NULL,
	activitydefid bpchar(36) NULL,
	processinstid bpchar(36) NULL,
	processdefid bpchar(36) NULL,
	processdefverid bpchar(36) NULL,
	processgroupid bpchar(36) NULL,
	dispatchid bpchar(36) NULL,
	tasktitle varchar(765) NULL,
	taskstate numeric(2) NULL,
	controlstate varchar(48) NULL,
	priority numeric(1) NULL,
	"owner" varchar(108) NULL,
	target varchar(108) NULL,
	claimtype numeric(1) NULL,
	claimresourceid varchar(108) NULL,
	duetime timestamp NULL,
	begintime timestamp NULL,
	beginenginenode varchar(270) NULL,
	readtime timestamp NULL,
	ownerdeptid varchar(108) NULL,
	targetdeptid varchar(108) NULL,
	targetcompanyid varchar(108) NULL,
	targetroleid varchar(108) NULL,
	ismonitor numeric(1) NULL,
	isasync numeric(1) NULL,
	exceptionerr varchar(765) NULL,
	iobd bpchar(36) NULL,
	ior bpchar(36) NULL,
	ios bpchar(36) NULL,
	ioc bpchar(36) NULL,
	ext1 varchar(192) NULL,
	ext2 varchar(384) NULL,
	ext3 varchar(765) NULL,
	remindtimes numeric(2) NULL,
	delaytimes numeric(12) NULL,
	readstate numeric(1) NULL,
	ext4 varchar(765) NULL,
	ext5 varchar(384) NULL,
	ext6 varchar(384) NULL,
	ext7 numeric(12) NULL,
	ext8 numeric(14,2) NULL,
	securitylevel varchar(128) NULL,
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

ALTER TABLE ods_bpm.wfc_task OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.wfc_task TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.wfc_task TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.wfc_task TO gr_uapp_data;
