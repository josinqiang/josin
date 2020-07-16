-- Drop table

-- DROP TABLE ods_bpm.brobpm_opinion;

CREATE TABLE ods_bpm.brobpm_opinion (
	id numeric(19) NOT NULL,
	"content" varchar(4000) NULL,
	date_created timestamp NOT NULL,
	date_published timestamp NULL,
	decision varchar(400) NULL,
	"group_id" varchar(128) NULL,
	last_updated timestamp NOT NULL,
	reader_type numeric(3) NOT NULL,
	signature varchar(400) NOT NULL,
	status numeric(3) NOT NULL,
	tag varchar(400) NULL,
	task_id numeric(19) NOT NULL,
	title varchar(120) NULL,
	fix_published numeric(1) NULL,
	"type" numeric(3) NULL,
	pos_name varchar(400) NULL,
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

ALTER TABLE ods_bpm.brobpm_opinion OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.brobpm_opinion TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.brobpm_opinion TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.brobpm_opinion TO gr_uapp_data;
