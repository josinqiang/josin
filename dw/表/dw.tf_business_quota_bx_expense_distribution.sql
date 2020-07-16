-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_expense_distribution;

CREATE TABLE dw.tf_business_quota_bx_expense_distribution (
	distribute_coefficient numeric(18,8) NULL, -- 分摊系数
	amount numeric(18,2) NULL, -- 发生额
	currency varchar(15) NULL, -- 货币
	cal_year text NULL, -- 年
	cal_month text NULL, -- 月
	year_month varchar(18) NULL, -- 日历年/月
	company_code varchar(12) NULL, -- 公司代码
	secondary_org varchar(30) NULL, -- 二级组织
	business_index varchar(6) NULL, -- 业务指标
	expense_belong varchar(6) NULL, -- 费用归属
	expense_category varchar(6) NULL, -- 费用类别
	cost_center_group varchar(30) NULL, -- 成本中心组
	tertiary_org varchar(30) NULL, -- 三级组织
	distinguish_bx12 varchar(54) NULL, -- 区分BX1 BX2
	customer varchar(30) NULL, -- 客户
	cost_element varchar(30) NULL, -- 成本要素
	func_area varchar(48) NULL, -- 功能范围
	order_num varchar(36) NULL, -- 订单
	trns varchar(12) NULL, -- 事务
	business varchar(9) NULL, -- BU(事业部)
	line_body varchar(96) NULL, -- 线体
	product_type varchar(96) NULL, -- 产品类型
	manufacture_expense numeric(18,2) NULL, -- 制造费用
	account_chart varchar(12) NULL, -- 科目表
	account varchar(30) NULL, -- 总帐科目
	capital_flag varchar(3) NULL, -- 资本化标识
	primary_org varchar(30) NULL, -- 一级组织
	opa_prd varchar(180) NULL, -- OPA机型
	material varchar(96) NULL, -- 物料
	year_month1 varchar(18) NULL, -- 日历年/月1
	opa_flag1 varchar(6) NULL, -- OPA制造费用标识1
	opa_flag2 varchar(6) NULL, -- OPA制造费用标识2
	opa_src varchar(6) NULL, -- OPA口径
	cost_center varchar(30) NULL, -- 成本中心
	partner_company_code varchar(12) NULL, -- 合作伙伴公司代码
	is_cen varchar(3) NULL, -- 是否JCEN
	data_source varchar(6) NULL, -- 数据来源
	control_area varchar(12) NULL, -- 控制范围
	factory varchar(12) NULL, -- 工厂
	info_provider varchar(90) NULL, -- 信息提供者
	b4_already_charged numeric(18,2) NULL, -- B4已承担
	b4_should_charged numeric(18,2) NULL, -- B4应承担
	b4_distribute_coefficient numeric(18,8) NULL, -- B4分摊系数
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(300) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_bx_expense_distribution IS '费用分摊012报表';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.distribute_coefficient IS '分摊系数';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.amount IS '发生额';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.currency IS '货币';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cal_year IS '年';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cal_month IS '月';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.year_month IS '日历年/月';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.company_code IS '公司代码';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.secondary_org IS '二级组织';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.business_index IS '业务指标';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.expense_belong IS '费用归属';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.expense_category IS '费用类别';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cost_center_group IS '成本中心组';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.tertiary_org IS '三级组织';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.distinguish_bx12 IS '区分BX1 BX2';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.customer IS '客户';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cost_element IS '成本要素';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.func_area IS '功能范围';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.order_num IS '订单';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.trns IS '事务';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.business IS 'BU(事业部)';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.line_body IS '线体';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.product_type IS '产品类型';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.manufacture_expense IS '制造费用';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.account_chart IS '科目表';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.account IS '总帐科目';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.capital_flag IS '资本化标识';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.primary_org IS '一级组织';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_prd IS 'OPA机型';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.material IS '物料';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.year_month1 IS '日历年/月1';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_flag1 IS 'OPA制造费用标识1';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_flag2 IS 'OPA制造费用标识2';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_src IS 'OPA口径';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cost_center IS '成本中心';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.partner_company_code IS '合作伙伴公司代码';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.is_cen IS '是否JCEN';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.data_source IS '数据来源';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.control_area IS '控制范围';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.factory IS '工厂';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.info_provider IS '信息提供者';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.b4_already_charged IS 'B4已承担';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.b4_should_charged IS 'B4应承担';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.b4_distribute_coefficient IS 'B4分摊系数';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_expense_distribution OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_expense_distribution TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_expense_distribution TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_expense_distribution TO gr_uqry_data;
