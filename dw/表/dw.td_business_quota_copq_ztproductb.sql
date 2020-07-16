-- Drop table

-- DROP TABLE dw.td_business_quota_copq_ztproductb;

CREATE TABLE dw.td_business_quota_copq_ztproductb (
	row_wid int8 NULL,
	zmaterial varchar(255) NULL,
	zzscc varchar(255) NULL,
	zfbl varchar(255) NULL,
	zchxt varchar(255) NULL,
	zxsmsjs varchar(255) NULL,
	zglasscuts numeric(16,3) NULL,
	client varchar(10) NULL,
	date_time timestamp NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
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

ALTER TABLE dw.td_business_quota_copq_ztproductb OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_ztproductb TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_ztproductb TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_ztproductb TO gr_uqry_data;
