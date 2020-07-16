-- Drop table

-- DROP TABLE dw.td_pp_dfp_factory;

CREATE TABLE dw.td_pp_dfp_factory (
	row_wid int8 NOT NULL,
	werks varchar(764) NULL,
	ztext varchar(764) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Permissions

ALTER TABLE dw.td_pp_dfp_factory OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_dfp_factory TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_dfp_factory TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_pp_dfp_factory TO gr_uqry_data;
