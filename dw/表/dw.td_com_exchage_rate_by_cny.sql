-- Drop table

-- DROP TABLE dw.td_com_exchage_rate_by_cny;

CREATE TABLE dw.td_com_exchage_rate_by_cny (
	row_wid int8 NULL,
	rate_date date NULL, -- 汇率日期
	currency text NULL, -- 币种
	rate numeric NULL, -- 汇率
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
COMMENT ON TABLE dw.td_com_exchage_rate_by_cny IS '公共维度-基于人民币的汇率（只取每月第一个工作日）';

-- Column comments

COMMENT ON COLUMN dw.td_com_exchage_rate_by_cny.rate_date IS '汇率日期';
COMMENT ON COLUMN dw.td_com_exchage_rate_by_cny.currency IS '币种';
COMMENT ON COLUMN dw.td_com_exchage_rate_by_cny.rate IS '汇率';

-- Permissions

ALTER TABLE dw.td_com_exchage_rate_by_cny OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_exchage_rate_by_cny TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_com_exchage_rate_by_cny TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_com_exchage_rate_by_cny TO gr_uapp_data;
