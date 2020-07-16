-- Drop table

-- DROP TABLE dw.td_business_quota_bx_pnl_invest_substrates;

CREATE TABLE dw.td_business_quota_bx_pnl_invest_substrates (
	row_wid int8 NULL,
	factory varchar(100) NOT NULL, -- 工厂
	years varchar(255) NOT NULL, -- 年度
	quarter varchar(255) NOT NULL, -- 季度
	months varchar(255) NULL, -- 月份
	tr_zsubstrate numeric(15,8) NULL, -- 投入基板数
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
COMMENT ON TABLE dw.td_business_quota_bx_pnl_invest_substrates IS '投入基板数';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.factory IS '工厂';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.years IS '年度';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.quarter IS '季度';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.months IS '月份';
COMMENT ON COLUMN dw.td_business_quota_bx_pnl_invest_substrates.tr_zsubstrate IS '投入基板数';

-- Permissions

ALTER TABLE dw.td_business_quota_bx_pnl_invest_substrates OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_pnl_invest_substrates TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_business_quota_bx_pnl_invest_substrates TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_business_quota_bx_pnl_invest_substrates TO gr_uapp_data;
