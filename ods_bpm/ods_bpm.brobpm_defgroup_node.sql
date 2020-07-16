-- Drop table

-- DROP TABLE ods_bpm.brobpm_defgroup_node;

CREATE TABLE ods_bpm.brobpm_defgroup_node (
	id numeric(19) NOT NULL,
	notes varchar(1020) NULL,
	domain_id numeric(19) NOT NULL,
	full_name varchar(1020) NULL,
	full_sequence varchar(120) NOT NULL,
	"group_id" numeric(19) NOT NULL,
	level_ numeric(10) NOT NULL,
	"name" varchar(1020) NOT NULL,
	"sequence" numeric(10) NOT NULL,
	parent_id numeric(19) NULL,
	admin_ids varchar(2000) NULL,
	full_ids varchar(1020) NULL,
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

ALTER TABLE ods_bpm.brobpm_defgroup_node OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.brobpm_defgroup_node TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.brobpm_defgroup_node TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.brobpm_defgroup_node TO gr_uapp_data;
