-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_co_external_total_cost;

CREATE TABLE dw.tf_business_quota_copq_co_external_total_cost (
	client varchar(9) NULL, -- 客户端
	control_object_ledger varchar(6) NULL, -- 控制对象的分类帐
	object_number varchar(66) NULL, -- 对象号
	accounting_year varchar(12) NULL, -- 会计年度
	value_type varchar(6) NULL, -- 值类型
	"version" varchar(9) NULL, -- 版本
	cost_elements varchar(30) NULL, -- 成本要素
	co_code_number varchar(42) NULL, -- CO 码次级编号
	co_business_affacharacter varchar(12) NULL, -- CO 业务事务
	credit_debit_flag varchar(10) NULL, -- 借贷标记
	total_transaction_value_01 numeric(15,2) NULL, -- 1月交易货币中的总值
	total_transaction_value_02 numeric(15,2) NULL, -- 2月交易货币中的总值
	total_transaction_value_03 numeric(15,2) NULL, -- 3月交易货币中的总值
	total_transaction_value_04 numeric(15,2) NULL, -- 4月交易货币中的总值
	total_transaction_value_05 numeric(15,2) NULL, -- 5月交易货币中的总值
	total_transaction_value_06 numeric(15,2) NULL, -- 6月交易货币中的总值
	total_transaction_value_07 numeric(15,2) NULL, -- 7月交易货币中的总值
	total_transaction_value_08 numeric(15,2) NULL, -- 8月交易货币中的总值
	total_transaction_value_09 numeric(15,2) NULL, -- 9月交易货币中的总值
	total_transaction_value_10 numeric(15,2) NULL, -- 10月交易货币中的总值
	total_transaction_value_11 numeric(15,2) NULL, -- 11月交易货币中的总值
	total_transaction_value_12 numeric(15,2) NULL, -- 12月交易货币中的总值
	factory varchar(12) NULL, -- 工厂
	currency varchar(9) NULL, -- 交易货币
	period_freeze varchar(9) NULL, -- 期间冻结
	business_partner_code varchar(100) NULL, -- 贸易伙伴的公司标识
	business_partner_scope varchar(100) NULL, -- 贸易伙伴的业务范围
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
COMMENT ON TABLE dw.tf_business_quota_copq_co_external_total_cost IS 'CO 对象：外部记帐的成本总计';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.client IS '客户端';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.control_object_ledger IS '控制对象的分类帐';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.object_number IS '对象号';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.accounting_year IS '会计年度';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.value_type IS '值类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost."version" IS '版本';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.cost_elements IS '成本要素';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.co_code_number IS 'CO 码次级编号';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.co_business_affacharacter IS 'CO 业务事务';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.credit_debit_flag IS '借贷标记';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_01 IS '1月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_02 IS '2月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_03 IS '3月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_04 IS '4月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_05 IS '5月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_06 IS '6月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_07 IS '7月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_08 IS '8月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_09 IS '9月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_10 IS '10月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_11 IS '11月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_12 IS '12月交易货币中的总值';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.factory IS '工厂';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.currency IS '交易货币';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.period_freeze IS '期间冻结';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.business_partner_code IS '贸易伙伴的公司标识';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.business_partner_scope IS '贸易伙伴的业务范围';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_co_external_total_cost OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_co_external_total_cost TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_co_external_total_cost TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_co_external_total_cost TO gr_uqry_data;
