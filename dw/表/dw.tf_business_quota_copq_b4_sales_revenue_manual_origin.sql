-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual_origin;

CREATE TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual_origin (
	client varchar(255) NULL, -- 客户端
	company_code varchar(255) NULL, -- 公司代码
	account_code varchar(255) NULL, -- 会计科目
	years varchar(255) NULL, -- 年
	months varchar(255) NULL, -- 月
	ref_no varchar(255) NULL, -- 参照凭证号
	dis_no varchar(255) NULL, -- 分配编号
	voucher_no varchar(255) NULL, -- 会计凭证编号
	voucher_line varchar(255) NULL, -- 会计凭证中的行项目数
	dc_flag varchar(255) NULL, -- 借方/贷方
	amount numeric(18,2) NULL, -- 本位币金额
	voucher_type varchar(255) NULL, -- 凭证类别
	descs varchar(255) NULL, -- 文本
	revenue_center varchar(255) NULL, -- 利润中心,用于区分BU
	revenue_center_name varchar(255) NULL, -- 利润中心名称
	revenue_center_ldesc varchar(255) NULL, -- 利润中心长描述
	revenue_center_desc varchar(255) NULL, -- 利润中心描述
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(100) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual_origin IS 'COPQ指标：销售额-手工账';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.client IS '客户端';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.company_code IS '公司代码';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.account_code IS '会计科目';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.years IS '年';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.months IS '月';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.ref_no IS '参照凭证号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.dis_no IS '分配编号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.voucher_no IS '会计凭证编号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.voucher_line IS '会计凭证中的行项目数';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.dc_flag IS '借方/贷方';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.amount IS '本位币金额';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.voucher_type IS '凭证类别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.descs IS '文本';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.revenue_center IS '利润中心,用于区分BU';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.revenue_center_name IS '利润中心名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.revenue_center_ldesc IS '利润中心长描述';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual_origin.revenue_center_desc IS '利润中心描述';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual_origin OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual_origin TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual_origin TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual_origin TO gr_uqry_data;
