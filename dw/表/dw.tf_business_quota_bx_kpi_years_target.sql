-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_kpi_years_target;

CREATE TABLE dw.tf_business_quota_bx_kpi_years_target (
	factory varchar(100) NULL, -- 工厂
	dept_code varchar(100) NULL, -- 部门CODE
	dept_name varchar(255) NULL, -- 部门
	years varchar(10) NULL, -- 年
	amount numeric NULL, -- 金额
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_bx_kpi_years_target IS 'BX(KPI口径)年度目标值';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.factory IS '工厂';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.dept_code IS '部门CODE';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.dept_name IS '部门';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.years IS '年';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.amount IS '金额';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_kpi_years_target OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_kpi_years_target TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_kpi_years_target TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_kpi_years_target TO gr_uqry_data;
