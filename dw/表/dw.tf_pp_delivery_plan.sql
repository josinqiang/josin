-- Drop table

-- DROP TABLE dw.tf_pp_delivery_plan;

CREATE TABLE dw.tf_pp_delivery_plan (
	client_code varchar(9) NULL, -- 客户端
	guid varchar(200) NULL, -- 主键
	object_id varchar(30) NULL, -- 单号
	buzei varchar(36) NULL, -- 序号
	verid varchar(42) NULL, -- mrp版本
	factory_wid int8 NULL, -- 工厂代理键
	item_wid int8 NULL, -- 物料号代理键
	co_type varchar(6) NULL, -- 协同事项
	created_by varchar(36) NULL, -- 创建对象的人员名称
	created_at varchar(24) NULL, -- 记录建立日期
	"version" numeric(10) NULL, -- 版本号
	version_desc varchar(75) NULL, -- 版本描述
	status varchar(6) NULL, -- 状态
	submit_time varchar(42) NULL, -- 发布时间
	re_time varchar(42) NULL, -- 确认时间
	changed_by varchar(36) NULL, -- 更改对象用户的名称
	company_wid int8 NULL, -- 公司代码代理键
	vendor_wid int8 NULL, -- 供应商编码代理键
	vendor_name varchar(105) NULL, -- 供应商名称
	vendor_contact_id varchar(75) NULL, -- 供应商联系人
	ekgrp varchar(9) NULL, -- 采购组
	eknam varchar(54) NULL, -- 采购组的描述
	purchaser varchar(45) NULL, -- 采购担当
	sys_from varchar(30) NULL, -- 来源系统
	text1 varchar(765) NULL, -- 采购备注
	text2 varchar(765) NULL, -- 供应商备注
	maktx varchar(120) NULL, -- 物料描述
	matkl varchar(27) NULL, -- 物料组
	wgbez varchar(60) NULL, -- 物料组描述
	bstme varchar(9) NULL, -- 采购单位
	lgort varchar(12) NULL, -- 库存地点
	menge_bs numeric(13,3) NULL, -- open po保税
	menge_ks numeric(13,3) NULL, -- open po课税
	ven_stock numeric NULL, -- 数量
	menge_sum numeric NULL, -- 总数量
	menge_date_wid int8 NULL, -- 交货计划日代理键
	menge_amount varchar NULL, -- 交货计划数量
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
COMMENT ON TABLE dw.tf_pp_delivery_plan IS '交付计划';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_delivery_plan.client_code IS '客户端';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.guid IS '主键';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.object_id IS '单号';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.buzei IS '序号';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.verid IS 'mrp版本';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.item_wid IS '物料号代理键';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.co_type IS '协同事项';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.created_by IS '创建对象的人员名称';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.created_at IS '记录建立日期';
COMMENT ON COLUMN dw.tf_pp_delivery_plan."version" IS '版本号';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.version_desc IS '版本描述';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.status IS '状态';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.submit_time IS '发布时间';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.re_time IS '确认时间';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.changed_by IS '更改对象用户的名称';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.company_wid IS '公司代码代理键';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.vendor_wid IS '供应商编码代理键';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.vendor_name IS '供应商名称';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.vendor_contact_id IS '供应商联系人';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.ekgrp IS '采购组';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.eknam IS '采购组的描述';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.purchaser IS '采购担当';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.sys_from IS '来源系统';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.text1 IS '采购备注';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.text2 IS '供应商备注';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.maktx IS '物料描述';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.matkl IS '物料组';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.wgbez IS '物料组描述';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.bstme IS '采购单位';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.lgort IS '库存地点';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_bs IS 'open po保税';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_ks IS 'open po课税';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.ven_stock IS '数量';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_sum IS '总数量';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_date_wid IS '交货计划日代理键';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_amount IS '交货计划数量';

-- Permissions

ALTER TABLE dw.tf_pp_delivery_plan OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_delivery_plan TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_delivery_plan TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_delivery_plan TO gr_uqry_data;
