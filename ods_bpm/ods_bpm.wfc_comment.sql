-- Drop table

-- DROP TABLE ods_bpm.wfc_comment;

CREATE TABLE ods_bpm.wfc_comment (
	id bpchar(36) NOT NULL,
	processinstid bpchar(36) NULL,
	taskinstid bpchar(36) NULL,
	createdate timestamp NULL,
	createuser varchar(108) NULL,
	deptname varchar(384) NULL,
	positionname varchar(192) NULL,
	actionname varchar(384) NULL,
	activityname varchar(384) NULL,
	msg varchar(4000) NULL,
	files varchar(4000) NULL,
	digitalsignature varchar(1536) NULL,
	signkey varchar(1536) NULL,
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

ALTER TABLE ods_bpm.wfc_comment OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.wfc_comment TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.wfc_comment TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.wfc_comment TO gr_uapp_data;
