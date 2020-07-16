-- Drop table

-- DROP TABLE dw.tf_sd_erp_customer_invoice_head;

CREATE TABLE dw.tf_sd_erp_customer_invoice_head (
	mandt varchar(9) NULL, -- 客户端
	zfphm varchar(30) NULL, -- HF：发票号码
	zfplx varchar(3) NULL, -- HF：发票类型
	zversion varchar(9) NULL, -- HF：版本号
	werks varchar(12) NULL, -- 工厂
	zseller1 varchar(147) NULL, -- HF：Seller
	zseller2 varchar(147) NULL, -- HF：Seller
	zseller3 varchar(147) NULL, -- HF：Seller
	zseller4 varchar(147) NULL, -- HF：Seller
	zseller5 varchar(147) NULL, -- HF：Seller
	zconsig1 varchar(129) NULL, -- HF：Consignee
	zconsig2 varchar(129) NULL, -- HF：Consignee
	zconsig3 varchar(129) NULL, -- HF：Consignee
	zconsig4 varchar(129) NULL, -- HF：Consignee
	zconsig5 varchar(129) NULL, -- HF：Consignee
	zconsig6 varchar(129) NULL, -- HF：Consignee
	zconsig7 varchar(129) NULL, -- HF：Consignee
	zconsig8 varchar(129) NULL, -- HF：Consignee
	znotify1 varchar(129) NULL, -- HF：Notify Party
	znotify2 varchar(129) NULL, -- HF：Notify Party
	znotify3 varchar(129) NULL, -- HF：Notify Party
	znotify4 varchar(129) NULL, -- HF：Notify Party
	znotify5 varchar(129) NULL, -- HF：Notify Party
	znotify6 varchar(129) NULL, -- HF：Notify Party
	znotify7 varchar(129) NULL, -- HF：Notify Party
	znotify8 varchar(129) NULL, -- HF：Notify Party
	zfrom varchar(90) NULL, -- HF：From City
	zto varchar(90) NULL, -- HF：To City
	zinvoice varchar(90) NULL, -- HF：No&Date Invoice
	zconpo varchar(90) NULL, -- HF：No & Date P/O
	zbuyer1 varchar(129) NULL, -- HF：Buyer
	zbuyer2 varchar(129) NULL, -- HF：Buyer
	zbuyer3 varchar(129) NULL, -- HF：Buyer
	zbuyer4 varchar(129) NULL, -- HF：Buyer
	zbuyer5 varchar(129) NULL, -- HF：Buyer
	zbuyer6 varchar(129) NULL, -- HF：Buyer
	zrefer1 varchar(96) NULL, -- HF：Other References
	zrefer2 varchar(96) NULL, -- HF：Other References
	zrefer3 varchar(96) NULL, -- HF：Other References
	zrefer4 varchar(96) NULL, -- HF：Other References
	zrefer5 varchar(96) NULL, -- HF：Other References
	zrefer6 varchar(96) NULL, -- HF：Other References
	zrefer7 varchar(96) NULL, -- HF：Other References
	zterms1 varchar(90) NULL, -- HF：Terms of Delivery and Payment
	zterms2 varchar(90) NULL, -- HF：Terms of Delivery and Payment
	zterms3 varchar(90) NULL, -- HF：Terms of Delivery and Payment
	zship1 varchar(60) NULL, -- HF：Shipping Marks
	zship2 varchar(60) NULL, -- HF：Shipping Marks
	zship3 varchar(60) NULL, -- HF：Shipping Marks
	zship4 varchar(60) NULL, -- HF：Shipping Marks
	maktx_cn varchar(120) NULL, -- HF：中文物料描述
	maktx_en varchar(120) NULL, -- HF：英文物料描述
	waers varchar(15) NULL, -- 货币码
	btgew numeric(15,3) NULL, -- 总重量
	ntgew numeric(15,3) NULL, -- 净重量
	gewei varchar(9) NULL, -- HF：重量单位
	volum numeric(15,3) NULL, -- 业务量
	voleh varchar(9) NULL, -- HF：体积单位
	zstate varchar(3) NULL, -- HF：状态
	ernam varchar(36) NULL, -- 创建对象的人员名称
	erdat varchar(24) NULL, -- 记录的创建日期
	eruze varchar(18) NULL, -- 时间
	aenam varchar(36) NULL, -- 最后更改人
	aedat varchar(24) NULL, -- 更改订单主文件日期
	aeuze varchar(18) NULL, -- 时间
	text1 varchar(366) NULL,
	text2 varchar(366) NULL,
	text3 varchar(366) NULL,
	text4 varchar(366) NULL,
	text5 varchar(366) NULL,
	text6 varchar(366) NULL,
	text7 varchar(366) NULL,
	zmark1 varchar(72) NULL,
	zmark2 varchar(72) NULL,
	zzjs numeric(13,3) NULL, -- 总件数
	zzjsdw varchar(12) NULL, -- HF：总件数单位
	sign varchar(3) NULL,
	source_table_name varchar(100) NULL, -- ODS层表名称
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
COMMENT ON TABLE dw.tf_sd_erp_customer_invoice_head IS 'IE：发票抬头信息';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.mandt IS '客户端';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zfphm IS 'HF：发票号码';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zfplx IS 'HF：发票类型';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zversion IS 'HF：版本号';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.werks IS '工厂';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zseller1 IS 'HF：Seller';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zseller2 IS 'HF：Seller';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zseller3 IS 'HF：Seller';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zseller4 IS 'HF：Seller';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zseller5 IS 'HF：Seller';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig1 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig2 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig3 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig4 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig5 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig6 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig7 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconsig8 IS 'HF：Consignee';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify1 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify2 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify3 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify4 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify5 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify6 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify7 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.znotify8 IS 'HF：Notify Party';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zfrom IS 'HF：From City';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zto IS 'HF：To City';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zinvoice IS 'HF：No&Date Invoice';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zconpo IS 'HF：No & Date P/O';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zbuyer1 IS 'HF：Buyer';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zbuyer2 IS 'HF：Buyer';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zbuyer3 IS 'HF：Buyer';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zbuyer4 IS 'HF：Buyer';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zbuyer5 IS 'HF：Buyer';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zbuyer6 IS 'HF：Buyer';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zrefer1 IS 'HF：Other References';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zrefer2 IS 'HF：Other References';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zrefer3 IS 'HF：Other References';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zrefer4 IS 'HF：Other References';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zrefer5 IS 'HF：Other References';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zrefer6 IS 'HF：Other References';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zrefer7 IS 'HF：Other References';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zterms1 IS 'HF：Terms of Delivery and Payment';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zterms2 IS 'HF：Terms of Delivery and Payment';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zterms3 IS 'HF：Terms of Delivery and Payment';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zship1 IS 'HF：Shipping Marks';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zship2 IS 'HF：Shipping Marks';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zship3 IS 'HF：Shipping Marks';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zship4 IS 'HF：Shipping Marks';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.maktx_cn IS 'HF：中文物料描述';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.maktx_en IS 'HF：英文物料描述';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.waers IS '货币码';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.btgew IS '总重量';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.ntgew IS '净重量';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.gewei IS 'HF：重量单位';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.volum IS '业务量';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.voleh IS 'HF：体积单位';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zstate IS 'HF：状态';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.ernam IS '创建对象的人员名称';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.erdat IS '记录的创建日期';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.eruze IS '时间';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.aenam IS '最后更改人';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.aedat IS '更改订单主文件日期';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.aeuze IS '时间';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zzjs IS '总件数';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.zzjsdw IS 'HF：总件数单位';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice_head.source_table_name IS 'ODS层表名称';

-- Permissions

ALTER TABLE dw.tf_sd_erp_customer_invoice_head OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_customer_invoice_head TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_customer_invoice_head TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_customer_invoice_head TO gr_uqry_data;
