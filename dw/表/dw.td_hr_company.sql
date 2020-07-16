-- Drop table

-- DROP TABLE dw.td_hr_company;

CREATE TABLE dw.td_hr_company (
	row_wid int8 NULL,
	company varchar(12) NULL, -- ��˾
	effdt timestamp NULL, -- ��Ч����
	eff_status_code varchar(4) NULL, -- ��Ч����״̬����
	eff_status_name varchar(200) NULL, -- ��Ч����״̬����
	descr varchar(120) NULL, -- ����
	descrshort varchar(40) NULL, -- �������
	setid_location_code varchar(20) NULL, -- �ص㼯�� ID
	setid_location_name varchar(200) NULL, -- �ص㼯������
	"location" varchar(40) NULL, -- �ص����
	default_setid varchar(20) NULL, -- Ĭ�ϼ��� ID
	legal_type varchar(16) NULL, -- ��˾����
	industry varchar(16) NULL, -- ��ҵ
	industry_sector varchar(16) NULL, -- ��ҵ����
	opr_industry_ovrd varchar(4) NULL, -- ���ǲ���Ա��ҵ
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
COMMENT ON TABLE dw.td_hr_company IS '���£���˾��Ϣ';

-- Column comments

COMMENT ON COLUMN dw.td_hr_company.company IS '��˾';
COMMENT ON COLUMN dw.td_hr_company.effdt IS '��Ч����';
COMMENT ON COLUMN dw.td_hr_company.eff_status_code IS '��Ч����״̬����';
COMMENT ON COLUMN dw.td_hr_company.eff_status_name IS '��Ч����״̬����';
COMMENT ON COLUMN dw.td_hr_company.descr IS '����';
COMMENT ON COLUMN dw.td_hr_company.descrshort IS '�������';
COMMENT ON COLUMN dw.td_hr_company.setid_location_code IS '�ص㼯�� ID';
COMMENT ON COLUMN dw.td_hr_company.setid_location_name IS '�ص㼯������';
COMMENT ON COLUMN dw.td_hr_company."location" IS '�ص����';
COMMENT ON COLUMN dw.td_hr_company.default_setid IS 'Ĭ�ϼ��� ID';
COMMENT ON COLUMN dw.td_hr_company.legal_type IS '��˾����';
COMMENT ON COLUMN dw.td_hr_company.industry IS '��ҵ';
COMMENT ON COLUMN dw.td_hr_company.industry_sector IS '��ҵ����';
COMMENT ON COLUMN dw.td_hr_company.opr_industry_ovrd IS '���ǲ���Ա��ҵ';

-- Permissions

ALTER TABLE dw.td_hr_company OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_company TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_company TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_company TO gr_uqry_data;
