-- Drop table

-- DROP TABLE dw.tf_fin_budget_actual;

CREATE TABLE dw.tf_fin_budget_actual (
	client varchar(9) NULL, -- 客户端
	company_wid int8 NULL, -- 公司代码代理键
	line_item_doc_num varchar(30) NULL, -- fm:凭证行项目的凭证编号
	fin_management_area varchar(12) NULL, -- 财务管理范围
	trfm_line_item_num varchar(9) NULL, -- 在trfm行项目中的规则行号
	amount_type varchar(12) NULL, -- 金额类型
	ledger varchar(6) NULL, -- 分类帐
	database_line_key_num varchar(48) NULL, -- 数据库中的行键值的清楚标识号
	funds_manage_update_date varchar(24) NULL, -- 资金管理-更新日期
	cash_valid_year varchar(12) NULL, -- 现金有效年份
	fiscal_period_wid int8 NULL, -- 会计年度期间代理键
	fm_commitment_carryforward_status varchar(6) NULL, -- fm:承诺结转status
	year_end_close_status_backup varchar(6) NULL, -- 年末结算状态(备份)
	year_end_close_transfer_num varchar(6) NULL, -- 年终关帐传输号
	object_number varchar(66) NULL, -- 对象号
	transaction_currency_amount numeric(13,2) NULL, -- 业务货币计价的金额
	fm_area_currency_amount numeric(13,2) NULL, -- 以fm范围货币计的金额
	funds_center varchar(48) NULL, -- 基金中心
	fund varchar(30) NULL, -- 基金
	commitment_item varchar(72) NULL, -- 承诺项目
	functional_area varchar(48) NULL, -- 功能范围
	funded_program varchar(72) NULL, -- 基金计划
	grants varchar(60) NULL, -- 同意
	business_area varchar(12) NULL, -- 业务范围
	profit_center varchar(30) NULL, -- 利润中心
	value_type varchar(6) NULL, -- 值类型
	co_business_transaction varchar(12) NULL, -- co:业务事务
	funds_manage_static_flag varchar(3) NULL, -- 基金管理统计标识
	transaction_currency varchar(15) NULL, -- 交易货币
	carryforward_level varchar(3) NULL, -- 结转层次
	item_text varchar(150) NULL, -- 项目文本
	funds_manage_transaction_num varchar(48) NULL, -- 资金管理事务编号
	funds_manage_control_num varchar(60) NULL, -- 资金管理控制编号
	fm_actual_and_commitment_data_customer varchar(30) NULL, -- fm:实际和承诺数据的客户字段
	class_of_docu_lines varchar(12) NULL, -- 凭证行的分类
	fm_budget_period varchar(30) NULL, -- fm:预算期间
	general_ledger_account_wid int8 NULL, -- 总分类帐帐目代理键
	company_code_for_pay_doc_num varchar(12) NULL, -- 收付凭证号的公司代码
	fiscal_year_for_pay_doc_num varchar(12) NULL, -- 收付凭证号的会计年度
	payment_doc_num varchar(30) NULL, -- 支付凭证号
	item_for_pay_doc_num varchar(9) NULL, -- 收付凭证号的行项目
	fiscal_year_for_fi_doc_num varchar(12) NULL, -- fi:凭证号的会计年度
	fi_doc_num varchar(30) NULL, -- fi凭证号
	doc_item_for_fi_doc_num varchar(9) NULL, -- fi:凭证号的凭证项目
	cash_discount_amount_local_currency numeric(13,2) NULL, -- 本币的现金折扣金额
	exchange_rate_gain_loss_realized numeric(13,2) NULL, -- 已实现的汇率损益
	fm_doc_pay_status varchar(3) NULL, -- fm:凭证的付款状态
	posting_day varchar(24) NULL, -- 过帐日期
	quantity numeric(13,3) NULL, -- 数量
	measure_base_unit varchar(9) NULL, -- 基本计量单位
	trading_partner_company_code varchar(18) NULL, -- 贸易伙伴的公司标识
	line_item_reference_key varchar(60) NULL, -- 行项目的参考码
	fm_pay_update_procedure varchar(12) NULL, -- fm:中的付款更新程序
	predecessor_doc_category varchar(9) NULL, -- 先前凭证目录
	predecessor_doc_num varchar(30) NULL, -- 先前凭证编号
	predecessor_doc_org varchar(30) NULL, -- 先前凭证组织
	predecessor_doc_item varchar(15) NULL, -- 先前凭证项目
	predecessor_account_assignment varchar(15) NULL, -- 先前科目设置
	reference_transaction varchar(15) NULL, -- 参考交易
	logical_system varchar(30) NULL, -- 逻辑系统
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
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_fin_budget_actual IS '事实表-预算实际数';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_budget_actual.client IS '客户端';
COMMENT ON COLUMN dw.tf_fin_budget_actual.company_wid IS '公司代码代理键';
COMMENT ON COLUMN dw.tf_fin_budget_actual.line_item_doc_num IS 'fm:凭证行项目的凭证编号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fin_management_area IS '财务管理范围';
COMMENT ON COLUMN dw.tf_fin_budget_actual.trfm_line_item_num IS '在trfm行项目中的规则行号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.amount_type IS '金额类型';
COMMENT ON COLUMN dw.tf_fin_budget_actual.ledger IS '分类帐';
COMMENT ON COLUMN dw.tf_fin_budget_actual.database_line_key_num IS '数据库中的行键值的清楚标识号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_update_date IS '资金管理-更新日期';
COMMENT ON COLUMN dw.tf_fin_budget_actual.cash_valid_year IS '现金有效年份';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fiscal_period_wid IS '会计年度期间代理键';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_commitment_carryforward_status IS 'fm:承诺结转status';
COMMENT ON COLUMN dw.tf_fin_budget_actual.year_end_close_status_backup IS '年末结算状态(备份)';
COMMENT ON COLUMN dw.tf_fin_budget_actual.year_end_close_transfer_num IS '年终关帐传输号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.object_number IS '对象号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.transaction_currency_amount IS '业务货币计价的金额';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_area_currency_amount IS '以fm范围货币计的金额';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_center IS '基金中心';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fund IS '基金';
COMMENT ON COLUMN dw.tf_fin_budget_actual.commitment_item IS '承诺项目';
COMMENT ON COLUMN dw.tf_fin_budget_actual.functional_area IS '功能范围';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funded_program IS '基金计划';
COMMENT ON COLUMN dw.tf_fin_budget_actual.grants IS '同意';
COMMENT ON COLUMN dw.tf_fin_budget_actual.business_area IS '业务范围';
COMMENT ON COLUMN dw.tf_fin_budget_actual.profit_center IS '利润中心';
COMMENT ON COLUMN dw.tf_fin_budget_actual.value_type IS '值类型';
COMMENT ON COLUMN dw.tf_fin_budget_actual.co_business_transaction IS 'co:业务事务';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_static_flag IS '基金管理统计标识';
COMMENT ON COLUMN dw.tf_fin_budget_actual.transaction_currency IS '交易货币';
COMMENT ON COLUMN dw.tf_fin_budget_actual.carryforward_level IS '结转层次';
COMMENT ON COLUMN dw.tf_fin_budget_actual.item_text IS '项目文本';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_transaction_num IS '资金管理事务编号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_control_num IS '资金管理控制编号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_actual_and_commitment_data_customer IS 'fm:实际和承诺数据的客户字段';
COMMENT ON COLUMN dw.tf_fin_budget_actual.class_of_docu_lines IS '凭证行的分类';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_budget_period IS 'fm:预算期间';
COMMENT ON COLUMN dw.tf_fin_budget_actual.general_ledger_account_wid IS '总分类帐帐目代理键';
COMMENT ON COLUMN dw.tf_fin_budget_actual.company_code_for_pay_doc_num IS '收付凭证号的公司代码';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fiscal_year_for_pay_doc_num IS '收付凭证号的会计年度';
COMMENT ON COLUMN dw.tf_fin_budget_actual.payment_doc_num IS '支付凭证号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.item_for_pay_doc_num IS '收付凭证号的行项目';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fiscal_year_for_fi_doc_num IS 'fi:凭证号的会计年度';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fi_doc_num IS 'fi凭证号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.doc_item_for_fi_doc_num IS 'fi:凭证号的凭证项目';
COMMENT ON COLUMN dw.tf_fin_budget_actual.cash_discount_amount_local_currency IS '本币的现金折扣金额';
COMMENT ON COLUMN dw.tf_fin_budget_actual.exchange_rate_gain_loss_realized IS '已实现的汇率损益';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_doc_pay_status IS 'fm:凭证的付款状态';
COMMENT ON COLUMN dw.tf_fin_budget_actual.posting_day IS '过帐日期';
COMMENT ON COLUMN dw.tf_fin_budget_actual.quantity IS '数量';
COMMENT ON COLUMN dw.tf_fin_budget_actual.measure_base_unit IS '基本计量单位';
COMMENT ON COLUMN dw.tf_fin_budget_actual.trading_partner_company_code IS '贸易伙伴的公司标识';
COMMENT ON COLUMN dw.tf_fin_budget_actual.line_item_reference_key IS '行项目的参考码';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_pay_update_procedure IS 'fm:中的付款更新程序';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_category IS '先前凭证目录';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_num IS '先前凭证编号';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_org IS '先前凭证组织';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_item IS '先前凭证项目';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_account_assignment IS '先前科目设置';
COMMENT ON COLUMN dw.tf_fin_budget_actual.reference_transaction IS '参考交易';
COMMENT ON COLUMN dw.tf_fin_budget_actual.logical_system IS '逻辑系统';

-- Permissions

ALTER TABLE dw.tf_fin_budget_actual OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_budget_actual TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_budget_actual TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_budget_actual TO gr_uqry_data;
