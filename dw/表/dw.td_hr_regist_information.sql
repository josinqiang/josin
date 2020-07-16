-- Drop table

-- DROP TABLE dw.td_hr_regist_information;

CREATE TABLE dw.td_hr_regist_information (
	row_wid int8 NOT NULL, -- �����
	emplid varchar(44) NULL, -- Ա��ID
	b_train_nbr varchar(40) NULL, -- ���
	b_regist_name varchar(80) NULL, -- �仧��Ա����
	b_regist_relation_code varchar(16) NULL, -- �뱾�˹�ϵ����
	b_regist_relation_name text NULL, -- �뱾�˹�ϵ����
	b_regist_idnbr varchar(120) NULL, -- ���֤��
	b_regist_type_code varchar(16) NULL, -- �仧��ʽ����
	b_regist_type_name text NULL, -- �仧��ʽ����
	b_regist_place_code varchar(40) NULL, -- �������ڵر���
	b_regist_place_name text NULL, -- �������ڵ�����
	b_regist_i_date timestamp NULL, -- ��Чʱ��
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
COMMENT ON TABLE dw.td_hr_regist_information IS '���廧����Ϣ����ά�ȱ�';

-- Column comments

COMMENT ON COLUMN dw.td_hr_regist_information.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_regist_information.emplid IS 'Ա��ID';
COMMENT ON COLUMN dw.td_hr_regist_information.b_train_nbr IS '���';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_name IS '�仧��Ա����';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_relation_code IS '�뱾�˹�ϵ����';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_relation_name IS '�뱾�˹�ϵ����';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_idnbr IS '���֤��';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_type_code IS '�仧��ʽ����';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_type_name IS '�仧��ʽ����';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_place_code IS '�������ڵر���';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_place_name IS '�������ڵ�����';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_i_date IS '��Чʱ��';

-- Permissions

ALTER TABLE dw.td_hr_regist_information OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_regist_information TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_regist_information TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_regist_information TO gr_uqry_data;
