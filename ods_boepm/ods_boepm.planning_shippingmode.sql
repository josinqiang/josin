-- Drop table

-- DROP TABLE ods_boepm.planning_shippingmode;

CREATE TABLE ods_boepm.planning_shippingmode (
	id numeric NOT NULL,
	"name" varchar(600) NULL,
	parentid numeric NULL,
	description varchar(600) NULL,
	seqno numeric NULL,
	status numeric NULL,
	companyid numeric NOT NULL,
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

ALTER TABLE ods_boepm.planning_shippingmode OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.planning_shippingmode TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.planning_shippingmode TO gr_uapp_data;
GRANT SELECT ON TABLE ods_boepm.planning_shippingmode TO gr_uqry_data;
