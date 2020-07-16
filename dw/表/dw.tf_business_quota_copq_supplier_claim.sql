-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_supplier_claim;

CREATE TABLE dw.tf_business_quota_copq_supplier_claim (
	id numeric(19) NULL,
	company_id numeric(19) NULL, -- 公司ID
	department_id numeric(19) NULL, -- 部门ID
	opening_area varchar(510) NULL, -- 开立现地
	claim_type varchar(510) NULL, -- 索赔类别（区分常规）
	product_bu varchar(510) NULL, -- 产品BU
	product_category varchar(510) NULL, -- 产品别
	current_activity_name varchar(510) NULL, -- 当前环节名称
	supply_chain_date timestamp NULL, -- 采购赔付方式确认日期
	pay_amount numeric NULL, -- 赔付金额
	currency varchar(510) NULL, -- 币种
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
COMMENT ON TABLE dw.tf_business_quota_copq_supplier_claim IS 'COPQ主题TQMS供应商索赔';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.company_id IS '公司ID';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.department_id IS '部门ID';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.opening_area IS '开立现地';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.claim_type IS '索赔类别（区分常规）';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.product_bu IS '产品BU';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.product_category IS '产品别';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.current_activity_name IS '当前环节名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.supply_chain_date IS '采购赔付方式确认日期';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.pay_amount IS '赔付金额';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.currency IS '币种';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_supplier_claim OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_supplier_claim TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_supplier_claim TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_supplier_claim TO gr_uqry_data;
