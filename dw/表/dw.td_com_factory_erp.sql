-- Drop table

-- DROP TABLE dw.td_com_factory_erp;

CREATE TABLE dw.td_com_factory_erp (
	row_wid int8 NULL,
	client varchar(9) NULL, -- 客户端
	factory_code varchar(12) NULL, -- 工厂编码
	factory_name varchar(90) NULL, -- 名称
	valuation_area varchar(12) NULL, -- 评估范围
	factory_customer_num varchar(30) NULL, -- 工厂的客户号
	factory_vendor_num varchar(30) NULL, -- 工厂供应商号码
	factory_calendar_code varchar(6) NULL, -- 工厂日历码
	factory_name2 varchar(90) NULL, -- 名称 2
	adress varchar(90) NULL, -- 住宅号及街道
	po_box varchar(30) NULL, -- 邮政信箱
	postal_code varchar(30) NULL, -- 邮政编码
	city varchar(75) NULL, -- 城市
	purchase_organization varchar(12) NULL, -- 采购组织
	sales_org_for_intercompany_billing varchar(12) NULL, -- 用于公司间出具发票的销售组织
	batch_status_manage_active_falg varchar(3) NULL, -- 标识: 批量状态管理激活
	plant_level_condition_flag varchar(3) NULL, -- 标识: 工厂级别的条件
	source_list_require_flag varchar(3) NULL, -- 标识: 源清单要求
	require_plan_active varchar(3) NULL, -- 激活需求计划
	country_code varchar(9) NULL, -- 国家代码
	region_code varchar(9) NULL, -- 地区 (州、省、县)
	county_code varchar(9) NULL, -- 县代码
	city_code varchar(12) NULL, -- 城市代码
	address varchar(30) NULL, -- 地址
	maintenance_planning_plant varchar(12) NULL, -- 维护计划工厂
	tax_jurisdiction varchar(45) NULL, -- 地区税务代码
	intercompany_billing_distribute_channel varchar(6) NULL, -- 公司内出具发票分销渠道
	intercompany_billing_division varchar(6) NULL, -- 为公司内部出具发票的产品组
	language_code varchar(3) NULL, -- 语言代码
	sop_plant varchar(3) NULL, -- sop工厂
	variance_code varchar(18) NULL, -- 差异码
	batch_status_manage_active_flag varchar(3) NULL, -- 标识: 批量状态管理激活
	factory_category varchar(3) NULL, -- 工厂种类
	sales_district varchar(18) NULL, -- 销售地区
	supply_region_supplied varchar(30) NULL, -- 供应地区(被供应的地区)
	tax_flag_plant_purchase varchar(3) NULL, -- 税收标识：工厂（采购）
	take_regular_vendor_into_account varchar(3) NULL, -- 将常规供应商考虑进去
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
COMMENT ON TABLE dw.td_com_factory_erp IS '维度表-工厂,数据来源于ERP系统';

-- Column comments

COMMENT ON COLUMN dw.td_com_factory_erp.client IS '客户端';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_code IS '工厂编码';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_name IS '名称';
COMMENT ON COLUMN dw.td_com_factory_erp.valuation_area IS '评估范围';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_customer_num IS '工厂的客户号';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_vendor_num IS '工厂供应商号码';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_calendar_code IS '工厂日历码';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_name2 IS '名称 2';
COMMENT ON COLUMN dw.td_com_factory_erp.adress IS '住宅号及街道';
COMMENT ON COLUMN dw.td_com_factory_erp.po_box IS '邮政信箱';
COMMENT ON COLUMN dw.td_com_factory_erp.postal_code IS '邮政编码';
COMMENT ON COLUMN dw.td_com_factory_erp.city IS '城市';
COMMENT ON COLUMN dw.td_com_factory_erp.purchase_organization IS '采购组织';
COMMENT ON COLUMN dw.td_com_factory_erp.sales_org_for_intercompany_billing IS '用于公司间出具发票的销售组织';
COMMENT ON COLUMN dw.td_com_factory_erp.batch_status_manage_active_falg IS '标识: 批量状态管理激活';
COMMENT ON COLUMN dw.td_com_factory_erp.plant_level_condition_flag IS '标识: 工厂级别的条件';
COMMENT ON COLUMN dw.td_com_factory_erp.source_list_require_flag IS '标识: 源清单要求';
COMMENT ON COLUMN dw.td_com_factory_erp.require_plan_active IS '激活需求计划';
COMMENT ON COLUMN dw.td_com_factory_erp.country_code IS '国家代码';
COMMENT ON COLUMN dw.td_com_factory_erp.region_code IS '地区 (州、省、县)';
COMMENT ON COLUMN dw.td_com_factory_erp.county_code IS '县代码';
COMMENT ON COLUMN dw.td_com_factory_erp.city_code IS '城市代码';
COMMENT ON COLUMN dw.td_com_factory_erp.address IS '地址';
COMMENT ON COLUMN dw.td_com_factory_erp.maintenance_planning_plant IS '维护计划工厂';
COMMENT ON COLUMN dw.td_com_factory_erp.tax_jurisdiction IS '地区税务代码';
COMMENT ON COLUMN dw.td_com_factory_erp.intercompany_billing_distribute_channel IS '公司内出具发票分销渠道';
COMMENT ON COLUMN dw.td_com_factory_erp.intercompany_billing_division IS '为公司内部出具发票的产品组';
COMMENT ON COLUMN dw.td_com_factory_erp.language_code IS '语言代码';
COMMENT ON COLUMN dw.td_com_factory_erp.sop_plant IS 'sop工厂';
COMMENT ON COLUMN dw.td_com_factory_erp.variance_code IS '差异码';
COMMENT ON COLUMN dw.td_com_factory_erp.batch_status_manage_active_flag IS '标识: 批量状态管理激活';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_category IS '工厂种类';
COMMENT ON COLUMN dw.td_com_factory_erp.sales_district IS '销售地区';
COMMENT ON COLUMN dw.td_com_factory_erp.supply_region_supplied IS '供应地区(被供应的地区)';
COMMENT ON COLUMN dw.td_com_factory_erp.tax_flag_plant_purchase IS '税收标识：工厂（采购）';
COMMENT ON COLUMN dw.td_com_factory_erp.take_regular_vendor_into_account IS '将常规供应商考虑进去';

-- Permissions

ALTER TABLE dw.td_com_factory_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_factory_erp TO gr_uqry_data;
