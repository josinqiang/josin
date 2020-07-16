-- Drop table

-- DROP TABLE dw.tf_sd_forminvoice;

CREATE TABLE dw.tf_sd_forminvoice (
	client_code varchar(9) NULL, -- 客户端编码
	invoice_number varchar(30) NULL, -- 发票号码
	invoice_type_code varchar(3) NULL, -- 发票类型编码
	invoice_type_name text NULL, -- 发票类型名称
	zseller1 varchar(147) NULL, -- seller
	zseller2 varchar(147) NULL, -- seller
	zseller3 varchar(147) NULL, -- seller
	zseller4 varchar(147) NULL, -- seller
	zseller5 varchar(147) NULL, -- seller
	zconsig1 varchar(129) NULL, -- consignee
	zconsig2 varchar(129) NULL, -- consignee
	zconsig3 varchar(129) NULL, -- consignee
	zconsig4 varchar(129) NULL, -- consignee
	zconsig5 varchar(129) NULL, -- consignee
	zconsig6 varchar(129) NULL, -- consignee
	zconsig7 varchar(129) NULL, -- consignee
	zconsig8 varchar(129) NULL, -- consignee
	znotify1 varchar(129) NULL, -- notify party
	znotify2 varchar(129) NULL, -- notify party
	znotify3 varchar(129) NULL, -- notify party
	znotify4 varchar(129) NULL, -- notify party
	znotify5 varchar(129) NULL, -- notify party
	znotify6 varchar(129) NULL, -- notify party
	znotify7 varchar(129) NULL, -- notify party
	znotify8 varchar(129) NULL, -- notify party
	zfrom varchar(90) NULL, -- from city
	zto varchar(90) NULL, -- to city
	zconpo varchar(90) NULL, -- no & date p/o
	po_number_refer text NULL, -- PO号参考
	zbuyer1 varchar(129) NULL, -- buyer
	zbuyer2 varchar(129) NULL, -- buyer
	zbuyer3 varchar(129) NULL, -- buyer
	zbuyer4 varchar(129) NULL, -- buyer
	zbuyer5 varchar(129) NULL, -- buyer
	zbuyer6 varchar(129) NULL, -- buyer
	zrefer1 varchar(96) NULL, -- other references
	zrefer2 varchar(96) NULL, -- other references
	zrefer3 varchar(96) NULL, -- other references
	zrefer4 varchar(96) NULL, -- other references
	zrefer5 varchar(96) NULL, -- other references
	zrefer6 varchar(96) NULL, -- other references
	zrefer7 varchar(96) NULL, -- other references
	zterms1 varchar(90) NULL, -- terms
	zterms2 varchar(90) NULL, -- terms
	zterms3 varchar(90) NULL, -- v
	zship1 varchar(60) NULL, -- shipping marks
	zship2 varchar(60) NULL, -- shipping marks
	zship3 varchar(60) NULL, -- shipping marks
	zship4 varchar(60) NULL, -- shipping marks
	item_name_cn varchar(120) NULL, -- 中文物料描述
	item_name_en varchar(120) NULL, -- 英文物料描述
	from_currency varchar(15) NULL, -- 货币·
	total_weight numeric(15,3) NULL, -- 总重量
	net_weight numeric(15,3) NULL, -- 净重量
	weight_unit varchar(9) NULL, -- 重量单位
	volum numeric(15,3) NULL, -- 业务量
	volum_unit varchar(9) NULL, -- 体积单位
	invoice_create_by varchar(36) NULL, -- 创建者
	invoice_create_dt_wid int8 NULL, -- 创建日期代理键
	invoice_update_by varchar(36) NULL, -- 更改者
	invoice_update_dt varchar(24) NULL, -- 更改日期
	zversion varchar(9) NULL, -- 版本号
	total_number numeric(13,3) NULL, -- 总件数
	number_unit varchar(12) NULL, -- 总件数单位
	invoice_line_number varchar(18) NULL, -- 项目信息行号
	item_wid int8 NULL, -- 物料编码代理键
	item_name varchar(120) NULL, -- 物料名称
	customer_item_code varchar(105) NULL, -- 客户使用物料编码
	batch_number varchar(30) NULL, -- 批次号
	actual_delivery_quantity numeric(13,3) NULL, -- 实际交货量
	price_code varchar(60) NULL, -- 单价编码
	price numeric(13,4) NULL, -- 单价
	amount numeric(15,2) NULL, -- 金额
	line_from_currency varchar(15) NULL, -- 行项目使用货币
	order_header_num_refer varchar(30) NULL, -- 销售订单头号参考
	order_line_num_refer varchar(18) NULL, -- 销售订单行号参考
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
COMMENT ON TABLE dw.tf_sd_forminvoice IS '形式发票';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_forminvoice.client_code IS '客户端编码';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_number IS '发票号码';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_type_code IS '发票类型编码';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_type_name IS '发票类型名称';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller1 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller2 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller3 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller4 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller5 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig1 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig2 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig3 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig4 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig5 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig6 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig7 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig8 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify1 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify2 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify3 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify4 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify5 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify6 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify7 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify8 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zfrom IS 'from city';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zto IS 'to city';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconpo IS 'no & date p/o';
COMMENT ON COLUMN dw.tf_sd_forminvoice.po_number_refer IS 'PO号参考';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer1 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer2 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer3 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer4 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer5 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer6 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer1 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer2 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer3 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer4 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer5 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer6 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer7 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zterms1 IS 'terms';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zterms2 IS 'terms';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zterms3 IS 'v';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship1 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship2 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship3 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship4 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_name_cn IS '中文物料描述';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_name_en IS '英文物料描述';
COMMENT ON COLUMN dw.tf_sd_forminvoice.from_currency IS '货币·';
COMMENT ON COLUMN dw.tf_sd_forminvoice.total_weight IS '总重量';
COMMENT ON COLUMN dw.tf_sd_forminvoice.net_weight IS '净重量';
COMMENT ON COLUMN dw.tf_sd_forminvoice.weight_unit IS '重量单位';
COMMENT ON COLUMN dw.tf_sd_forminvoice.volum IS '业务量';
COMMENT ON COLUMN dw.tf_sd_forminvoice.volum_unit IS '体积单位';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_create_by IS '创建者';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_create_dt_wid IS '创建日期代理键';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_update_by IS '更改者';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_update_dt IS '更改日期';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zversion IS '版本号';
COMMENT ON COLUMN dw.tf_sd_forminvoice.total_number IS '总件数';
COMMENT ON COLUMN dw.tf_sd_forminvoice.number_unit IS '总件数单位';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_line_number IS '项目信息行号';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_wid IS '物料编码代理键';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_name IS '物料名称';
COMMENT ON COLUMN dw.tf_sd_forminvoice.customer_item_code IS '客户使用物料编码';
COMMENT ON COLUMN dw.tf_sd_forminvoice.batch_number IS '批次号';
COMMENT ON COLUMN dw.tf_sd_forminvoice.actual_delivery_quantity IS '实际交货量';
COMMENT ON COLUMN dw.tf_sd_forminvoice.price_code IS '单价编码';
COMMENT ON COLUMN dw.tf_sd_forminvoice.price IS '单价';
COMMENT ON COLUMN dw.tf_sd_forminvoice.amount IS '金额';
COMMENT ON COLUMN dw.tf_sd_forminvoice.line_from_currency IS '行项目使用货币';
COMMENT ON COLUMN dw.tf_sd_forminvoice.order_header_num_refer IS '销售订单头号参考';
COMMENT ON COLUMN dw.tf_sd_forminvoice.order_line_num_refer IS '销售订单行号参考';

-- Permissions

ALTER TABLE dw.tf_sd_forminvoice OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_forminvoice TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_forminvoice TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_forminvoice TO gr_uqry_data;
