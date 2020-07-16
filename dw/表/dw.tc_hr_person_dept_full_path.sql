-- Drop table

-- DROP TABLE dw.tc_hr_person_dept_full_path;

CREATE TABLE dw.tc_hr_person_dept_full_path (
	emplid varchar(200) NOT NULL, -- ����
	"name" varchar(200) NULL, -- ����
	deptid varchar(200) NULL, -- ���ű��
	dept_name varchar(200) NULL, -- ��������
	b_parent_deptid varchar(200) NULL, -- �ϼ�����
	dept_id_path varchar(200) NULL, -- ��֯ȫ·��
	dept_code_lv10 varchar(200) NULL, -- һ����֯���
	dept_name_lv10 varchar(200) NULL, -- һ����֯����
	dept_code_lv20 varchar(200) NULL, -- ������֯���
	dept_name_lv20 varchar(200) NULL, -- ������֯����
	dept_code_lv30 varchar(200) NULL, -- ������֯���
	dept_name_lv30 varchar(200) NULL, -- ������֯����
	dept_code_lv40 varchar(200) NULL, -- �ļ���֯���
	dept_name_lv40 varchar(200) NULL, -- �ļ���֯����
	dept_code_lv50 varchar(200) NULL, -- �弶��֯���
	dept_name_lv50 varchar(200) NULL, -- �弶��֯����
	dept_code_lv60 varchar(200) NULL, -- ������֯���
	dept_name_lv60 varchar(200) NULL, -- ������֯����
	dept_code_lv70 varchar(200) NULL, -- �߼���֯���
	dept_name_lv70 varchar(200) NULL, -- �߼���֯����
	dept_code_lv80 varchar(200) NULL, -- �˼���֯���
	dept_name_lv80 varchar(200) NULL, -- �˼���֯����
	dept_code_lv90 varchar(200) NULL, -- �ż���֯���
	dept_name_lv90 varchar(200) NULL, -- �ż���֯����
	dept_code_lv95 varchar(200) NULL, -- ʮ����֯���
	dept_name_lv95 varchar(200) NULL, -- ʮ����֯����
	dept_code_lv98 varchar(200) NULL, -- ʮһ����֯����
	dept_name_lv98 varchar(200) NULL, -- ʮһ����֯����
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
COMMENT ON TABLE dw.tc_hr_person_dept_full_path IS '��Ա��֯ȫ·��';

-- Column comments

COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.emplid IS '����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path."name" IS '����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.deptid IS '���ű��';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name IS '��������';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.b_parent_deptid IS '�ϼ�����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_id_path IS '��֯ȫ·��';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv10 IS 'һ����֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv10 IS 'һ����֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv20 IS '������֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv20 IS '������֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv30 IS '������֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv30 IS '������֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv40 IS '�ļ���֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv40 IS '�ļ���֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv50 IS '�弶��֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv50 IS '�弶��֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv60 IS '������֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv60 IS '������֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv70 IS '�߼���֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv70 IS '�߼���֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv80 IS '�˼���֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv80 IS '�˼���֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv90 IS '�ż���֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv90 IS '�ż���֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv95 IS 'ʮ����֯���';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv95 IS 'ʮ����֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv98 IS 'ʮһ����֯����';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv98 IS 'ʮһ����֯����';

-- Permissions

ALTER TABLE dw.tc_hr_person_dept_full_path OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tc_hr_person_dept_full_path TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tc_hr_person_dept_full_path TO gr_uqry_data;
GRANT ALL ON TABLE dw.tc_hr_person_dept_full_path TO gr_uapp_data;
