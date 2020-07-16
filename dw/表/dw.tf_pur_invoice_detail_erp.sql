-- Drop table

-- DROP TABLE dw.tf_pur_invoice_detail_erp;

CREATE TABLE dw.tf_pur_invoice_detail_erp (
	client_code varchar(9) NULL, -- 客户端编码
	fiscal_year varchar(12) NULL, -- 会计年度
	company_wid int8 NULL, -- 公司代码代理键
	invoice_number varchar(30) NULL, -- 发票编号
	invoice_date_wid int8 NULL, -- 发票日期代理键
	post_date_wid int8 NULL, -- 过帐日期代理键
	from_currency_invoice_amount numeric(13,2) NULL, -- 金额
	from_currency_invoice_tax_amount numeric(13,2) NULL, -- 税额
	tax_code varchar(6) NULL, -- 销售税代码
	"text" varchar(150) NULL, -- 文本
	payment_rules text NULL, -- 支付条款
	baseline_date varchar(24) NULL, -- 基准日期
	unplan_delivery_cost numeric(13,2) NULL, -- 未计划的交货费
	currency varchar(15) NULL, -- 货币
	rate numeric(9,5) NULL, -- 汇率
	document_type varchar(6) NULL, -- 凭证类型
	diff_invoice_party varchar(30) NULL, -- 发票方(供应商编码)
	assign_number varchar(54) NULL, -- 分配
	tax_currency varchar(15) NULL, -- 税款凭证货币
	baseline_date2 text NULL, -- 基线日期
	payment_rule varchar(12) NULL, -- 付款条件
	cash_discount_day1 numeric(3) NULL, -- 付款条件-天数1
	cash_discount_day2 numeric(3) NULL, -- 付款条件-天数2
	due_date_wid int8 NULL, -- 基线日代理键
	payment_method varchar(3) NULL, -- 付款方式
	payment_block_flag varchar(3) NULL, -- 付款冻结
	invoice_reference varchar(30) NULL, -- 发票参考号
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
COMMENT ON TABLE dw.tf_pur_invoice_detail_erp IS '事实表-发票，数据来源于ERP';

-- Column comments

COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.client_code IS '客户端编码';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.fiscal_year IS '会计年度';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.company_wid IS '公司代码代理键';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.invoice_number IS '发票编号';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.invoice_date_wid IS '发票日期代理键';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.post_date_wid IS '过帐日期代理键';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.from_currency_invoice_amount IS '金额';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.from_currency_invoice_tax_amount IS '税额';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.tax_code IS '销售税代码';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp."text" IS '文本';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_rules IS '支付条款';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.baseline_date IS '基准日期';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.unplan_delivery_cost IS '未计划的交货费';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.currency IS '货币';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.rate IS '汇率';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.document_type IS '凭证类型';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.diff_invoice_party IS '发票方(供应商编码)';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.assign_number IS '分配';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.tax_currency IS '税款凭证货币';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.baseline_date2 IS '基线日期';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_rule IS '付款条件';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.cash_discount_day1 IS '付款条件-天数1';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.cash_discount_day2 IS '付款条件-天数2';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.due_date_wid IS '基线日代理键';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_method IS '付款方式';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_block_flag IS '付款冻结';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.invoice_reference IS '发票参考号';

-- Permissions

ALTER TABLE dw.tf_pur_invoice_detail_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_invoice_detail_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_invoice_detail_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pur_invoice_detail_erp TO gr_uqry_data;
