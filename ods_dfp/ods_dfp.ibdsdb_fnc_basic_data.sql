-- Drop table

-- DROP TABLE ods_dfp.ibdsdb_fnc_basic_data;

CREATE TABLE ods_dfp.ibdsdb_fnc_basic_data (
	uuid varchar(191) NOT NULL DEFAULT NULL::character varying,
	zspnum varchar(191) NULL DEFAULT NULL::character varying, -- 版本号
	zspty varchar(191) NULL DEFAULT NULL::character varying, -- 销售计划类型
	spart varchar(191) NULL DEFAULT NULL::character varying, -- 产品组编码
	kunnr varchar(191) NULL DEFAULT NULL::character varying, -- 客户编码
	zmflag varchar(191) NULL DEFAULT NULL::character varying, -- 内部客户标识
	werks varchar(191) NULL DEFAULT NULL::character varying, -- 库位工厂
	material varchar(191) NULL DEFAULT NULL::character varying, -- 物料号(FG code)
	"level" varchar(191) NULL DEFAULT NULL::character varying, -- 等级
	"month" varchar(191) NULL DEFAULT NULL::character varying, -- 年月
	product_group varchar(191) NULL DEFAULT NULL::character varying, -- 产品组描述
	real_product_group varchar(191) NULL DEFAULT NULL::character varying, -- 产品组(Maker)（描述细分）
	customer varchar(191) NULL DEFAULT NULL::character varying, -- 客户
	real_customer varchar(191) NULL DEFAULT NULL::character varying, -- 客户(非战略)
	factory varchar(191) NULL DEFAULT NULL::character varying, -- 工厂
	sales_volume numeric(20,4) NULL DEFAULT NULL::numeric, -- 销量
	sales_substrate numeric(20,4) NULL DEFAULT NULL::numeric, -- 销售基板
	conversion_substrate numeric(20,4) NULL DEFAULT NULL::numeric, -- 折算基板
	conversion_substrate_g6 numeric(20,4) NULL DEFAULT NULL::numeric, -- 折算基板G6
	sales_area numeric(20,4) NULL DEFAULT NULL::numeric, -- 销售面积
	zzscc varchar(191) NULL DEFAULT NULL::character varying, -- 尺寸
	zfbl varchar(191) NULL DEFAULT NULL::character varying, -- 分辨率
	zchxt varchar(191) NULL DEFAULT NULL::character varying, -- 出货形态
	zborderless varchar(191) NULL DEFAULT NULL::character varying, -- 窄边框/Borderless
	zicfa varchar(191) NULL DEFAULT NULL::character varying, -- IC方案
	zodmms varchar(191) NULL DEFAULT NULL::character varying, -- ODM模式
	zglasscuts varchar(191) NULL DEFAULT NULL::character varying, -- Glass切数
	zqpnlcuts varchar(191) NULL DEFAULT NULL::character varying, -- QPNL切数
	showtech varchar(191) NULL DEFAULT NULL::character varying, -- 显示模式/技术
	kbetr numeric(20,4) NULL DEFAULT NULL::numeric, -- 单价
	konwa varchar(191) NULL DEFAULT NULL::character varying, -- 货币单位
	ukurs numeric(20,4) NULL DEFAULT NULL::numeric, -- 汇率
	revenue numeric(20,4) NULL DEFAULT NULL::numeric, -- 收入
	sfdx varchar(191) NULL DEFAULT NULL::character varying, -- 是否抵消项
	solx varchar(191) NULL DEFAULT NULL::character varying, -- 销售凭证类型
	side_effect numeric(20,4) NULL DEFAULT NULL::numeric, -- 边效
	profit numeric(20,4) NULL DEFAULT NULL::numeric, -- 利润总额
	"bom" numeric(20,4) NULL DEFAULT NULL::numeric, -- BOM
	alpha numeric(20,4) NULL DEFAULT NULL::numeric, -- α
	zsbpc varchar(191) NULL DEFAULT NULL::character varying, -- 发送标记
	posnr varchar(191) NULL DEFAULT NULL::character varying, -- 项目
	vbeln varchar(191) NULL DEFAULT NULL::character varying, -- 开票凭证
	batchid varchar(191) NULL DEFAULT NULL::character varying, -- 批次号
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Column comments

COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zspnum IS '版本号';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zspty IS '销售计划类型';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.spart IS '产品组编码';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.kunnr IS '客户编码';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zmflag IS '内部客户标识';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.werks IS '库位工厂';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.material IS '物料号(FG code)';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data."level" IS '等级';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data."month" IS '年月';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.product_group IS '产品组描述';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.real_product_group IS '产品组(Maker)（描述细分）';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.customer IS '客户';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.real_customer IS '客户(非战略)';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.factory IS '工厂';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sales_volume IS '销量';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sales_substrate IS '销售基板';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.conversion_substrate IS '折算基板';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.conversion_substrate_g6 IS '折算基板G6';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sales_area IS '销售面积';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zzscc IS '尺寸';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zfbl IS '分辨率';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zchxt IS '出货形态';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zborderless IS '窄边框/Borderless';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zicfa IS 'IC方案';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zodmms IS 'ODM模式';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zglasscuts IS 'Glass切数';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zqpnlcuts IS 'QPNL切数';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.showtech IS '显示模式/技术';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.kbetr IS '单价';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.konwa IS '货币单位';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.ukurs IS '汇率';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.revenue IS '收入';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sfdx IS '是否抵消项';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.solx IS '销售凭证类型';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.side_effect IS '边效';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.profit IS '利润总额';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data."bom" IS 'BOM';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.alpha IS 'α';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zsbpc IS '发送标记';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.posnr IS '项目';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.vbeln IS '开票凭证';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.batchid IS '批次号';

-- Permissions

ALTER TABLE ods_dfp.ibdsdb_fnc_basic_data OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.ibdsdb_fnc_basic_data TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.ibdsdb_fnc_basic_data TO gr_uapp_data;
GRANT SELECT ON TABLE ods_dfp.ibdsdb_fnc_basic_data TO gr_uqry_data;
