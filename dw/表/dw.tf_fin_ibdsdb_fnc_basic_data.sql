-- Drop table

-- DROP TABLE dw.tf_fin_ibdsdb_fnc_basic_data;

CREATE TABLE dw.tf_fin_ibdsdb_fnc_basic_data (
	uuid varchar(191) NULL,
	version_no varchar(191) NULL, -- 版本号
	sales_plan_type varchar(191) NULL, -- 销售计划类型
	product_group varchar(191) NULL, -- 产品组编码
	customer_code varchar(191) NULL, -- 客户编码
	internal_customer_flag varchar(191) NULL, -- 内部客户标识
	repository_factory varchar(191) NULL, -- 库位工厂
	fgcode varchar(191) NULL, -- 物料号(FG code)
	"level" varchar(191) NULL, -- 等级
	"month" varchar(191) NULL, -- 年月
	product_group_detail varchar(191) NULL, -- 产品组描述
	real_product_group varchar(191) NULL, -- 产品组(Maker)（描述细分）
	customer varchar(191) NULL, -- 客户
	real_customer varchar(191) NULL, -- 客户(非战略)
	factory varchar(191) NULL, -- 工厂
	sales_volume numeric(20,4) NULL, -- 销量
	sales_substrate numeric(20,4) NULL, -- 销售基板
	conversion_substrate numeric(20,4) NULL, -- 折算基板
	conversion_substrate_g6 numeric(20,4) NULL, -- 折算基板G6
	sales_area numeric(20,4) NULL, -- 销售面积
	"size" varchar(191) NULL, -- 尺寸
	resolving_power varchar(191) NULL, -- 分辨率
	shipment_form varchar(191) NULL, -- 出货形态
	narrow_border varchar(191) NULL, -- 窄边框/Borderless
	ic_programme varchar(191) NULL, -- IC方案
	odm_mode varchar(191) NULL, -- ODM模式
	glass_cut_num varchar(191) NULL, -- Glass切数
	qpnl_cut_num varchar(191) NULL, -- QPNL切数
	showtech varchar(191) NULL, -- 显示模式/技术
	unit_price numeric(20,4) NULL, -- 单价
	currency_unit varchar(191) NULL, -- 货币单位
	exchange_rate numeric(20,4) NULL, -- 汇率
	revenue numeric(20,4) NULL, -- 收入
	is_offsetting_term varchar(191) NULL, -- 是否抵消项
	sales_voucher_type varchar(191) NULL, -- 销售凭证类型
	side_effect numeric(20,4) NULL, -- 边效
	profit numeric(20,4) NULL, -- 利润总额
	"bom" numeric(20,4) NULL, -- BOM
	alpha numeric(20,4) NULL, -- α
	send_flag varchar(191) NULL, -- 发送标记
	project varchar(191) NULL, -- 项目
	billing_documents varchar(191) NULL, -- 开票凭证
	batchid varchar(191) NULL, -- 批次号
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
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
COMMENT ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data IS 'ibds销售数据';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.version_no IS '版本号';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_plan_type IS '销售计划类型';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.product_group IS '产品组编码';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.customer_code IS '客户编码';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.internal_customer_flag IS '内部客户标识';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.repository_factory IS '库位工厂';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.fgcode IS '物料号(FG code)';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."level" IS '等级';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."month" IS '年月';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.product_group_detail IS '产品组描述';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.real_product_group IS '产品组(Maker)（描述细分）';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.customer IS '客户';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.real_customer IS '客户(非战略)';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.factory IS '工厂';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_volume IS '销量';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_substrate IS '销售基板';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.conversion_substrate IS '折算基板';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.conversion_substrate_g6 IS '折算基板G6';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_area IS '销售面积';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."size" IS '尺寸';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.resolving_power IS '分辨率';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.shipment_form IS '出货形态';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.narrow_border IS '窄边框/Borderless';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.ic_programme IS 'IC方案';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.odm_mode IS 'ODM模式';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.glass_cut_num IS 'Glass切数';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.qpnl_cut_num IS 'QPNL切数';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.showtech IS '显示模式/技术';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.unit_price IS '单价';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.currency_unit IS '货币单位';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.exchange_rate IS '汇率';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.revenue IS '收入';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.is_offsetting_term IS '是否抵消项';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_voucher_type IS '销售凭证类型';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.side_effect IS '边效';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.profit IS '利润总额';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."bom" IS 'BOM';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.alpha IS 'α';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.send_flag IS '发送标记';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.project IS '项目';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.billing_documents IS '开票凭证';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.batchid IS '批次号';

-- Permissions

ALTER TABLE dw.tf_fin_ibdsdb_fnc_basic_data OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data TO gr_uapp_data;
