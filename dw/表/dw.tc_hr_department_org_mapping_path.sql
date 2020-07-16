-- Drop table

-- DROP TABLE dw.tc_hr_department_org_mapping_path;

CREATE TABLE dw.tc_hr_department_org_mapping_path (
	dept_code varchar(40) NULL, -- ���ű���
	dept_name varchar(120) NULL, -- ��������
	b_parent_deptid varchar(40) NULL, -- ���׽ڵ㲿�ű���
	dept_id_path varchar(240) NULL, -- ���Ÿ��Ӳ㼶��ϵȫ��·
	hier_level varchar(150) NULL, -- ��ǰ�����ڵڼ��㼶
	hier_name text NULL, -- ���Ų㼶����
	org_level_id text NULL, -- ��֯�㼶����
	org_level_name text NULL, -- ��֯�㼶����
	org_level_dept_name text NULL, -- ��֯��Ӧ�Ĳ�������
	org_level_dept_code text NULL, -- ��֯��Ӧ�ı���
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tc_hr_department_org_mapping_path IS '��֯�㼶�벿�Ź�ϵӳ���';

-- Column comments

COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.dept_code IS '���ű���';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.dept_name IS '��������';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.b_parent_deptid IS '���׽ڵ㲿�ű���';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.dept_id_path IS '���Ÿ��Ӳ㼶��ϵȫ��·';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.hier_level IS '��ǰ�����ڵڼ��㼶';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.hier_name IS '���Ų㼶����';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_id IS '��֯�㼶����';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_name IS '��֯�㼶����';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_dept_name IS '��֯��Ӧ�Ĳ�������';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_dept_code IS '��֯��Ӧ�ı���';

-- Permissions

ALTER TABLE dw.tc_hr_department_org_mapping_path OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tc_hr_department_org_mapping_path TO ur_uown_edw;
GRANT ALL ON TABLE dw.tc_hr_department_org_mapping_path TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tc_hr_department_org_mapping_path TO gr_uqry_data;
