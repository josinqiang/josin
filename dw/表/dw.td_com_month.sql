-- Drop table

-- DROP TABLE dw.td_com_month;

CREATE TABLE dw.td_com_month (
	month_wid int8 NULL,
	month_name varchar(120) NULL,
	month_shot_name varchar(120) NULL,
	month_desc varchar(120) NULL,
	month_in_year int8 NULL,
	month_number int8 NULL,
	first_day_of_month date NULL,
	last_day_of_month date NULL,
	quarter_wid int8 NULL,
	quarter_name varchar(120) NULL,
	quarter_desc varchar(120) NULL,
	quarter_in_year int8 NULL,
	first_day_of_quarter date NULL,
	last_day_of_quarter date NULL,
	half_year_wid int8 NULL,
	half_year_name varchar(120) NULL,
	half_year_desc varchar(120) NULL,
	half_in_year int8 NULL,
	year_wid int8 NULL,
	year_name varchar(120) NULL,
	year_desc varchar(120) NULL,
	first_day_of_year date NULL,
	last_day_of_year date NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar NULL,
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

ALTER TABLE dw.td_com_month OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_month TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_com_month TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_com_month TO gr_uapp_data;
