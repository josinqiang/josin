-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_oem_claim_fee;

CREATE TABLE dw.tf_business_quota_copq_oem_claim_fee (
	id numeric(19) NULL, -- id
	status_now varchar(510) NULL, -- 当前状态
	opening_date timestamp NULL, -- 开立日期
	supplier varchar(510) NULL, -- （乙方）供应商
	happen_date timestamp NULL, -- 发生时间
	opening_area varchar(510) NULL, -- 开立现地，区分现地别
	bad_and_calim_reason varchar(510) NULL, -- 不良&索赔原因
	compensation_way varchar(510) NULL, -- 赔付方式
	product_category varchar(510) NULL, -- 产品类别
	tax_inclusive_all numeric(15) NULL, -- 含税金额总计
	heppen_stage varchar(510) NULL, -- 发生阶段
	bad_detail varchar(510) NULL, -- 不良明细
	portal_date timestamp NULL, -- 审批日期
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
COMMENT ON TABLE dw.tf_business_quota_copq_oem_claim_fee IS 'COPQ指标-OEM索赔费';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.id IS 'id';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.status_now IS '当前状态';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.opening_date IS '开立日期';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.supplier IS '（乙方）供应商';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.happen_date IS '发生时间';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.opening_area IS '开立现地，区分现地别';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.bad_and_calim_reason IS '不良&索赔原因';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.compensation_way IS '赔付方式';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.product_category IS '产品类别';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.tax_inclusive_all IS '含税金额总计';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.heppen_stage IS '发生阶段';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.bad_detail IS '不良明细';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.portal_date IS '审批日期';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_oem_claim_fee OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_oem_claim_fee TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_oem_claim_fee TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_oem_claim_fee TO gr_uqry_data;
