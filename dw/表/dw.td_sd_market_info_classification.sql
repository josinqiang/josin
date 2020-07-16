-- Drop table

-- DROP TABLE dw.td_sd_market_info_classification;

CREATE TABLE dw.td_sd_market_info_classification (
	classification_type varchar(512) NULL,
	classification varchar(512) NULL,
	keyword varchar(512) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	is_del bpchar(1) NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (classification_type);

-- Permissions

ALTER TABLE dw.td_sd_market_info_classification OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_market_info_classification TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_market_info_classification TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_sd_market_info_classification TO gr_uqry_data;
