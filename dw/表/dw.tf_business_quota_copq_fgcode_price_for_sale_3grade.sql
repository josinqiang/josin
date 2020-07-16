-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade;

CREATE TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade (
	fg_code varchar(100) NULL, -- fgcode
	years varchar(4) NULL, -- 年份
	months varchar(2) NULL, -- 月份
	a_price numeric(20,10) NULL, -- A等级价格
	q_price numeric(20,10) NULL, -- Q等级价格
	f_price numeric(20,10) NULL, -- F等级价格
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
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

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.fg_code IS 'fgcode';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.years IS '年份';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.months IS '月份';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.a_price IS 'A等级价格';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.q_price IS 'Q等级价格';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.f_price IS 'F等级价格';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade TO gr_uapp_data;
