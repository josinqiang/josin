-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_sales_revenue;

CREATE TABLE dw.tf_business_quota_copq_b4_sales_revenue (
	client varchar(100) NULL, -- 客户端
	plan_version varchar(100) NULL, -- 计划版本(CO-PA)
	co_pa_no varchar(100) NULL, -- 获利能力段编号(CO-PA)
	co_pa_line_no varchar(100) NULL, -- 获利分段行项目的凭证号
	co_pa_line_prj varchar(100) NULL, -- CO-PA行项目的项目号
	company_code varchar(255) NULL, -- 公司code
	factory_code varchar(255) NULL, -- 工厂code
	sale_voucher_no varchar(255) NULL, -- 销售凭证/销售订单
	sale_voucher_type varchar(255) NULL, -- 销售凭证类型
	prod_group_code varchar(255) NULL, -- 产品组code,bu代码
	prod_group_name varchar(255) NULL, -- 产品组,bu名称
	customer_code varchar(255) NULL, -- 客户code
	customer varchar(255) NULL, -- 客户
	currency_type varchar(255) NULL, -- 经营范围的货币类型
	record_type varchar(255) NULL, -- 记录类型
	mat_code varchar(255) NULL, -- 物料CODE
	mat_name varchar(255) NULL, -- 物料
	location_code varchar(255) NULL, -- 库位
	"location" varchar(255) NULL, -- 仓储地点的描述
	years varchar(4) NULL, -- 会计年度
	months varchar(2) NULL, -- 过账期间
	revenue numeric(18,2) NULL, -- 收入
	other_bus_income numeric(18,2) NULL, -- 其他业务收入
	other_bus_cost numeric(18,2) NULL, -- 其他业务支出
	cogs numeric(18,2) NULL, -- cogs
	prod_code varchar(255) NULL, -- 产品号
	prod_name varchar(255) NULL, -- 产品名称
	batch_code varchar(255) NULL, -- 批次号
	quantity numeric(18,6) NULL, -- 销售数量
	currency varchar(255) NULL, -- 数据记录货币
	exchange_rate numeric(9,5) NULL, -- 汇率
	hq_customer_code varchar(255) NULL, -- hq 客户code
	hq_customer varchar(255) NULL, -- hq客户信息
	distribution_channel varchar(255) NULL, -- 分销渠道
	sales_org_code varchar(255) NULL, -- 销售组织
	ref_voucher_no varchar(255) NULL, -- 参考凭证号对于co-pa行项目
	matl_group1_code varchar(255) NULL, -- 物料组1
	matl_group1 varchar(255) NULL, -- 物料组1名称
	matl_group2_code varchar(255) NULL, -- 物料组2
	matl_group2 varchar(255) NULL, -- 物料组2名称
	matl_group3_code varchar(255) NULL, -- 物料组3
	matl_group3 varchar(255) NULL, -- 物料组3名称
	matl_group4_code varchar(255) NULL, -- 物料组4
	matl_group4 varchar(255) NULL, -- 物料组4名称
	matl_group5_code varchar(255) NULL, -- 物料组5
	matl_group5 varchar(255) NULL, -- 物料组5名称
	matl_group_code varchar(255) NULL, -- 物料组code
	matl_group varchar(255) NULL, -- 物料组名称
	revenue_center varchar(255) NULL, -- 利润中心编码
	revenue_center_desc varchar(255) NULL, -- 利润中心
	sale_voucher_type1 varchar(255) NULL, -- 销售凭证项目类别
	ref_voucher_no1 varchar(255) NULL, -- 参考凭证
	order_quantity numeric(18,6) NULL, -- 订单数量
	"size" varchar(255) NULL, -- 尺寸
	resolution varchar(255) NULL, -- 分辨率
	ship_format varchar(255) NULL, -- 出货形态
	show_or_tech varchar(255) NULL, -- 显示模式/技术
	glass_cuts numeric(16,6) NULL, -- glass切数
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue IS 'COPQ:B4销售收入';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.client IS '客户端';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.plan_version IS '计划版本(CO-PA)';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.co_pa_no IS '获利能力段编号(CO-PA)';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.co_pa_line_no IS '获利分段行项目的凭证号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.co_pa_line_prj IS 'CO-PA行项目的项目号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.company_code IS '公司code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.factory_code IS '工厂code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sale_voucher_no IS '销售凭证/销售订单';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sale_voucher_type IS '销售凭证类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_group_code IS '产品组code,bu代码';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_group_name IS '产品组,bu名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.customer_code IS '客户code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.customer IS '客户';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.currency_type IS '经营范围的货币类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.record_type IS '记录类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.mat_code IS '物料CODE';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.mat_name IS '物料';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.location_code IS '库位';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue."location" IS '仓储地点的描述';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.years IS '会计年度';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.months IS '过账期间';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.revenue IS '收入';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.other_bus_income IS '其他业务收入';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.other_bus_cost IS '其他业务支出';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.cogs IS 'cogs';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_code IS '产品号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_name IS '产品名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.batch_code IS '批次号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.quantity IS '销售数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.currency IS '数据记录货币';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.exchange_rate IS '汇率';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.hq_customer_code IS 'hq 客户code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.hq_customer IS 'hq客户信息';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.distribution_channel IS '分销渠道';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sales_org_code IS '销售组织';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.ref_voucher_no IS '参考凭证号对于co-pa行项目';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group1_code IS '物料组1';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group1 IS '物料组1名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group2_code IS '物料组2';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group2 IS '物料组2名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group3_code IS '物料组3';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group3 IS '物料组3名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group4_code IS '物料组4';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group4 IS '物料组4名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group5_code IS '物料组5';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group5 IS '物料组5名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group_code IS '物料组code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group IS '物料组名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.revenue_center IS '利润中心编码';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.revenue_center_desc IS '利润中心';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sale_voucher_type1 IS '销售凭证项目类别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.ref_voucher_no1 IS '参考凭证';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.order_quantity IS '订单数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue."size" IS '尺寸';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.resolution IS '分辨率';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.ship_format IS '出货形态';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.show_or_tech IS '显示模式/技术';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.glass_cuts IS 'glass切数';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_sales_revenue OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue TO gr_uapp_data;
