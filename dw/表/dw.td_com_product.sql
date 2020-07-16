-- Drop table

-- DROP TABLE dw.td_com_product;

CREATE TABLE dw.td_com_product (
	row_wid int8 NOT NULL, -- 代理键
	material_short_name varchar(9) NULL, -- 物料描述（短文本）
	material_name varchar(9) NULL, -- 有关匹配码的大写的物料描述
	client varchar(9) NULL, -- 客户端
	material_number varchar(54) NULL, -- 物料号
	creation_date varchar(24) NULL, -- 创建日期
	created_by varchar(36) NULL, -- 创建对象的人员名称
	last_update_date varchar(24) NULL, -- 上次更改的日期
	last_updated_by varchar(36) NULL, -- 对象更改人员的名称
	material_status varchar(45) NULL, -- 维护全部物料状态
	maintenance_status varchar(45) NULL, -- 维护状态
	flagmaterial_deletion varchar(3) NULL, -- 在客户级标记要删除的物料
	material_type varchar(12) NULL, -- 物料类型
	industry_sector varchar(3) NULL, -- 行业领域
	material_group varchar(27) NULL, -- 物料组
	oldmaterial_number varchar(54) NULL, -- 旧物料号
	baseunitof_measure varchar(9) NULL, -- 基本计量单位
	groes varchar(96) NULL, -- 大小_量纲
	wrkst varchar(144) NULL, -- 基本物料
	normt varchar(54) NULL, -- 行业标准描述（例如 ANSI 或 ISO）
	labor varchar(9) NULL, -- 实验室_设计室
	ekwsl varchar(12) NULL, -- 采购价值代码
	brgew numeric(13,3) NULL, -- 毛重
	ntgew numeric(13,3) NULL, -- 净重
	gewei varchar(9) NULL, -- 重量单位
	volum numeric(13,3) NULL, -- 业务量
	voleh varchar(9) NULL, -- 体积单位
	behvo varchar(6) NULL, -- 容器需求
	raube varchar(6) NULL, -- 存储条件
	tempb varchar(6) NULL, -- 温度条件标识
	disst varchar(9) NULL, -- 低层代码
	tragr varchar(12) NULL, -- 运输组
	stoff varchar(54) NULL, -- 危险物料号
	spart varchar(6) NULL, -- 产品组
	kunnr varchar(30) NULL, -- 竞争者
	bwscl varchar(3) NULL, -- 货源
	saiso varchar(12) NULL, -- 季节类别
	etiar varchar(6) NULL, -- 标签类型
	etifo varchar(6) NULL, -- 标签格式
	entar varchar(3) NULL, -- 取消激活的
	ean11 varchar(54) NULL, -- 国际文件号(EAN_UPC)
	numtp varchar(6) NULL, -- 国际商品编码的类别 (EAN)
	laeng numeric(13,3) NULL, -- 长度
	breit numeric(13,3) NULL, -- 宽度
	hoehe numeric(13,3) NULL, -- 高度
	meabm varchar(9) NULL, -- 长度_宽度_高度的尺寸单位
	prdha varchar(54) NULL, -- 产品层次
	magrv varchar(12) NULL, -- 物料组: 包装物料
	begru varchar(12) NULL, -- 权限组
	datab varchar(24) NULL, -- 开始生效日期
	liqdt varchar(24) NULL, -- 删除日期
	saisj varchar(12) NULL, -- 季度年
	plgtp varchar(6) NULL, -- 价格标记类别
	mlgut varchar(3) NULL, -- 空白物料清单
	extwg varchar(54) NULL, -- 外部物料组
	satnr varchar(54) NULL, -- 一般可配置物料
	attyp varchar(6) NULL, -- 物料类别
	kzkup varchar(3) NULL, -- 指示符 : 物料是联产品
	kznfm varchar(3) NULL, -- 标记：物料有一后续物料
	pmata varchar(54) NULL, -- 定价参考物料
	taklv varchar(3) NULL, -- 物料从税收分类
	rbnrm varchar(27) NULL, -- 类别参数文件
	mhdrz numeric(4) NULL, -- 最短剩余货架寿命
	mhdhb numeric(4) NULL, -- 总货架寿命
	mhdlp numeric(3) NULL, -- 仓储百分比
	inhme varchar(9) NULL, -- 内容单位
	inhal numeric(13,3) NULL, -- 净内容
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
COMMENT ON TABLE dw.td_com_product IS ' 产品';

-- Column comments

COMMENT ON COLUMN dw.td_com_product.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_com_product.material_short_name IS '物料描述（短文本）';
COMMENT ON COLUMN dw.td_com_product.material_name IS '有关匹配码的大写的物料描述';
COMMENT ON COLUMN dw.td_com_product.client IS '客户端';
COMMENT ON COLUMN dw.td_com_product.material_number IS '物料号';
COMMENT ON COLUMN dw.td_com_product.creation_date IS '创建日期';
COMMENT ON COLUMN dw.td_com_product.created_by IS '创建对象的人员名称';
COMMENT ON COLUMN dw.td_com_product.last_update_date IS '上次更改的日期';
COMMENT ON COLUMN dw.td_com_product.last_updated_by IS '对象更改人员的名称';
COMMENT ON COLUMN dw.td_com_product.material_status IS '维护全部物料状态';
COMMENT ON COLUMN dw.td_com_product.maintenance_status IS '维护状态';
COMMENT ON COLUMN dw.td_com_product.flagmaterial_deletion IS '在客户级标记要删除的物料';
COMMENT ON COLUMN dw.td_com_product.material_type IS '物料类型';
COMMENT ON COLUMN dw.td_com_product.industry_sector IS '行业领域';
COMMENT ON COLUMN dw.td_com_product.material_group IS '物料组';
COMMENT ON COLUMN dw.td_com_product.oldmaterial_number IS '旧物料号';
COMMENT ON COLUMN dw.td_com_product.baseunitof_measure IS '基本计量单位';
COMMENT ON COLUMN dw.td_com_product.groes IS '大小_量纲';
COMMENT ON COLUMN dw.td_com_product.wrkst IS '基本物料';
COMMENT ON COLUMN dw.td_com_product.normt IS '行业标准描述（例如 ANSI 或 ISO）';
COMMENT ON COLUMN dw.td_com_product.labor IS '实验室_设计室';
COMMENT ON COLUMN dw.td_com_product.ekwsl IS '采购价值代码';
COMMENT ON COLUMN dw.td_com_product.brgew IS '毛重';
COMMENT ON COLUMN dw.td_com_product.ntgew IS '净重';
COMMENT ON COLUMN dw.td_com_product.gewei IS '重量单位';
COMMENT ON COLUMN dw.td_com_product.volum IS '业务量';
COMMENT ON COLUMN dw.td_com_product.voleh IS '体积单位';
COMMENT ON COLUMN dw.td_com_product.behvo IS '容器需求';
COMMENT ON COLUMN dw.td_com_product.raube IS '存储条件';
COMMENT ON COLUMN dw.td_com_product.tempb IS '温度条件标识';
COMMENT ON COLUMN dw.td_com_product.disst IS '低层代码';
COMMENT ON COLUMN dw.td_com_product.tragr IS '运输组';
COMMENT ON COLUMN dw.td_com_product.stoff IS '危险物料号';
COMMENT ON COLUMN dw.td_com_product.spart IS '产品组';
COMMENT ON COLUMN dw.td_com_product.kunnr IS '竞争者';
COMMENT ON COLUMN dw.td_com_product.bwscl IS '货源';
COMMENT ON COLUMN dw.td_com_product.saiso IS '季节类别';
COMMENT ON COLUMN dw.td_com_product.etiar IS '标签类型';
COMMENT ON COLUMN dw.td_com_product.etifo IS '标签格式';
COMMENT ON COLUMN dw.td_com_product.entar IS '取消激活的';
COMMENT ON COLUMN dw.td_com_product.ean11 IS '国际文件号(EAN_UPC)';
COMMENT ON COLUMN dw.td_com_product.numtp IS '国际商品编码的类别 (EAN)';
COMMENT ON COLUMN dw.td_com_product.laeng IS '长度';
COMMENT ON COLUMN dw.td_com_product.breit IS '宽度';
COMMENT ON COLUMN dw.td_com_product.hoehe IS '高度';
COMMENT ON COLUMN dw.td_com_product.meabm IS '长度_宽度_高度的尺寸单位';
COMMENT ON COLUMN dw.td_com_product.prdha IS '产品层次';
COMMENT ON COLUMN dw.td_com_product.magrv IS '物料组: 包装物料';
COMMENT ON COLUMN dw.td_com_product.begru IS '权限组';
COMMENT ON COLUMN dw.td_com_product.datab IS '开始生效日期';
COMMENT ON COLUMN dw.td_com_product.liqdt IS '删除日期';
COMMENT ON COLUMN dw.td_com_product.saisj IS '季度年';
COMMENT ON COLUMN dw.td_com_product.plgtp IS '价格标记类别';
COMMENT ON COLUMN dw.td_com_product.mlgut IS '空白物料清单';
COMMENT ON COLUMN dw.td_com_product.extwg IS '外部物料组';
COMMENT ON COLUMN dw.td_com_product.satnr IS '一般可配置物料';
COMMENT ON COLUMN dw.td_com_product.attyp IS '物料类别';
COMMENT ON COLUMN dw.td_com_product.kzkup IS '指示符 : 物料是联产品';
COMMENT ON COLUMN dw.td_com_product.kznfm IS '标记：物料有一后续物料';
COMMENT ON COLUMN dw.td_com_product.pmata IS '定价参考物料';
COMMENT ON COLUMN dw.td_com_product.taklv IS '物料从税收分类';
COMMENT ON COLUMN dw.td_com_product.rbnrm IS '类别参数文件';
COMMENT ON COLUMN dw.td_com_product.mhdrz IS '最短剩余货架寿命';
COMMENT ON COLUMN dw.td_com_product.mhdhb IS '总货架寿命';
COMMENT ON COLUMN dw.td_com_product.mhdlp IS '仓储百分比';
COMMENT ON COLUMN dw.td_com_product.inhme IS '内容单位';
COMMENT ON COLUMN dw.td_com_product.inhal IS '净内容';

-- Permissions

ALTER TABLE dw.td_com_product OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_product TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_product TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_product TO gr_uqry_data;
