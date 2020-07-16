-- Drop table

-- DROP TABLE dw.td_fin_exchange_rate_tms;

CREATE TABLE dw.td_fin_exchange_rate_tms (
	row_wid int8 NULL,
	erid numeric NULL,
	rate_date timestamp NULL, -- 汇率日期
	from_currency varchar(8) NULL, -- 原始币种
	to_currency varchar(8) NULL, -- 目标币种
	midprice numeric(13,5) NULL, -- 中间价
	initprice numeric(13,5) NULL, -- 市场开盘价
	avgprice numeric(13,5) NULL, -- 57日均线价格
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
COMMENT ON TABLE dw.td_fin_exchange_rate_tms IS '汇率主数据';

-- Column comments

COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.rate_date IS '汇率日期';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.from_currency IS '原始币种';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.to_currency IS '目标币种';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.midprice IS '中间价';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.initprice IS '市场开盘价';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.avgprice IS '57日均线价格';

-- Permissions

ALTER TABLE dw.td_fin_exchange_rate_tms OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_exchange_rate_tms TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_exchange_rate_tms TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_fin_exchange_rate_tms TO gr_uqry_data;
