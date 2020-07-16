-- Drop table

-- DROP TABLE ods_bpm.brobpm_instance;

CREATE TABLE ods_bpm.brobpm_instance (
	id numeric(19) NULL,
	actors_name varchar(1020) NULL,
	application_id numeric(19) NULL,
	complete_time timestamp NULL,
	create_time timestamp NULL,
	data_class varchar(1020) NULL,
	data_controller varchar(1020) NULL,
	data_id numeric(19) NULL,
	data_number varchar(128) NULL,
	definition_name varchar(1020) NULL,
	ext1 varchar(1020) NULL,
	initiator_id numeric(19) NULL,
	initiator_name varchar(400) NULL,
	initiator_transfered_id numeric(19) NULL,
	last_updated timestamp NULL,
	nodes_name varchar(1020) NULL,
	organization_full_name varchar(1020) NULL,
	organization_id numeric(19) NULL,
	parent_id numeric(19) NULL,
	priority numeric(10) NULL,
	state numeric(10) NULL,
	state_name varchar(80) NULL,
	title varchar(1020) NULL,
	"security" numeric(10) NULL,
	revision varchar(44) NULL,
	initiator_actual varchar(400) NULL,
	emulate_process_id numeric(19) NULL,
	complete_reason numeric(10) NULL,
	is_complete_by_admin numeric(1) NULL,
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

ALTER TABLE ods_bpm.brobpm_instance OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.brobpm_instance TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.brobpm_instance TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.brobpm_instance TO gr_uapp_data;
