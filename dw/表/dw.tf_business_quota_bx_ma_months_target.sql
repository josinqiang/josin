-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_ma_months_target;

CREATE TABLE dw.tf_business_quota_bx_ma_months_target (
	factory varchar(100) NULL, -- 工厂
	ccid_type varchar(100) NULL, -- 费用性质
	years varchar(10) NULL, -- 年度
	quarter varchar(10) NULL, -- 季度
	months varchar(10) NULL, -- 月份
	amount numeric NULL, -- 金额
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_bx_ma_months_target IS 'BX(管会口径)月度目标值';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.factory IS '工厂';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.ccid_type IS '费用性质';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.years IS '年度';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.quarter IS '季度';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.months IS '月份';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.amount IS '金额';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_ma_months_target OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_ma_months_target TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_ma_months_target TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_ma_months_target TO gr_uqry_data;
