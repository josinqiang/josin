-- Drop table

-- DROP TABLE dw.td_hr_city;

CREATE TABLE dw.td_hr_city (
	row_wid int8 NOT NULL, -- 代理键
	country_code varchar(12) NULL, -- 国家/地区编码
	country_name varchar(12) NULL, -- 国家/地区名称
	state_code varchar(24) NULL, -- 州/省编码
	state_name varchar(24) NULL, -- 州/省名称
	city varchar(120) NULL, -- 城市
	descr varchar(120) NULL, -- 描述
	descr10 varchar(40) NULL, -- 描述
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
COMMENT ON TABLE dw.td_hr_city IS '城市信息表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_city.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_city.country_code IS '国家/地区编码';
COMMENT ON COLUMN dw.td_hr_city.country_name IS '国家/地区名称';
COMMENT ON COLUMN dw.td_hr_city.state_code IS '州/省编码';
COMMENT ON COLUMN dw.td_hr_city.state_name IS '州/省名称';
COMMENT ON COLUMN dw.td_hr_city.city IS '城市';
COMMENT ON COLUMN dw.td_hr_city.descr IS '描述';
COMMENT ON COLUMN dw.td_hr_city.descr10 IS '描述';

-- Permissions

ALTER TABLE dw.td_hr_city OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_city TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_city TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_city TO gr_uqry_data;
