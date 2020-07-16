-- Drop table

-- DROP TABLE dw.tf_pur_purchase_order_info;

CREATE TABLE dw.tf_pur_purchase_order_info (
	client varchar(9) NULL, -- 客户端
	purchase_document_type varchar(12) NULL, -- 采购类别
	purchase_document_number varchar(30) NULL, -- 采购凭证
	vendor_wid int8 NULL, -- 供应商编码代理键
	purchase_document_date_wid int8 NULL, -- 凭证日期代理键
	payment_method varchar(12) NULL, -- 付款条件
	cash_prompt_payment_discount_days numeric(3) NULL, -- 付款
	incoterms_part1 varchar(9) NULL, -- 国际付款条件
	currency_key varchar(15) NULL, -- 货币
	exchange_rate numeric(9,5) NULL, -- 汇率
	salesperson varchar(90) NULL, -- 销售员
	vendor_telephone_number varchar(48) NULL, -- 电话
	languages varchar(3) NULL, -- 语言
	collective_number varchar(30) NULL, -- 汇总号
	purchasing_organization varchar(12) NULL, -- 采购组织
	purchasing_group varchar(9) NULL, -- 采购组
	company_wid int8 NULL, -- 公司代码代理键
	contract_code varchar(90) NULL, -- 合同号
	business_type varchar(60) NULL, -- 业务类型
	return_settlement_method varchar(3) NULL, -- 退货结算方式
	exchange_return_trade_terms varchar(105) NULL, -- 退换货返回贸易
	import_invoice_no varchar(90) NULL, -- 进口发票号
	delivery_method varchar(675) NULL, -- 交货方式
	place_of_delivery varchar(675) NULL, -- 发货地
	package_and_transport varchar(675) NULL, -- 包装及运输方式
	delivery_cycle varchar(675) NULL, -- 交货周期
	warranty_terms varchar(675) NULL, -- 质保条款
	other_instructions varchar(675) NULL, -- 其他说明
	defects_liability_period varchar(30) NULL, -- 保质期
	fac varchar(15) NULL, -- fac
	release_group varchar(6) NULL, -- 审批组
	release_strategy varchar(6) NULL, -- 审批策略
	release_indicator_purchasing_document varchar(3) NULL, -- 发布标识
	item_number_of_purchasing_document varchar(15) NULL, -- 项目
	line_company_wid int8 NULL, -- 公司码代理键
	account_assignment_category varchar(3) NULL, -- 科目分配类别
	subitem_category varchar(3) NULL, -- 项目类型
	item_wid int8 NULL, -- 物料代理键
	short_text varchar(120) NULL, -- 短文本
	purchase_order_quantity numeric(13,3) NULL, -- 采购订单数量
	purchase_order_unit_of_measure varchar(9) NULL, -- oun订单单位
	planned_delivery_time_in_days numeric(3) NULL, -- 按天的计划交货时间
	net_price_in_document_currency numeric(11,2) NULL, -- 净价
	currency varchar(15) NULL, -- 货币
	price_unit numeric(5) NULL, -- 价格单位
	order_price_unit_purchasing varchar(9) NULL, -- oun订单价格单位
	material_group varchar(27) NULL, -- 物料组
	factory_wid int8 NULL, -- 工厂代理键
	storage_location varchar(12) NULL, -- 库存地点
	requirement_tracking_number varchar(30) NULL, -- 请求号码
	requester varchar(36) NULL, -- 申请者
	material_number varchar(54) NULL,
	material_wid int8 NULL, -- im物料代理键
	purchasing_info_record varchar(30) NULL, -- 信息记录
	returns_item varchar(3) NULL, -- 退回项目
	purchase_requisition_number varchar(30) NULL, -- 采购申请
	purchase_requisition_item_num varchar(15) NULL, -- 请求项目
	purchase_agreement varchar(30) NULL, -- 框架协议
	principal_purchase_agreement_lin_item varchar(15) NULL, -- 合同项目
	rfq_number varchar(30) NULL, -- 报价请求
	item_number_of_rfq varchar(15) NULL, -- 项目
	purchase_document_high_level varchar(15) NULL, -- 高级项目
	purchase_document_sub_category varchar(3) NULL, -- 子项目类别
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
COMMENT ON TABLE dw.tf_pur_purchase_order_info IS '事实表-采购订单';

-- Column comments

COMMENT ON COLUMN dw.tf_pur_purchase_order_info.client IS '客户端';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_type IS '采购类别';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_number IS '采购凭证';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.vendor_wid IS '供应商编码代理键';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_date_wid IS '凭证日期代理键';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.payment_method IS '付款条件';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.cash_prompt_payment_discount_days IS '付款';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.incoterms_part1 IS '国际付款条件';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.currency_key IS '货币';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.exchange_rate IS '汇率';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.salesperson IS '销售员';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.vendor_telephone_number IS '电话';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.languages IS '语言';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.collective_number IS '汇总号';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchasing_organization IS '采购组织';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchasing_group IS '采购组';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.company_wid IS '公司代码代理键';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.contract_code IS '合同号';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.business_type IS '业务类型';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.return_settlement_method IS '退货结算方式';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.exchange_return_trade_terms IS '退换货返回贸易';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.import_invoice_no IS '进口发票号';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.delivery_method IS '交货方式';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.place_of_delivery IS '发货地';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.package_and_transport IS '包装及运输方式';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.delivery_cycle IS '交货周期';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.warranty_terms IS '质保条款';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.other_instructions IS '其他说明';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.defects_liability_period IS '保质期';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.fac IS 'fac';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.release_group IS '审批组';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.release_strategy IS '审批策略';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.release_indicator_purchasing_document IS '发布标识';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.item_number_of_purchasing_document IS '项目';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.line_company_wid IS '公司码代理键';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.account_assignment_category IS '科目分配类别';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.subitem_category IS '项目类型';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.item_wid IS '物料代理键';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.short_text IS '短文本';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_order_quantity IS '采购订单数量';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_order_unit_of_measure IS 'oun订单单位';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.planned_delivery_time_in_days IS '按天的计划交货时间';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.net_price_in_document_currency IS '净价';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.currency IS '货币';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.price_unit IS '价格单位';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.order_price_unit_purchasing IS 'oun订单价格单位';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.material_group IS '物料组';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.storage_location IS '库存地点';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.requirement_tracking_number IS '请求号码';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.requester IS '申请者';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.material_wid IS 'im物料代理键';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchasing_info_record IS '信息记录';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.returns_item IS '退回项目';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_requisition_number IS '采购申请';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_requisition_item_num IS '请求项目';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_agreement IS '框架协议';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.principal_purchase_agreement_lin_item IS '合同项目';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.rfq_number IS '报价请求';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.item_number_of_rfq IS '项目';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_high_level IS '高级项目';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_sub_category IS '子项目类别';

-- Permissions

ALTER TABLE dw.tf_pur_purchase_order_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pur_purchase_order_info TO gr_uqry_data;
