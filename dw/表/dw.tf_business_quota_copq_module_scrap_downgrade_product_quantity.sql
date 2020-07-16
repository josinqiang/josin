-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity;

CREATE TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity (
	id numeric(19) NULL, -- 主键
	subject varchar(510) NULL, -- 科目
	company varchar(510) NULL, -- 公司
	"year" varchar(510) NULL, -- 年
	"month" varchar(510) NULL, -- 月
	fgcode varchar(510) NULL, -- FGCode
	ng_name varchar(510) NULL, -- 不良名称
	subject_type varchar(510) NULL, -- 类型
	loss_level varchar(510) NULL, -- 等级
	num numeric(10) NULL, -- 数量
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
COMMENT ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity IS 'COPQ指标-Module报废&降级品数量';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.id IS '主键';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.subject IS '科目';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.company IS '公司';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity."year" IS '年';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity."month" IS '月';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.fgcode IS 'FGCode';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.ng_name IS '不良名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.subject_type IS '类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.loss_level IS '等级';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.num IS '数量';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity TO gr_uqry_data;
