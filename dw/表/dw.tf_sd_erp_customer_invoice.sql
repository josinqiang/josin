-- Drop table

-- DROP TABLE dw.tf_sd_erp_customer_invoice;

CREATE TABLE dw.tf_sd_erp_customer_invoice (
	mandt varchar(9) NULL, -- 客户端
	zfphm varchar(30) NULL, -- HF：发票号码
	zfplx varchar(3) NULL, -- HF：发票类型
	zversion varchar(9) NULL, -- HF：版本号
	zitem varchar(18) NULL, -- HF：项目号
	matnr varchar(54) NULL, -- 物料号
	charg varchar(30) NULL, -- 批号
	kdmat varchar(105) NULL, -- 客户所用的物料编号
	menge numeric(13,3) NULL, -- 数量
	meins varchar(9) NULL, -- 基本计量单位
	lfimg numeric(13,3) NULL, -- 实际已交货量（按销售单位）
	vrkme varchar(60) NULL, -- 简称
	zntpr numeric(13,4) NULL, -- HF：单价4位小数
	netwr numeric(15,2) NULL, -- HF：金额
	waers varchar(15) NULL, -- 货币码
	ntgew numeric(15,3) NULL, -- 净重量
	gewei varchar(9) NULL, -- HF：重量单位
	vgbel varchar(30) NULL, -- 参考单据的单据编号
	vgpos varchar(18) NULL, -- 参考项目的项目号
	maktx varchar(120) NULL, -- 物料描述（短文本）
	zggxh varchar(600) NULL, -- 规格型号
	ernam varchar(36) NULL, -- 创建对象的人员名称
	erdat varchar(24) NULL, -- 记录的创建日期
	eruze varchar(18) NULL, -- 时间
	aenam varchar(36) NULL, -- 最后更改人
	aedat varchar(24) NULL, -- 更改订单主文件日期
	aeuze varchar(18) NULL, -- 时间
	gross numeric(10,3) NULL, -- 毛重量
	grwei varchar(9) NULL, -- HF：重量单位
	zvolum varchar(90) NULL,
	zspmc varchar(150) NULL, -- 商品名称
	zywpm varchar(150) NULL, -- 英文品名
	bwkey varchar(12) NULL, -- 工厂
	lgort varchar(12) NULL, -- 库存地点
	btgew numeric(15,3) NULL, -- 总重量
	volum numeric(15,3) NULL, -- 体积
	product_type varchar(32) NULL, -- 产品类型
	source_table_name varchar(100) NULL, -- 该表是ERP中不同表的合并，标记源表名称
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
COMMENT ON TABLE dw.tf_sd_erp_customer_invoice IS 'IE：发票项目信息';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.mandt IS '客户端';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zfphm IS 'HF：发票号码';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zfplx IS 'HF：发票类型';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zversion IS 'HF：版本号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zitem IS 'HF：项目号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.matnr IS '物料号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.charg IS '批号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.kdmat IS '客户所用的物料编号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.menge IS '数量';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.meins IS '基本计量单位';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.lfimg IS '实际已交货量（按销售单位）';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.vrkme IS '简称';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zntpr IS 'HF：单价4位小数';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.netwr IS 'HF：金额';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.waers IS '货币码';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.ntgew IS '净重量';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.gewei IS 'HF：重量单位';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.vgbel IS '参考单据的单据编号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.vgpos IS '参考项目的项目号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.maktx IS '物料描述（短文本）';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zggxh IS '规格型号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.ernam IS '创建对象的人员名称';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.erdat IS '记录的创建日期';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.eruze IS '时间';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.aenam IS '最后更改人';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.aedat IS '更改订单主文件日期';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.aeuze IS '时间';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.gross IS '毛重量';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.grwei IS 'HF：重量单位';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zspmc IS '商品名称';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zywpm IS '英文品名';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.bwkey IS '工厂';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.lgort IS '库存地点';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.btgew IS '总重量';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.volum IS '体积';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.product_type IS '产品类型';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.source_table_name IS '该表是ERP中不同表的合并，标记源表名称';

-- Permissions

ALTER TABLE dw.tf_sd_erp_customer_invoice OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_customer_invoice TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_customer_invoice TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_customer_invoice TO gr_uqry_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_customer_invoice TO "109752";
