-- Drop table

-- DROP TABLE dw.td_hr_location;

CREATE TABLE dw.td_hr_location (
	row_wid int8 NOT NULL, -- �����
	setid varchar(20) NULL, -- ����ID
	"location" varchar(40) NULL, -- �ص����
	effdt timestamp NULL, -- ��Ч����
	eff_status_code varchar(4) NULL, -- ״̬����
	eff_status_name varchar(8) NULL, -- ״̬����
	descr varchar(120) NULL, -- ����
	descrshort varchar(40) NULL, -- �������
	building varchar(40) NULL, -- ������
	floor varchar(40) NULL, -- ¥����
	phone varchar(96) NULL, -- �绰
	"extension" varchar(24) NULL, -- �绰�ֻ�
	fax varchar(96) NULL, -- �������
	country varchar(12) NULL, -- ����/����
	postal varchar(48) NULL, -- ��������
	state_code varchar(24) NULL, -- ��/ʡ����
	state_name varchar(24) NULL, -- ��/ʡ����
	city_code varchar(120) NULL, -- ���б���
	city_name varchar(120) NULL, -- ��������
	address1 varchar(220) NULL, -- ��ַ1
	address2 varchar(220) NULL, -- ��ַ2
	address3 varchar(220) NULL, -- ��ַ3
	address4 varchar(220) NULL, -- ��ַ4
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
COMMENT ON TABLE dw.td_hr_location IS '�ص��ַ��Ϣ��';

-- Column comments

COMMENT ON COLUMN dw.td_hr_location.row_wid IS '�����';
COMMENT ON COLUMN dw.td_hr_location.setid IS '����ID';
COMMENT ON COLUMN dw.td_hr_location."location" IS '�ص����';
COMMENT ON COLUMN dw.td_hr_location.effdt IS '��Ч����';
COMMENT ON COLUMN dw.td_hr_location.eff_status_code IS '״̬����';
COMMENT ON COLUMN dw.td_hr_location.eff_status_name IS '״̬����';
COMMENT ON COLUMN dw.td_hr_location.descr IS '����';
COMMENT ON COLUMN dw.td_hr_location.descrshort IS '�������';
COMMENT ON COLUMN dw.td_hr_location.building IS '������';
COMMENT ON COLUMN dw.td_hr_location.floor IS '¥����';
COMMENT ON COLUMN dw.td_hr_location.phone IS '�绰';
COMMENT ON COLUMN dw.td_hr_location."extension" IS '�绰�ֻ�';
COMMENT ON COLUMN dw.td_hr_location.fax IS '�������';
COMMENT ON COLUMN dw.td_hr_location.country IS '����/����';
COMMENT ON COLUMN dw.td_hr_location.postal IS '��������';
COMMENT ON COLUMN dw.td_hr_location.state_code IS '��/ʡ����';
COMMENT ON COLUMN dw.td_hr_location.state_name IS '��/ʡ����';
COMMENT ON COLUMN dw.td_hr_location.city_code IS '���б���';
COMMENT ON COLUMN dw.td_hr_location.city_name IS '��������';
COMMENT ON COLUMN dw.td_hr_location.address1 IS '��ַ1';
COMMENT ON COLUMN dw.td_hr_location.address2 IS '��ַ2';
COMMENT ON COLUMN dw.td_hr_location.address3 IS '��ַ3';
COMMENT ON COLUMN dw.td_hr_location.address4 IS '��ַ4';

-- Permissions

ALTER TABLE dw.td_hr_location OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_location TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_location TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_location TO gr_uqry_data;
