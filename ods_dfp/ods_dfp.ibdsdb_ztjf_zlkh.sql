-- Drop table

-- DROP TABLE ods_dfp.ibdsdb_ztjf_zlkh;

CREATE TABLE ods_dfp.ibdsdb_ztjf_zlkh (
	kunnr varchar(764) NULL,
	zmflag varchar(764) NULL,
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

ALTER TABLE ods_dfp.ibdsdb_ztjf_zlkh OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.ibdsdb_ztjf_zlkh TO ur_uown_ods;
GRANT SELECT ON TABLE ods_dfp.ibdsdb_ztjf_zlkh TO gr_uqry_data;
GRANT ALL ON TABLE ods_dfp.ibdsdb_ztjf_zlkh TO gr_uapp_data;
