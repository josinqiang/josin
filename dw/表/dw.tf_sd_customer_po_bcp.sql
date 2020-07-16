-- Drop table

-- DROP TABLE dw.tf_sd_customer_po_bcp;

CREATE TABLE dw.tf_sd_customer_po_bcp (
	order_id numeric(19) NULL, -- 采购订单id
	order_no varchar(150) NULL, -- 采购订单编号
	cust_order_no varchar(150) NULL, -- 客户方采购订单号
	order_type_code numeric(10) NULL, -- 状态编码
	order_type_name text NULL, -- 状态名称
	customer_wid int8 NULL, -- 客户公司id代理键
	customer_name varchar(300) NULL, -- 客户公司名称
	company_address varchar(300) NULL, -- 客户公司地址
	purchase_id numeric(19) NULL, -- 客户采购id
	purchase_name varchar(300) NULL, -- 客户采购姓名
	purchase_account varchar(300) NULL, -- 客户采购账号
	purchase_tel varchar(150) NULL, -- 客户采购电话
	supplier varchar(150) NULL, -- 供货商
	supplier_name varchar(300) NULL, -- 供货商名称
	supplier_tel varchar(150) NULL, -- 供应商电话
	supplier_address varchar(300) NULL, -- 供应商地址
	sbu varchar(150) NULL, -- 产品类别
	sale_id numeric(19) NULL, -- 销售ID
	sale_name varchar(300) NULL, -- 销售姓名
	sale_account varchar(300) NULL, -- 销售账号
	delivery_location varchar(150) NULL, -- 交货地点
	delivery_dt_wid int8 NULL, -- 交货时间（最迟交货时间）代理键
	delivery_type varchar(150) NULL, -- 交货方式
	pay_term varchar(765) NULL, -- 付款条款
	pay_term_reason varchar(765) NULL, -- 付款条款原因
	pay_term_changed_flag_code numeric(19) NULL, -- 附加条款是否变化编码
	pay_term_changed_flag_name text NULL, -- 附加条款是否变化
	append_term varchar(765) NULL, -- 附加条款
	is_tax_code numeric(19) NULL, -- 是否含税编码
	is_tax_name text NULL, -- 是否含税
	currency varchar(30) NULL, -- 币种
	total_price numeric(14,2) NULL, -- 总价
	order_status_code numeric(10) NULL, -- 订单状态编码
	order_status_name text NULL, -- 订单状态
	single_sign_dt timestamp NULL, -- 单签时间
	double_sign_dt timestamp NULL, -- 双签时间
	cancle_dt timestamp NULL, -- 订单取消时间
	create_dt timestamp NULL, -- 订单创建时间
	record varchar(3000) NULL, -- 记录
	file_name varchar(1500) NULL, -- ftp文件名称
	qt_no varchar(300) NULL, -- QT号
	unpaid_price numeric(14,2) NULL, -- 未付金额
	delivery_city varchar(765) NULL, -- 交货城市/港口
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
COMMENT ON TABLE dw.tf_sd_customer_po_bcp IS '客户PO';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_id IS '采购订单id';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_no IS '采购订单编号';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.cust_order_no IS '客户方采购订单号';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_type_code IS '状态编码';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_type_name IS '状态名称';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.customer_wid IS '客户公司id代理键';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.customer_name IS '客户公司名称';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.company_address IS '客户公司地址';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_id IS '客户采购id';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_name IS '客户采购姓名';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_account IS '客户采购账号';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_tel IS '客户采购电话';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier IS '供货商';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier_name IS '供货商名称';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier_tel IS '供应商电话';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier_address IS '供应商地址';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sbu IS '产品类别';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sale_id IS '销售ID';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sale_name IS '销售姓名';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sale_account IS '销售账号';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_location IS '交货地点';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_dt_wid IS '交货时间（最迟交货时间）代理键';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_type IS '交货方式';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term IS '付款条款';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term_reason IS '付款条款原因';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term_changed_flag_code IS '附加条款是否变化编码';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term_changed_flag_name IS '附加条款是否变化';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.append_term IS '附加条款';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.is_tax_code IS '是否含税编码';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.is_tax_name IS '是否含税';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.currency IS '币种';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.total_price IS '总价';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_status_code IS '订单状态编码';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_status_name IS '订单状态';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.single_sign_dt IS '单签时间';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.double_sign_dt IS '双签时间';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.cancle_dt IS '订单取消时间';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.create_dt IS '订单创建时间';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.record IS '记录';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.file_name IS 'ftp文件名称';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.qt_no IS 'QT号';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.unpaid_price IS '未付金额';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_city IS '交货城市/港口';

-- Permissions

ALTER TABLE dw.tf_sd_customer_po_bcp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_customer_po_bcp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_customer_po_bcp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_customer_po_bcp TO gr_uqry_data;
