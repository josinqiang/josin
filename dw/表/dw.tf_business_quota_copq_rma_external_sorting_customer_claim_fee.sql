-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee;

CREATE TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee (
	id numeric(19) NULL, -- 主键
	subject varchar(510) NULL, -- 科目
	company varchar(510) NULL, -- 公司
	"year" varchar(510) NULL, -- 年
	"month" varchar(510) NULL, -- 月
	fgcode varchar(510) NULL, -- FGCode
	loss_level varchar(510) NULL, -- 等级
	out_level varchar(510) NULL, -- 等级
	bu varchar(510) NULL, -- bu
	currency varchar(510) NULL, -- 货币
	"money" numeric(22,6) NULL, -- 金额
	maintain_project varchar(510) NULL, -- 维修项目
	description varchar(510) NULL, -- 描述
	client_oem varchar(510) NULL, -- 客户代工厂
	client varchar(510) NULL, -- 客户
	num numeric(10) NULL, -- 数量
	top_department_name varchar(510) NULL,
	top_department_id numeric(19) NULL,
	rma_no varchar(510) NULL, -- RMA NO
	certificate_date timestamp NULL, -- 凭证日期
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
COMMENT ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee IS 'COPQ指标-RMA_外部Sorting_客户索赔费 ';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.id IS '主键';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.subject IS '科目';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.company IS '公司';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee."year" IS '年';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee."month" IS '月';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.fgcode IS 'FGCode';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.loss_level IS '等级';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.out_level IS '等级';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.bu IS 'bu';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.currency IS '货币';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee."money" IS '金额';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.maintain_project IS '维修项目';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.description IS '描述';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.client_oem IS '客户代工厂';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.client IS '客户';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.num IS '数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.rma_no IS 'RMA NO';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.certificate_date IS '凭证日期';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee TO gr_uqry_data;
