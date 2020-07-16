-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_kpi_years_target;

CREATE TABLE dw.tf_business_quota_bx_kpi_years_target (
	factory varchar(100) NULL, -- ����
	dept_code varchar(100) NULL, -- ����CODE
	dept_name varchar(255) NULL, -- ����
	years varchar(10) NULL, -- ��
	amount numeric NULL, -- ���
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
COMMENT ON TABLE dw.tf_business_quota_bx_kpi_years_target IS 'BX(KPI�ھ�)���Ŀ��ֵ';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.factory IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.dept_code IS '����CODE';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.dept_name IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.years IS '��';
COMMENT ON COLUMN dw.tf_business_quota_bx_kpi_years_target.amount IS '���';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_kpi_years_target OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_kpi_years_target TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_kpi_years_target TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_kpi_years_target TO gr_uqry_data;
