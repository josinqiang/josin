-- Drop table

-- DROP TABLE dw.tf_fin_ap_po_order;

CREATE TABLE dw.tf_fin_ap_po_order (
	client_code varchar(9) NULL, -- 客户端编码
	company_wid int8 NULL, -- 公司编码代理键
	vendor_wid int8 NULL, -- 供应商编码代理键
	gl_transaction_type varchar(3) NULL, -- 特殊 g/l 标识
	clearing_date varchar(24) NULL, -- 清帐日期
	clearing_document_number varchar(30) NULL, -- 清算单据的单据号码
	assignment_number varchar(54) NULL, -- 分配编号
	account_doc_number varchar(30) NULL, -- 会计凭证编号
	account_doc_line_number varchar(9) NULL, -- 会计凭证中的行项目数
	post_date varchar(24) NULL, -- 凭证中的过帐日期
	document_date varchar(24) NULL, -- 凭证中的凭证日期
	entered_document_date varchar(24) NULL, -- 会计凭证输入日期
	from_currency varchar(15) NULL, -- 货币码
	reference_doc_number varchar(48) NULL, -- 参考凭证号
	document_type varchar(6) NULL, -- 凭证类型
	fiscal_period_wid int8 NULL, -- 会计期间代理键
	posting_key varchar(6) NULL, -- 记帐代码
	target_special_flag varchar(3) NULL, -- 目标特别总帐标志
	debit_credit_flag varchar(3) NULL, -- 借方/贷方标识
	business_area varchar(12) NULL, -- 业务范围
	sales_tax_code varchar(6) NULL, -- 销售税代码
	to_currency numeric(13,2) NULL, -- 按本位币计的金额
	from_currency_amount numeric(13,2) NULL, -- 凭证货币金额
	tax_amount_local_currency numeric(13,2) NULL, -- 用本币表示的税收金额
	tax_amount_document_currency numeric(13,2) NULL, -- 用凭证货币表示的税收金额
	valuation_difference numeric(13,2) NULL, -- 估价差额
	second_local_currency_differ numeric(13,2) NULL, -- 第二本币的评估差额
	line_item_text varchar(150) NULL, -- 项目文本
	order_number varchar(36) NULL, -- 订单号
	main_asset_number varchar(36) NULL, -- 主资产号
	asset_sub_number varchar(12) NULL, -- 资产次级编号
	purchasing_doc_number varchar(30) NULL, -- 采购凭证号
	purchasing_doc_line_item varchar(15) NULL, -- 采购凭证的项目编号
	gl_account_wid int8 NULL, -- 总帐科目编号代理键
	general_ledger_account varchar(30) NULL, -- 总分类帐帐目
	financial_budget_item varchar(9) NULL, -- 财务预算项目
	branch_account_number varchar(30) NULL, -- 分支帐号
	baseline_date_for_due_date varchar(24) NULL, -- 用于到期日计算的基准日期
	terms_payment_method varchar(12) NULL, -- 付款条件代码
	cash_discount_days1 numeric(3) NULL, -- 现金折扣天数 1
	cash_discount_days2 numeric(3) NULL, -- 现金折扣天数 2
	net_payment_terms_period numeric(3) NULL, -- 净支付条件期段
	payment_method varchar(3) NULL, -- 付款方式
	payment_block_key varchar(3) NULL, -- 收付冻结码
	fixed_payment_terms varchar(3) NULL, -- 固定付款条件
	house_bank_short_key varchar(15) NULL, -- 开户银行的简要键
	partner_bank_type varchar(12) NULL, -- 合作银行类型
	invoice_number_refer varchar(30) NULL, -- 业务所属的发票号码
	relevant_invoice_fiscal_year varchar(12) NULL, -- 有关发票的财政年度 (贷项凭单)
	relevant_invoice_line_item varchar(9) NULL, -- 相关发票中的行项目
	invoice_list_number varchar(24) NULL, -- 发票清单号
	customs_tariff_number varchar(24) NULL, -- 关税税号
	customs_date varchar(24) NULL, -- 关税日期
	supplying_country varchar(9) NULL, -- 供货国家
	payments_reason_code varchar(9) NULL, -- 付款原因代码
	cost_center_wid int8 NULL, -- 成本中心代理键
	funds_center varchar(48) NULL DEFAULT NULL::character varying, -- 基金中心
	profit_center varchar(30) NULL, -- 利润中心
	functional_area varchar(48) NULL, -- 功能范围
	data_type varchar(8) NULL COLLATE "C", -- 类型
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
COMMENT ON TABLE dw.tf_fin_ap_po_order IS '应付管理-PO收货单';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ap_po_order.client_code IS '客户端编码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.company_wid IS '公司编码代理键';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.vendor_wid IS '供应商编码代理键';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.gl_transaction_type IS '特殊 g/l 标识';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.clearing_date IS '清帐日期';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.clearing_document_number IS '清算单据的单据号码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.assignment_number IS '分配编号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.account_doc_number IS '会计凭证编号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.account_doc_line_number IS '会计凭证中的行项目数';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.post_date IS '凭证中的过帐日期';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.document_date IS '凭证中的凭证日期';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.entered_document_date IS '会计凭证输入日期';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.from_currency IS '货币码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.reference_doc_number IS '参考凭证号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.document_type IS '凭证类型';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.fiscal_period_wid IS '会计期间代理键';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.posting_key IS '记帐代码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.target_special_flag IS '目标特别总帐标志';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.debit_credit_flag IS '借方/贷方标识';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.business_area IS '业务范围';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.sales_tax_code IS '销售税代码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.to_currency IS '按本位币计的金额';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.from_currency_amount IS '凭证货币金额';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.tax_amount_local_currency IS '用本币表示的税收金额';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.tax_amount_document_currency IS '用凭证货币表示的税收金额';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.valuation_difference IS '估价差额';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.second_local_currency_differ IS '第二本币的评估差额';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.line_item_text IS '项目文本';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.order_number IS '订单号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.main_asset_number IS '主资产号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.asset_sub_number IS '资产次级编号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.purchasing_doc_number IS '采购凭证号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.purchasing_doc_line_item IS '采购凭证的项目编号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.gl_account_wid IS '总帐科目编号代理键';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.general_ledger_account IS '总分类帐帐目';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.financial_budget_item IS '财务预算项目';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.branch_account_number IS '分支帐号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.baseline_date_for_due_date IS '用于到期日计算的基准日期';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.terms_payment_method IS '付款条件代码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.cash_discount_days1 IS '现金折扣天数 1';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.cash_discount_days2 IS '现金折扣天数 2';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.net_payment_terms_period IS '净支付条件期段';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.payment_method IS '付款方式';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.payment_block_key IS '收付冻结码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.fixed_payment_terms IS '固定付款条件';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.house_bank_short_key IS '开户银行的简要键';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.partner_bank_type IS '合作银行类型';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.invoice_number_refer IS '业务所属的发票号码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.relevant_invoice_fiscal_year IS '有关发票的财政年度 (贷项凭单)';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.relevant_invoice_line_item IS '相关发票中的行项目';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.invoice_list_number IS '发票清单号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.customs_tariff_number IS '关税税号';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.customs_date IS '关税日期';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.supplying_country IS '供货国家';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.payments_reason_code IS '付款原因代码';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.cost_center_wid IS '成本中心代理键';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.funds_center IS '基金中心';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.profit_center IS '利润中心';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.functional_area IS '功能范围';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.data_type IS '类型';

-- Permissions

ALTER TABLE dw.tf_fin_ap_po_order OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ap_po_order TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ap_po_order TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_ap_po_order TO gr_uqry_data;
