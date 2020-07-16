-- Drop table

-- DROP TABLE dw.td_hr_education;

CREATE TABLE dw.td_hr_education (
	row_wid int8 NULL,
	emplid varchar(44) NULL,
	b_train_nbr varchar(40) NULL, -- ���
	b_b_date timestamp NULL, -- ��ʼ����
	b_e_date timestamp NULL, -- ��������
	b_sch_country varchar(16) NULL, -- ѧУ���ڹ���
	school_code varchar(40) NULL, -- ѧУ����
	school varchar(200) NULL, -- ѧУ����
	major varchar(200) NULL, -- Major
	b_doctor_bg varchar(4) NULL, -- �Ƿ���ҽ�Ʊ���
	b_eud_type_code varchar(8) NULL, -- ������ʽ����
	b_eud_type_name varchar(40) NULL, -- ������ʽ����
	b_abroad_yn varchar(4) NULL, -- �Ƿ�����ѧ�����Ա
	b_abroad_certed_yn varchar(4) NULL, -- �Ƿ�ȡ�ý�������ѧ��������ѧ����֤
	b_sch_diploma_code varchar(8) NULL, -- ѧ������
	b_sch_diploma_name varchar(40) NULL, -- ѧ������
	b_dip_nbr varchar(120) NULL, -- ѧ��֤����
	b_dip_h_yn varchar(4) NULL, -- �Ƿ����ѧ��
	b_dip_f_yn varchar(4) NULL, -- �Ƿ��һѧ��
	b_check_yn varchar(4) NULL, -- �Ƿ���֤
	highest_educ_lvl varchar(8) NULL, -- ��߽����̶�
	b_degree_highest_code varchar(4) NULL, -- ���ѧλ����
	b_degree_highest_name varchar(40) NULL, -- ���ѧλ����
	b_deg_nbr varchar(120) NULL, -- ѧλ֤����
	b_deg_date timestamp NULL, -- ѧλ��Ȩʱ��
	b_deg_unit varchar(120) NULL, -- ѧλ��Ȩ����
	b_deg_conutry varchar(16) NULL, -- ѧλ��Ȩ����
	b_graduate_code varchar(4) NULL, -- ��ҵ�������
	b_graduate_name varchar(40) NULL, -- ��ҵ�������
	b_major_sec varchar(120) NULL, -- �ڶ�רҵ
	b_2_degree_code varchar(4) NULL, -- ѧλ����
	b_2_degree_name varchar(40) NULL, -- ѧλ����
	b_b2_date timestamp NULL, -- ��ʼ����
	b_e2_date timestamp NULL, -- ��������
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
COMMENT ON TABLE dw.td_hr_education IS '��������';

-- Column comments

COMMENT ON COLUMN dw.td_hr_education.b_train_nbr IS '���';
COMMENT ON COLUMN dw.td_hr_education.b_b_date IS '��ʼ����';
COMMENT ON COLUMN dw.td_hr_education.b_e_date IS '��������';
COMMENT ON COLUMN dw.td_hr_education.b_sch_country IS 'ѧУ���ڹ���';
COMMENT ON COLUMN dw.td_hr_education.school_code IS 'ѧУ����';
COMMENT ON COLUMN dw.td_hr_education.school IS 'ѧУ����';
COMMENT ON COLUMN dw.td_hr_education.major IS 'Major';
COMMENT ON COLUMN dw.td_hr_education.b_doctor_bg IS '�Ƿ���ҽ�Ʊ���';
COMMENT ON COLUMN dw.td_hr_education.b_eud_type_code IS '������ʽ����';
COMMENT ON COLUMN dw.td_hr_education.b_eud_type_name IS '������ʽ����';
COMMENT ON COLUMN dw.td_hr_education.b_abroad_yn IS '�Ƿ�����ѧ�����Ա';
COMMENT ON COLUMN dw.td_hr_education.b_abroad_certed_yn IS '�Ƿ�ȡ�ý�������ѧ��������ѧ����֤';
COMMENT ON COLUMN dw.td_hr_education.b_sch_diploma_code IS 'ѧ������';
COMMENT ON COLUMN dw.td_hr_education.b_sch_diploma_name IS 'ѧ������';
COMMENT ON COLUMN dw.td_hr_education.b_dip_nbr IS 'ѧ��֤����';
COMMENT ON COLUMN dw.td_hr_education.b_dip_h_yn IS '�Ƿ����ѧ��';
COMMENT ON COLUMN dw.td_hr_education.b_dip_f_yn IS '�Ƿ��һѧ��';
COMMENT ON COLUMN dw.td_hr_education.b_check_yn IS '�Ƿ���֤';
COMMENT ON COLUMN dw.td_hr_education.highest_educ_lvl IS '��߽����̶�';
COMMENT ON COLUMN dw.td_hr_education.b_degree_highest_code IS '���ѧλ����';
COMMENT ON COLUMN dw.td_hr_education.b_degree_highest_name IS '���ѧλ����';
COMMENT ON COLUMN dw.td_hr_education.b_deg_nbr IS 'ѧλ֤����';
COMMENT ON COLUMN dw.td_hr_education.b_deg_date IS 'ѧλ��Ȩʱ��';
COMMENT ON COLUMN dw.td_hr_education.b_deg_unit IS 'ѧλ��Ȩ����';
COMMENT ON COLUMN dw.td_hr_education.b_deg_conutry IS 'ѧλ��Ȩ����';
COMMENT ON COLUMN dw.td_hr_education.b_graduate_code IS '��ҵ�������';
COMMENT ON COLUMN dw.td_hr_education.b_graduate_name IS '��ҵ�������';
COMMENT ON COLUMN dw.td_hr_education.b_major_sec IS '�ڶ�רҵ';
COMMENT ON COLUMN dw.td_hr_education.b_2_degree_code IS 'ѧλ����';
COMMENT ON COLUMN dw.td_hr_education.b_2_degree_name IS 'ѧλ����';
COMMENT ON COLUMN dw.td_hr_education.b_b2_date IS '��ʼ����';
COMMENT ON COLUMN dw.td_hr_education.b_e2_date IS '��������';

-- Permissions

ALTER TABLE dw.td_hr_education OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_education TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_education TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_education TO gr_uqry_data;
