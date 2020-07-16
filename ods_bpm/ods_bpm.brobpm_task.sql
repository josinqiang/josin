-- Drop table

-- DROP TABLE ods_bpm.brobpm_task;

CREATE TABLE ods_bpm.brobpm_task (
	id numeric(19) NOT NULL,
	actor_id numeric(19) NULL,
	actor_substitute_id numeric(19) NULL,
	actor_title varchar(120) NULL,
	actor_transfered_id numeric(19) NULL,
	complete_time timestamp NULL,
	countersign_number numeric(10) NULL,
	create_time timestamp NULL,
	date_created timestamp NULL,
	process_inst_id numeric(19) NOT NULL,
	"group_id" varchar(128) NULL,
	group_name varchar(1020) NULL,
	has_opinion numeric(1) NULL,
	node varchar(400) NULL,
	organization_full_name varchar(1020) NULL,
	organization_id numeric(19) NULL,
	prev_status varchar(60) NULL,
	read_type numeric(10) NOT NULL,
	sender varchar(400) NULL,
	start_time timestamp NULL,
	status varchar(60) NOT NULL,
	timeout varchar(1020) NULL,
	title varchar(1020) NULL,
	transition varchar(1020) NULL,
	"type" numeric(10) NOT NULL,
	node_display_name varchar(400) NULL,
	decisive_opinion varchar(80) NULL,
	send_type numeric(10) NULL,
	substitute_type numeric(10) NULL,
	last_updated timestamp NULL,
	node_name varchar(400) NULL,
	sequence_flow_names varchar(1020) NULL,
	node_id varchar(50) NULL,
	do_type numeric(10) NULL,
	rollback_count numeric(10) NULL,
	complete_reason numeric(10) NULL,
	actor_pos_name varchar(400) NULL,
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

ALTER TABLE ods_bpm.brobpm_task OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.brobpm_task TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.brobpm_task TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.brobpm_task TO gr_uapp_data;
