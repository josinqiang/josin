-- Drop table

-- DROP TABLE dw.tf_sd_salesorder;

CREATE TABLE dw.tf_sd_salesorder (
	mandt varchar(9) NULL, -- 客户端
	header_sales_catg varchar(12) NULL, -- 头销售项目类别
	header_sales_catg_name varchar(60) NULL, -- 头销售项目类别名称
	so_header_code varchar(30) NULL, -- 销售订单头code
	sold_to_customer_wid int8 NULL, -- 售达方客户代理键
	ship_to_customer_code varchar(30) NULL, -- 运达方code
	po_number varchar(60) NULL, -- 采购订单号
	po_date varchar(24) NULL, -- 采购订单日期
	request_delivery_date varchar(24) NULL, -- 请求交货日期
	delivery_factory_code varchar(12) NULL, -- 交货工厂
	delivery_frozen varchar(6) NULL, -- 交货冻结
	invoice_frozen varchar(6) NULL, -- 出具发票冻结
	pricing_date varchar(24) NULL, -- 定价日期
	pay_method_code varchar(12) NULL, -- 付款条件
	pay_method_name varchar(90) NULL, -- 付款条件名称
	inco1 varchar(9) NULL, -- 国际贸易条件1
	inco2 varchar(84) NULL, -- 国际贸易条件2
	pay_reason_code varchar(9) NULL, -- 付款原因
	pay_reason_name varchar(120) NULL, -- 付款原因名称
	so_line_code varchar(18) NULL, -- 销售订单行code
	item_wid int8 NULL, -- 物料号代理键
	po_line_quantity numeric(15,3) NULL, -- 订单行销售数量
	po_line_price varchar(48) NULL, -- 订单行销售单价
	po_line_net_price numeric(11,2) NULL, -- 订单行销售净价
	po_line_net_aount numeric(15,2) NULL, -- 订单行销售净值
	from_currency varchar(15) NULL, -- 原位币
	to_currency varchar(15) NULL, -- 本位币
	currency_rate numeric(9,5) NULL, -- 汇率
	item_short_desc varchar(120) NULL, -- 项目短描述
	customer_item_num varchar(105) NULL, -- 客户物料编号
	line_sales_catg varchar(12) NULL, -- 行销售项目类别
	line_sales_catg_name varchar(60) NULL, -- 行销售项目类别名称
	factory_wid int8 NULL, -- 工厂编码代理键
	po_detail_num varchar(105) NULL, -- PO明细
	sold_to_area_code varchar(18) NULL, -- 销售区域编码
	sold_to_area_name varchar(60) NULL, -- 销售区域名称
	invoice_date_wid int8 NULL, -- 出具发票日期代理键
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
COMMENT ON TABLE dw.tf_sd_salesorder IS '事实表-销售订单  ';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_salesorder.mandt IS '客户端';
COMMENT ON COLUMN dw.tf_sd_salesorder.header_sales_catg IS '头销售项目类别';
COMMENT ON COLUMN dw.tf_sd_salesorder.header_sales_catg_name IS '头销售项目类别名称';
COMMENT ON COLUMN dw.tf_sd_salesorder.so_header_code IS '销售订单头code';
COMMENT ON COLUMN dw.tf_sd_salesorder.sold_to_customer_wid IS '售达方客户代理键';
COMMENT ON COLUMN dw.tf_sd_salesorder.ship_to_customer_code IS '运达方code';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_number IS '采购订单号';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_date IS '采购订单日期';
COMMENT ON COLUMN dw.tf_sd_salesorder.request_delivery_date IS '请求交货日期';
COMMENT ON COLUMN dw.tf_sd_salesorder.delivery_factory_code IS '交货工厂';
COMMENT ON COLUMN dw.tf_sd_salesorder.delivery_frozen IS '交货冻结';
COMMENT ON COLUMN dw.tf_sd_salesorder.invoice_frozen IS '出具发票冻结';
COMMENT ON COLUMN dw.tf_sd_salesorder.pricing_date IS '定价日期';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_method_code IS '付款条件';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_method_name IS '付款条件名称';
COMMENT ON COLUMN dw.tf_sd_salesorder.inco1 IS '国际贸易条件1';
COMMENT ON COLUMN dw.tf_sd_salesorder.inco2 IS '国际贸易条件2';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_reason_code IS '付款原因';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_reason_name IS '付款原因名称';
COMMENT ON COLUMN dw.tf_sd_salesorder.so_line_code IS '销售订单行code';
COMMENT ON COLUMN dw.tf_sd_salesorder.item_wid IS '物料号代理键';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_quantity IS '订单行销售数量';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_price IS '订单行销售单价';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_net_price IS '订单行销售净价';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_net_aount IS '订单行销售净值';
COMMENT ON COLUMN dw.tf_sd_salesorder.from_currency IS '原位币';
COMMENT ON COLUMN dw.tf_sd_salesorder.to_currency IS '本位币';
COMMENT ON COLUMN dw.tf_sd_salesorder.currency_rate IS '汇率';
COMMENT ON COLUMN dw.tf_sd_salesorder.item_short_desc IS '项目短描述';
COMMENT ON COLUMN dw.tf_sd_salesorder.customer_item_num IS '客户物料编号';
COMMENT ON COLUMN dw.tf_sd_salesorder.line_sales_catg IS '行销售项目类别';
COMMENT ON COLUMN dw.tf_sd_salesorder.line_sales_catg_name IS '行销售项目类别名称';
COMMENT ON COLUMN dw.tf_sd_salesorder.factory_wid IS '工厂编码代理键';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_detail_num IS 'PO明细';
COMMENT ON COLUMN dw.tf_sd_salesorder.sold_to_area_code IS '销售区域编码';
COMMENT ON COLUMN dw.tf_sd_salesorder.sold_to_area_name IS '销售区域名称';
COMMENT ON COLUMN dw.tf_sd_salesorder.invoice_date_wid IS '出具发票日期代理键';

-- Permissions

ALTER TABLE dw.tf_sd_salesorder OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_salesorder TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_salesorder TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_salesorder TO gr_uqry_data;
