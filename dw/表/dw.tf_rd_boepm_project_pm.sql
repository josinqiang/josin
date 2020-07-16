-- Drop table

-- DROP TABLE dw.tf_rd_boepm_project_pm;

CREATE TABLE dw.tf_rd_boepm_project_pm (
	project_id varchar(150) NULL, -- ��Ŀid
	role_id numeric NULL, -- BOEPM��ĿPM��Ӧ�Ľ�ɫ���
	project_name varchar(1500) NULL,
	pm_emp_id varchar(150) NULL, -- ��ĿPM����
	pm_name varchar(300) NULL, -- ��ĿPM����
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
COMMENT ON TABLE dw.tf_rd_boepm_project_pm IS 'boepmϵͳ����Ŀ�ź���Ŀ����';

-- Column comments

COMMENT ON COLUMN dw.tf_rd_boepm_project_pm.project_id IS '��Ŀid';
COMMENT ON COLUMN dw.tf_rd_boepm_project_pm.role_id IS 'BOEPM��ĿPM��Ӧ�Ľ�ɫ���';
COMMENT ON COLUMN dw.tf_rd_boepm_project_pm.pm_emp_id IS '��ĿPM����';
COMMENT ON COLUMN dw.tf_rd_boepm_project_pm.pm_name IS '��ĿPM����';

-- Permissions

ALTER TABLE dw.tf_rd_boepm_project_pm OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_rd_boepm_project_pm TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_rd_boepm_project_pm TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_rd_boepm_project_pm TO gr_uqry_data;
