-- Drop table

-- DROP TABLE dw.ts_etl_param_g;

CREATE TABLE dw.ts_etl_param_g (
	type_code varchar(30) NULL,
	file_name varchar(64) NULL,
	param_id int4 NULL,
	param_name varchar(64) NULL,
	param_value varchar(64) NULL,
	param_desc varchar(64) NULL,
	etl_status varchar(30) NULL,
	etl_start_st varchar(30) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (type_code);

-- Permissions

ALTER TABLE dw.ts_etl_param_g OWNER TO gpadmin;
GRANT ALL ON TABLE dw.ts_etl_param_g TO gpadmin;
GRANT SELECT, UPDATE ON TABLE dw.ts_etl_param_g TO gr_uapp_data;
GRANT SELECT ON TABLE dw.ts_etl_param_g TO gr_uown_ods;
GRANT SELECT ON TABLE dw.ts_etl_param_g TO gr_uown_edw;
