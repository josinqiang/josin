-- Drop table

-- DROP TABLE dw.td_hr_familymembers;

CREATE TABLE dw.td_hr_familymembers (
	row_wid int8 NOT NULL, -- �����
	emplid varchar(44) NULL, -- Ա��ID
	seqnbr numeric NULL, -- ���
	b_relation_type varchar(16) NULL, -- ��Ա����ϵ
	b_name varchar(200) NULL, -- ����
	sex varchar(4) NULL, -- �Ա�
	b_phone varchar(80) NULL, -- ��ϵ�绰
	addresslong text NULL, -- ��ַ
	b_comp varchar(120) NULL, -- ���ڵ�λ
	b_major varchar(120) NULL, -- ����ְҵ
	b_time timestamp NULL, -- ʵ�ʽ�������
	b_jinji varchar(4) NULL, -- �Ƿ������ϵ��
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
COMMENT ON TABLE dw.td_hr_familymembers IS '��ͥ��Ա��Ϣ��';

-- Column comments

COMMENT ON COLUMN dw.td_hr_familymembers.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_familymembers.emplid IS 'Ա��ID';
COMMENT ON COLUMN dw.td_hr_familymembers.seqnbr IS '���';
COMMENT ON COLUMN dw.td_hr_familymembers.b_relation_type IS '��Ա����ϵ';
COMMENT ON COLUMN dw.td_hr_familymembers.b_name IS '����';
COMMENT ON COLUMN dw.td_hr_familymembers.sex IS '�Ա�';
COMMENT ON COLUMN dw.td_hr_familymembers.b_phone IS '��ϵ�绰';
COMMENT ON COLUMN dw.td_hr_familymembers.addresslong IS '��ַ';
COMMENT ON COLUMN dw.td_hr_familymembers.b_comp IS '���ڵ�λ';
COMMENT ON COLUMN dw.td_hr_familymembers.b_major IS '����ְҵ';
COMMENT ON COLUMN dw.td_hr_familymembers.b_time IS 'ʵ�ʽ�������';
COMMENT ON COLUMN dw.td_hr_familymembers.b_jinji IS '�Ƿ������ϵ��';

-- Permissions

ALTER TABLE dw.td_hr_familymembers OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_familymembers TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_familymembers TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_familymembers TO gr_uqry_data;
