-- Drop table

-- DROP TABLE dw.td_com_department;

CREATE TABLE dw.td_com_department (
	row_wid int8 NOT NULL, -- �����
	setid varchar(20) NULL, -- ����id
	effdt timestamp NULL, -- ��Ч����
	eff_status varchar(4) NULL, -- ��Ч����״̬
	dept_code varchar(40) NULL, -- ���ű���
	dept_name varchar(120) NULL, -- ��������
	dept_short_name varchar(40) NULL, -- ���ż��
	b_issued varchar(120) NULL, -- ���ĺ�
	b_org_level varchar(8) NULL, -- ��֯�㼶
	b_dept_head varchar(32) NULL, -- ���Ÿ����˸�λ
	b_charge_leader varchar(32) NULL, -- �ֹ��쵼��λ
	b_dept_deputy varchar(32) NULL, -- ���Ÿ�ְ��λ
	b_parent_deptid varchar(40) NULL, -- �ϼ�����
	b_par_dept_deputy varchar(32) NULL, -- �ϼ����Ÿ�λ
	b_matrix_dept varchar(40) NULL, -- ����ʽ�㱨����
	b_matr_dept_deputy varchar(32) NULL, -- ����ʽ�㱨���Ÿ�λ
	b_org_invented varchar(4) NULL, -- �Ƿ�������֯
	b_org_core varchar(4) NULL, -- �Ƿ�������֯
	b_org_change_type varchar(16) NULL, -- ��֯�䶯����
	b_move_reason varchar(80) NULL, -- �ƶ�ԭ��
	hier_level varchar(150) NULL, -- �������ڲ㼶
	dept_id_path varchar(240) NULL, -- ���ű���㼶ȫ��·
	hier1_code varchar(255) NULL, -- 1�����ű���
	hier1_name varchar(255) NULL, -- 1����������
	hier1_short_name varchar(255) NULL, -- 1�����ż��
	hier2_code varchar(255) NULL, -- 2�����ű���
	hier2_name varchar(255) NULL, -- 2����������
	hier2_short_name varchar(255) NULL, -- 2�����ż��
	hier3_code varchar(255) NULL, -- 3�����ű���
	hier3_name varchar(255) NULL, -- 3����������
	hier3_short_name varchar(255) NULL, -- 3�����ż��
	hier4_code varchar(255) NULL, -- 4�����ű���
	hier4_name varchar(255) NULL, -- 4����������
	hier4_short_name varchar(255) NULL, -- 4�����ż��
	hier5_code varchar(255) NULL, -- 5�����ű���
	hier5_name varchar(255) NULL, -- 5����������
	hier5_short_name varchar(255) NULL, -- 5�����ż��
	hier6_code varchar(255) NULL, -- 6�����ű���
	hier6_name varchar(255) NULL, -- 6����������
	hier6_short_name varchar(255) NULL, -- 6�����ż��
	hier7_code varchar(255) NULL, -- 7�����ű���
	hier7_name varchar(255) NULL, -- 7����������
	hier7_short_name varchar(255) NULL, -- 7�����ż��
	hier8_code varchar(255) NULL, -- 8�����ű���
	hier8_name varchar(255) NULL, -- 8����������
	hier8_short_name varchar(255) NULL, -- 8�����ż��
	hier9_code varchar(255) NULL, -- 9�����ű���
	hier9_name varchar(255) NULL, -- 9����������
	hier9_short_name varchar(255) NULL, -- 9�����ż��
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
COMMENT ON TABLE dw.td_com_department IS '��֯����ά����Ϣ';

-- Column comments

COMMENT ON COLUMN dw.td_com_department.row_wid IS '�����';
COMMENT ON COLUMN dw.td_com_department.setid IS '����id';
COMMENT ON COLUMN dw.td_com_department.effdt IS '��Ч����';
COMMENT ON COLUMN dw.td_com_department.eff_status IS '��Ч����״̬';
COMMENT ON COLUMN dw.td_com_department.dept_code IS '���ű���';
COMMENT ON COLUMN dw.td_com_department.dept_name IS '��������';
COMMENT ON COLUMN dw.td_com_department.dept_short_name IS '���ż��';
COMMENT ON COLUMN dw.td_com_department.b_issued IS '���ĺ�';
COMMENT ON COLUMN dw.td_com_department.b_org_level IS '��֯�㼶';
COMMENT ON COLUMN dw.td_com_department.b_dept_head IS '���Ÿ����˸�λ';
COMMENT ON COLUMN dw.td_com_department.b_charge_leader IS '�ֹ��쵼��λ';
COMMENT ON COLUMN dw.td_com_department.b_dept_deputy IS '���Ÿ�ְ��λ';
COMMENT ON COLUMN dw.td_com_department.b_parent_deptid IS '�ϼ�����';
COMMENT ON COLUMN dw.td_com_department.b_par_dept_deputy IS '�ϼ����Ÿ�λ';
COMMENT ON COLUMN dw.td_com_department.b_matrix_dept IS '����ʽ�㱨����';
COMMENT ON COLUMN dw.td_com_department.b_matr_dept_deputy IS '����ʽ�㱨���Ÿ�λ';
COMMENT ON COLUMN dw.td_com_department.b_org_invented IS '�Ƿ�������֯';
COMMENT ON COLUMN dw.td_com_department.b_org_core IS '�Ƿ�������֯';
COMMENT ON COLUMN dw.td_com_department.b_org_change_type IS '��֯�䶯����';
COMMENT ON COLUMN dw.td_com_department.b_move_reason IS '�ƶ�ԭ��';
COMMENT ON COLUMN dw.td_com_department.hier_level IS '�������ڲ㼶';
COMMENT ON COLUMN dw.td_com_department.dept_id_path IS '���ű���㼶ȫ��·';
COMMENT ON COLUMN dw.td_com_department.hier1_code IS '1�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier1_name IS '1����������';
COMMENT ON COLUMN dw.td_com_department.hier1_short_name IS '1�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier2_code IS '2�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier2_name IS '2����������';
COMMENT ON COLUMN dw.td_com_department.hier2_short_name IS '2�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier3_code IS '3�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier3_name IS '3����������';
COMMENT ON COLUMN dw.td_com_department.hier3_short_name IS '3�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier4_code IS '4�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier4_name IS '4����������';
COMMENT ON COLUMN dw.td_com_department.hier4_short_name IS '4�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier5_code IS '5�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier5_name IS '5����������';
COMMENT ON COLUMN dw.td_com_department.hier5_short_name IS '5�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier6_code IS '6�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier6_name IS '6����������';
COMMENT ON COLUMN dw.td_com_department.hier6_short_name IS '6�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier7_code IS '7�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier7_name IS '7����������';
COMMENT ON COLUMN dw.td_com_department.hier7_short_name IS '7�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier8_code IS '8�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier8_name IS '8����������';
COMMENT ON COLUMN dw.td_com_department.hier8_short_name IS '8�����ż��';
COMMENT ON COLUMN dw.td_com_department.hier9_code IS '9�����ű���';
COMMENT ON COLUMN dw.td_com_department.hier9_name IS '9����������';
COMMENT ON COLUMN dw.td_com_department.hier9_short_name IS '9�����ż��';

-- Permissions

ALTER TABLE dw.td_com_department OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_department TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_department TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_department TO gr_uqry_data;
