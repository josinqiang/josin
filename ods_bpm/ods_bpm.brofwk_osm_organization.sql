-- Drop table

-- DROP TABLE ods_bpm.brofwk_osm_organization;

CREATE TABLE ods_bpm.brofwk_osm_organization (
	id numeric(19) NOT NULL,
	business1 varchar(50) NULL,
	business2 varchar(50) NULL,
	code varchar(255) NULL,
	disabled numeric(1) NOT NULL,
	domain_id numeric(19) NULL,
	ext1 varchar(50) NULL,
	ext2 varchar(50) NULL,
	full_name varchar(255) NULL,
	full_sequence varchar(60) NOT NULL,
	is_dept numeric(1) NOT NULL,
	level_ numeric(10) NULL,
	long_name varchar(255) NULL,
	"name" varchar(255) NOT NULL,
	short_name varchar(255) NULL,
	"sequence" numeric(10) NOT NULL,
	sync_id varchar(32) NULL,
	"type" numeric(3) NOT NULL,
	parent_id numeric(19) NULL,
	full_ids varchar(255) NULL,
	is_level_fixed numeric(1) NULL,
	level_natural numeric(10) NULL,
	has_employees numeric(10) NULL,
	full_org_ids varchar(1020) NULL,
	upper_org_id numeric(19) NULL,
	matrix_parent_id varchar(128) NULL,
	last_updated timestamp NULL,
	matrix_parent_ids varchar(1020) NULL,
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

ALTER TABLE ods_bpm.brofwk_osm_organization OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.brofwk_osm_organization TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.brofwk_osm_organization TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.brofwk_osm_organization TO gr_uapp_data;
