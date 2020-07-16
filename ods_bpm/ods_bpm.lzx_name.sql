-- Drop table

-- DROP TABLE ods_bpm.lzx_name;

CREATE TABLE ods_bpm.lzx_name (
	groupid bpchar(36) NOT NULL,
	"name" varchar(128) NULL,
	processgroup varchar(128) NULL,
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

ALTER TABLE ods_bpm.lzx_name OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.lzx_name TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.lzx_name TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.lzx_name TO gr_uapp_data;
