-- Drop table

-- DROP TABLE dw.td_hr_lice_cert;

CREATE TABLE dw.td_hr_lice_cert (
	row_wid int8 NOT NULL, -- �����
	emplid varchar(44) NULL, -- Ա��ID
	seqnbr int8 NULL, -- ���
	b_lice_cert_type_code varchar(16) NULL, -- ִ��֤�����ͱ���
	b_lice_cert_type_name text NULL, -- ִ��֤����������
	b_lice_cert_code varchar(16) NULL, -- ִ��֤�����Ʊ���
	b_lice_cert_name text NULL, -- ִ��֤������
	b_cert_nbr varchar(120) NULL, -- ֤����
	b_obtain_dt timestamp NULL, -- ��ȡ����
	b_lice_cert_effdt timestamp NULL, -- ��Ч��ֹ����
	b_cert_authority varchar(160) NULL, -- ֤��䷢����
	b_cert_verifice_code varchar(4) NULL, -- �Ƿ���֤����
	b_cert_verifice_name text NULL, -- �Ƿ���֤����
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
COMMENT ON TABLE dw.td_hr_lice_cert IS 'ִ����֤����Ϣ����ά�ȱ�';

-- Column comments

COMMENT ON COLUMN dw.td_hr_lice_cert.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_lice_cert.emplid IS 'Ա��ID';
COMMENT ON COLUMN dw.td_hr_lice_cert.seqnbr IS '���';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_type_code IS 'ִ��֤�����ͱ���';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_type_name IS 'ִ��֤����������';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_code IS 'ִ��֤�����Ʊ���';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_name IS 'ִ��֤������';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_nbr IS '֤����';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_obtain_dt IS '��ȡ����';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_effdt IS '��Ч��ֹ����';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_authority IS '֤��䷢����';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_verifice_code IS '�Ƿ���֤����';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_verifice_name IS '�Ƿ���֤����';

-- Permissions

ALTER TABLE dw.td_hr_lice_cert OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_lice_cert TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_lice_cert TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_lice_cert TO gr_uqry_data;
