-- Drop table

-- DROP TABLE dw.td_hr_emergency_contact;

CREATE TABLE dw.td_hr_emergency_contact (
	row_wid int8 NULL, -- �����
	emplid varchar(44) NULL, -- Ա��ID
	seqnbr numeric NULL, -- ���
	contact_name varchar(200) NULL, -- ��ϵ������
	b_relation_type_code varchar(16) NULL, -- ��Ա����ϵ����
	b_relation_type_name varchar(60) NULL, -- ��Ա����ϵ����
	b_phone varchar(80) NULL, -- ��ϵ�绰
	b_addresslong varchar(320) NULL, -- ��ַ
	primary_contact varchar(40) NULL, -- ��Ҫ��ϵ��
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
COMMENT ON TABLE dw.td_hr_emergency_contact IS '������ϵ����Ϣ';

-- Column comments

COMMENT ON COLUMN dw.td_hr_emergency_contact.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_emergency_contact.emplid IS 'Ա��ID';
COMMENT ON COLUMN dw.td_hr_emergency_contact.seqnbr IS '���';
COMMENT ON COLUMN dw.td_hr_emergency_contact.contact_name IS '��ϵ������';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_relation_type_code IS '��Ա����ϵ����';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_relation_type_name IS '��Ա����ϵ����';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_phone IS '��ϵ�绰';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_addresslong IS '��ַ';
COMMENT ON COLUMN dw.td_hr_emergency_contact.primary_contact IS '��Ҫ��ϵ��';

-- Permissions

ALTER TABLE dw.td_hr_emergency_contact OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_emergency_contact TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_emergency_contact TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_emergency_contact TO gr_uqry_data;
