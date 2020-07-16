-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_fgcode_price_for_sale;

CREATE TABLE dw.tf_business_quota_copq_fgcode_price_for_sale (
	fg_code varchar(100) NULL, -- fgcode
	years varchar(4) NULL, -- 年份
	months varchar(2) NULL, -- 月份
	grade varchar(20) NULL, -- 等级
	price numeric(30,15) NULL, -- 价格
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

COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale.fg_code IS 'fgcode';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale.years IS '年份';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale.months IS '月份';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale.grade IS '等级';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale.price IS '价格';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_fgcode_price_for_sale OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale TO gr_uapp_data;
