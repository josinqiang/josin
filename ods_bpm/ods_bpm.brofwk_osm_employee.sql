-- Drop table

-- DROP TABLE ods_bpm.brofwk_osm_employee;

CREATE TABLE ods_bpm.brofwk_osm_employee (
	id numeric(19) NOT NULL,
	birthdate timestamp NULL,
	code varchar(128) NULL,
	date_created timestamp NOT NULL,
	"degree" varchar(80) NULL,
	notes varchar(1020) NULL,
	disabled numeric(1) NULL,
	email varchar(400) NULL,
	entry_date timestamp NULL,
	graduate_date timestamp NULL,
	identity_number varchar(200) NULL,
	last_updated timestamp NOT NULL,
	level_ numeric(19,2) NOT NULL,
	"location" varchar(200) NULL,
	main_identity_id numeric(19) NULL,
	major varchar(200) NULL,
	mobile varchar(180) NULL,
	"name" varchar(400) NOT NULL,
	nation varchar(120) NULL,
	native_place varchar(400) NULL,
	organization_id numeric(19) NULL,
	payroll_place varchar(200) NULL,
	professional_rank varchar(200) NULL,
	qualification varchar(200) NULL,
	"rank" varchar(120) NULL,
	sex varchar(4) NULL,
	"sequence" numeric(10) NOT NULL,
	sync_id varchar(128) NULL,
	telephone_number varchar(45) NULL,
	title varchar(120) NULL,
	"type" numeric(3) NULL,
	user_id numeric(19) NULL,
	working_date timestamp NULL,
	working_years numeric(5,2) NULL,
	ext1 varchar(600) NULL,
	ext2 varchar(600) NULL,
	pos_code varchar(120) NULL,
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

ALTER TABLE ods_bpm.brofwk_osm_employee OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.brofwk_osm_employee TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.brofwk_osm_employee TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.brofwk_osm_employee TO gr_uapp_data;
