-- Drop table

-- DROP TABLE ods_bpm.brobpm_defgroup_node_def;

CREATE TABLE ods_bpm.brobpm_defgroup_node_def (
	node_id numeric(19) NOT NULL,
	data_controller varchar(1020) NOT NULL,
	data_class varchar(1020) NOT NULL,
	"name" varchar(1020) NULL,
	"sequence" numeric(10) NOT NULL,
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

ALTER TABLE ods_bpm.brobpm_defgroup_node_def OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.brobpm_defgroup_node_def TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.brobpm_defgroup_node_def TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.brobpm_defgroup_node_def TO gr_uapp_data;
