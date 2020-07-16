-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade;

CREATE TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade (
	fg_code varchar(100) NULL, -- fgcode
	years varchar(4) NULL, -- ���
	months varchar(2) NULL, -- �·�
	a_price numeric(20,10) NULL, -- A�ȼ��۸�
	q_price numeric(20,10) NULL, -- Q�ȼ��۸�
	f_price numeric(20,10) NULL, -- F�ȼ��۸�
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
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.years IS '���';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.months IS '�·�';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.a_price IS 'A�ȼ��۸�';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.q_price IS 'Q�ȼ��۸�';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_price_for_sale_3grade.f_price IS 'F�ȼ��۸�';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_price_for_sale_3grade TO gr_uapp_data;
