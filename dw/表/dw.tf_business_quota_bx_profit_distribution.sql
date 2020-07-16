-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_profit_distribution;

CREATE TABLE dw.tf_business_quota_bx_profit_distribution (
	client_code varchar(9) NULL, -- 客户代码
	company_code varchar(12) NULL, -- 公司代码
	gl_account_code varchar(30) NULL, -- 总分类帐帐目
	assign_number varchar(54) NULL, -- 分配编号
	fiscal_year varchar(12) NULL, -- 会计年度
	account_doc_number varchar(30) NULL, -- 会计凭证编号
	account_doc_line_num varchar(9) NULL, -- 会计凭证中的行项目数
	post_date varchar(24) NULL, -- 凭证中的过帐日期
	clearing_date varchar(24) NULL, -- 清账日期
	clear_doc_number varchar(30) NULL, -- 清算单据的单据号码
	currency varchar(15) NULL, -- 货币码
	from_currency_amount numeric NULL, -- 按本位币计的金额
	to_currency_amount numeric NULL, -- 按原位币计的金额
	cost_center_code varchar(30) NULL, -- 成本中心
	functional_area_code varchar(48) NULL, -- 功能范围编码
	functional_area_name varchar(75) NULL, -- 功能范围名称
	debit_credit_flag varchar(3) NULL, -- 借方/贷方标识
	order_number varchar(36) NULL, -- 订单编号
	fiscal_period varchar(6) NULL, -- 会计期间
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
COMMENT ON TABLE dw.tf_business_quota_bx_profit_distribution IS '利润分配查询表';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.client_code IS '客户代码';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.company_code IS '公司代码';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.gl_account_code IS '总分类帐帐目';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.assign_number IS '分配编号';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.fiscal_year IS '会计年度';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.account_doc_number IS '会计凭证编号';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.account_doc_line_num IS '会计凭证中的行项目数';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.post_date IS '凭证中的过帐日期';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.clearing_date IS '清账日期';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.clear_doc_number IS '清算单据的单据号码';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.currency IS '货币码';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.from_currency_amount IS '按本位币计的金额';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.to_currency_amount IS '按原位币计的金额';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.cost_center_code IS '成本中心';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.functional_area_code IS '功能范围编码';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.functional_area_name IS '功能范围名称';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.debit_credit_flag IS '借方/贷方标识';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.order_number IS '订单编号';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.fiscal_period IS '会计期间';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_profit_distribution OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_profit_distribution TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_profit_distribution TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_profit_distribution TO gr_uqry_data;
