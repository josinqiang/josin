-- Drop table

-- DROP TABLE dw.td_hr_socialtitle;

CREATE TABLE dw.td_hr_socialtitle (
	row_wid int8 NOT NULL, -- �����
	emplid varchar(44) NULL, -- Ա��ID
	b_train_nbr varchar(40) NULL, -- ���
	b_socialtitle_code varchar(16) NULL, -- ���ְ�Ʊ���
	b_socialtitle_name text NULL, -- ���ְ������
	b_social_type varchar(8) NULL, -- ���ְ�����
	b_qualifiedway_code varchar(16) NULL, -- ȡ���ʸ�;������
	b_qualifiedway_name text NULL, -- ȡ���ʸ�;������
	b_professionlevels_code varchar(16) NULL, -- רҵ�����ȼ�����
	b_professionlevels_name text NULL, -- רҵ�����ȼ�����
	b_qua_examination varchar(120) NULL, -- �ʸ�������λ
	b_get_qua_date timestamp NULL, -- ȡ���ʸ�ʱ��
	b_appoint_date timestamp NULL, -- Ƹ����ʼʱ��
	b_appoint_edate timestamp NULL, -- Ƹ�ν���ʱ��
	b_company varchar(120) NULL, -- Ƹ�ε�λ
	b_status_code varchar(4) NULL, -- Ƹ��״̬����
	b_status_name text NULL, -- Ƹ��״̬��������
	b_national_e_title varchar(120) NULL, -- ����Ƹ��ְ��
	b_specialskills varchar(120) NULL, -- �к�ר��
	b_highest_code varchar(4) NULL, -- �Ƿ���ߵȼ�����
	b_highest_name text NULL, -- �Ƿ���ߵȼ�
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
COMMENT ON TABLE dw.td_hr_socialtitle IS '���ְ����Ϣ����ά�ȱ�';

-- Column comments

COMMENT ON COLUMN dw.td_hr_socialtitle.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_socialtitle.emplid IS 'Ա��ID';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_train_nbr IS '���';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_socialtitle_code IS '���ְ�Ʊ���';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_socialtitle_name IS '���ְ������';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_social_type IS '���ְ�����';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_qualifiedway_code IS 'ȡ���ʸ�;������';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_qualifiedway_name IS 'ȡ���ʸ�;������';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_professionlevels_code IS 'רҵ�����ȼ�����';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_professionlevels_name IS 'רҵ�����ȼ�����';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_qua_examination IS '�ʸ�������λ';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_get_qua_date IS 'ȡ���ʸ�ʱ��';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_appoint_date IS 'Ƹ����ʼʱ��';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_appoint_edate IS 'Ƹ�ν���ʱ��';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_company IS 'Ƹ�ε�λ';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_status_code IS 'Ƹ��״̬����';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_status_name IS 'Ƹ��״̬��������';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_national_e_title IS '����Ƹ��ְ��';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_specialskills IS '�к�ר��';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_highest_code IS '�Ƿ���ߵȼ�����';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_highest_name IS '�Ƿ���ߵȼ�';

-- Permissions

ALTER TABLE dw.td_hr_socialtitle OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_socialtitle TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_socialtitle TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_socialtitle TO gr_uqry_data;
