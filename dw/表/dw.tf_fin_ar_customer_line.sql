-- Drop table

-- DROP TABLE dw.tf_fin_ar_customer_line;

CREATE TABLE dw.tf_fin_ar_customer_line (
	client_code varchar(9) NULL, -- 客户端编码
	company_wid int8 NULL, -- 公司代码代理键
	customer_wid int8 NULL, -- 客户代理键
	special_gl_transaction_type varchar(3) NULL, -- 事务类型
	special_gl_flag varchar(3) NULL, -- 特别总帐标志
	clearing_date varchar(24) NULL, -- 结算
	clearing_doc_number varchar(30) NULL, -- 清账凭证
	assignment_number varchar(54) NULL, -- 分配
	account_doc_number varchar(30) NULL, -- 凭证编号
	account_doc_line_number varchar(9) NULL, -- 行项目
	post_date varchar(24) NULL, -- 过账日期
	document_date varchar(24) NULL, -- 凭证日期
	from_currency varchar(15) NULL, -- 货币
	reference_doc_number varchar(48) NULL, -- 参照
	document_type varchar(6) NULL, -- 凭证类型
	fiscal_period_wid int8 NULL, -- 会计期间代理键
	posting_key varchar(6) NULL, -- 记账码
	business_area varchar(12) NULL, -- 业务范围
	sales_tax_code varchar(6) NULL, -- 税码
	to_currency numeric(13,2) NULL, -- 本位币金额
	from_currency_amount numeric(13,2) NULL, -- 金额
	line_item_text varchar(150) NULL, -- 文本
	order_number varchar(36) NULL, -- 订单
	main_asset_number varchar(36) NULL, -- 资产
	asset_sub_number varchar(12) NULL, -- 次级编号
	gl_account_wid int8 NULL, -- 总账科目代理键
	general_ledger_account varchar(30) NULL, -- 总分类帐科目
	baseline_date_for_due_date varchar(24) NULL, -- 基准日期
	terms_payment_method varchar(12) NULL, -- 付款条件
	cash_discount_days1 numeric(3) NULL, -- 天数1
	cash_discount_days2 numeric(3) NULL, -- 天数2
	net_payment_terms_period numeric(3) NULL, -- 天内净额
	cash_discount_percent1 numeric(5,3) NULL, -- 折扣百分比1
	cash_discount_percent2 numeric(5,3) NULL, -- 折扣百分比2
	cash_discount_amount_enable_from_currency numeric(13,2) NULL, -- 折扣基础
	cash_discount_amount_to_currency numeric(13,2) NULL, -- 折扣金额
	cash_discount_amount_from_currency numeric(13,2) NULL, -- 折扣金额
	payment_method varchar(3) NULL, -- 付款方式
	payment_block_key varchar(3) NULL, -- 付款冻结
	house_bank_short_key varchar(15) NULL, -- 开户行
	invoice_number_refer varchar(30) NULL, -- 发票参考号
	billing_document varchar(30) NULL, -- 开票凭证
	document_type_follow varchar(3) NULL, -- 下列凭证类型
	registration_number_vat varchar(60) NULL, -- 增值税登记号
	commitment_item varchar(42) NULL, -- 承诺项目
	data_type varchar(30) NULL, -- 数据类型
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(2000) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_fin_ar_customer_line IS '应收管理-客户行项目信息';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ar_customer_line.client_code IS '客户端编码';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.company_wid IS '公司代码代理键';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.customer_wid IS '客户代理键';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.special_gl_transaction_type IS '事务类型';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.special_gl_flag IS '特别总帐标志';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.clearing_date IS '结算';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.clearing_doc_number IS '清账凭证';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.assignment_number IS '分配';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.account_doc_number IS '凭证编号';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.account_doc_line_number IS '行项目';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.post_date IS '过账日期';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.document_date IS '凭证日期';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.from_currency IS '货币';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.reference_doc_number IS '参照';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.document_type IS '凭证类型';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.fiscal_period_wid IS '会计期间代理键';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.posting_key IS '记账码';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.business_area IS '业务范围';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.sales_tax_code IS '税码';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.to_currency IS '本位币金额';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.from_currency_amount IS '金额';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.line_item_text IS '文本';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.order_number IS '订单';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.main_asset_number IS '资产';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.asset_sub_number IS '次级编号';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.gl_account_wid IS '总账科目代理键';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.general_ledger_account IS '总分类帐科目';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.baseline_date_for_due_date IS '基准日期';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.terms_payment_method IS '付款条件';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_days1 IS '天数1';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_days2 IS '天数2';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.net_payment_terms_period IS '天内净额';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_percent1 IS '折扣百分比1';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_percent2 IS '折扣百分比2';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_amount_enable_from_currency IS '折扣基础';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_amount_to_currency IS '折扣金额';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_amount_from_currency IS '折扣金额';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.payment_method IS '付款方式';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.payment_block_key IS '付款冻结';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.house_bank_short_key IS '开户行';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.invoice_number_refer IS '发票参考号';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.billing_document IS '开票凭证';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.document_type_follow IS '下列凭证类型';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.registration_number_vat IS '增值税登记号';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.commitment_item IS '承诺项目';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.data_type IS '数据类型';

-- Permissions

ALTER TABLE dw.tf_fin_ar_customer_line OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ar_customer_line TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ar_customer_line TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_ar_customer_line TO gr_uqry_data;
