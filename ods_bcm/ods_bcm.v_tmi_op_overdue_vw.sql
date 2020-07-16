-- Drop table

-- DROP TABLE ods_bcm.v_tmi_op_overdue_vw;

CREATE TABLE ods_bcm.v_tmi_op_overdue_vw (
	primary_key numeric(15) NULL, -- 主键
	document_number varchar(10) NULL, -- 凭证编号
	accounting_year varchar(4) NULL, -- 会计年度
	company_code varchar(4) NULL, -- 公司代码
	customer_name varchar(100) NULL, -- 客户名称
	customer_code varchar(10) NULL, -- 客户编码
	base_date varchar(20) NULL, -- 基准日
	account_period varchar(20) NULL, -- 账期
	quota varchar(15) NULL, -- 额度
	credit_control_scope varchar(20) NULL, -- 信贷控制范围
	sales_order_no varchar(10) NULL, -- 销售订单号
	overdue_amount varchar(15) NULL, -- 逾期金额
	overdue_currency varchar(20) NULL, -- 逾期币种
	posting_date date NULL, -- 过账日期
	coping_day date NULL, -- 应付日
	operation_type varchar(20) NULL, -- 操作类型
	based_date varchar(10) NULL, -- 基准日期
	customer_id varchar(10) NULL, -- 客户代码
	invoice varchar(10) NULL, -- 开票
	amount_in_reporting_currency varchar(15) NULL, -- 本位币金额
	voucher_currency_amount varchar(15) NULL, -- 凭证货币金额
	document_type varchar(20) NULL, -- 凭证类型
	currency varchar(4) NULL, -- 币种
	credit_control_scope_2 varchar(4) NULL, -- 信贷控制范围2
	customer_type varchar(20) NULL, -- 客户类型
	selling_party varchar(10) NULL, -- 售达方
	decision_maker varchar(10) NULL, -- 决策方
	receiving_party varchar(10) NULL, -- 收取发票方
	service_provider varchar(10) NULL, -- 送达方
	payer varchar(10) NULL, -- 付款方
	delivery_number varchar(10) NULL, -- 交货单号
	clearing_state varchar(20) NULL, -- 清账状态
	international_trade_terms_part_1 varchar(3) NULL, -- 国际贸易条款部分1
	terms_of_international_trade_part_2 varchar(30) NULL, -- 国际贸易条件部分2
	delivery_method varchar(20) NULL, -- 交货方式
	delivery_date varchar(10) NULL, -- 发货日
	row_item varchar(6) NULL, -- 行项目
	product_name_and_description varchar(140) NULL, -- 产品名称和描述
	batch varchar(4) NULL, -- 批次
	"number" varchar(15) NULL, -- 数量
	relative_no varchar(10) NULL, -- 相对方序号
	voucher_no_2 varchar(10) NULL, -- 凭证编号2
	company_code_2 varchar(4) NULL, -- 公司代码2
	fiscal_year_2 varchar(4) NULL, -- 会计年度2
	create_time date NULL, -- 创建时间
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_bcm.v_tmi_op_overdue_vw IS '客户逾期';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.primary_key IS '主键';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.document_number IS '凭证编号';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.accounting_year IS '会计年度';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.company_code IS '公司代码';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_name IS '客户名称';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_code IS '客户编码';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.base_date IS '基准日';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.account_period IS '账期';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.quota IS '额度';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.credit_control_scope IS '信贷控制范围';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.sales_order_no IS '销售订单号';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.overdue_amount IS '逾期金额';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.overdue_currency IS '逾期币种';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.posting_date IS '过账日期';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.coping_day IS '应付日';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.operation_type IS '操作类型';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.based_date IS '基准日期';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_id IS '客户代码';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.invoice IS '开票';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.amount_in_reporting_currency IS '本位币金额';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.voucher_currency_amount IS '凭证货币金额';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.document_type IS '凭证类型';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.currency IS '币种';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.credit_control_scope_2 IS '信贷控制范围2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_type IS '客户类型';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.selling_party IS '售达方';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.decision_maker IS '决策方';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.receiving_party IS '收取发票方';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.service_provider IS '送达方';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.payer IS '付款方';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.delivery_number IS '交货单号';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.clearing_state IS '清账状态';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.international_trade_terms_part_1 IS '国际贸易条款部分1';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.terms_of_international_trade_part_2 IS '国际贸易条件部分2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.delivery_method IS '交货方式';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.delivery_date IS '发货日';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.row_item IS '行项目';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.product_name_and_description IS '产品名称和描述';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.batch IS '批次';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw."number" IS '数量';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.relative_no IS '相对方序号';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.voucher_no_2 IS '凭证编号2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.company_code_2 IS '公司代码2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.fiscal_year_2 IS '会计年度2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.create_time IS '创建时间';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_op_overdue_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_op_overdue_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_op_overdue_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_op_overdue_vw TO gr_uqry_data;
