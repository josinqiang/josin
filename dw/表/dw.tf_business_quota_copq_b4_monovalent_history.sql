-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_monovalent_history;

CREATE TABLE dw.tf_business_quota_copq_b4_monovalent_history (
	year_month varchar(6) NULL, -- 年月
	real_month varchar(6) NULL, -- 实际数据的所在月份
	material_number varchar(100) NULL, -- 物料号
	price numeric(20,10) NULL, -- 单价
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

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_history.year_month IS '年月';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_history.real_month IS '实际数据的所在月份';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_history.material_number IS '物料号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_history.price IS '单价';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_monovalent_history OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_monovalent_history TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_monovalent_history TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_monovalent_history TO gr_uapp_data;
