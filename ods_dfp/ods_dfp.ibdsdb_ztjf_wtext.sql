-- Drop table

-- DROP TABLE ods_dfp.ibdsdb_ztjf_wtext;

CREATE TABLE ods_dfp.ibdsdb_ztjf_wtext (
	werks varchar(764) NULL,
	ztext varchar(764) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Permissions

ALTER TABLE ods_dfp.ibdsdb_ztjf_wtext OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.ibdsdb_ztjf_wtext TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.ibdsdb_ztjf_wtext TO gr_uapp_data;
GRANT SELECT ON TABLE ods_dfp.ibdsdb_ztjf_wtext TO gr_uqry_data;
GRANT SELECT ON TABLE ods_dfp.ibdsdb_ztjf_wtext TO "10268023";
