-- Drop table

-- DROP TABLE ods_web.market_info;

CREATE TABLE ods_web.market_info (
	url_domain varchar(512) NULL,
	referer_url varchar(1024) NULL,
	url varchar(1024) NULL,
	title varchar(4096) NULL,
	publication_time varchar(64) NULL,
	author varchar(512) NULL,
	article_abstract varchar(4096) NULL,
	article text NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(128) NULL,
	src_sys_bsn_key varchar(1024) NULL,
	is_del varchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Permissions

ALTER TABLE ods_web.market_info OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.market_info TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.market_info TO gr_uapp_data;
GRANT SELECT ON TABLE ods_web.market_info TO gr_uqry_data;
