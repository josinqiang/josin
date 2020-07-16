-- Drop table

-- DROP TABLE dw.td_com_company;

CREATE TABLE dw.td_com_company (
	row_wid int8 NULL, -- �����
	client_code varchar(9) NULL, -- �ͻ���
	company_code varchar(12) NULL, -- ��˾����
	company_name varchar(75) NULL, -- ��˾����
	city varchar(75) NULL, -- ����
	country varchar(9) NULL, -- ����
	currency varchar(15) NULL, -- ����
	language_type varchar(3) NULL, -- ����
	chart_accounts varchar(12) NULL, -- ��Ŀ��
	max_change_rate_deviation_percent varchar(6) NULL, -- ������ƫ����Ȱٷֱ�
	fiscal_year_variant varchar(6) NULL, -- �����ȱ�ʽ
	allocation_flag varchar(3) NULL, -- �����ʶ��
	company_long_code varchar(18) NULL, -- ��˾
	address_code varchar(30) NULL, -- ��ַ����
	vat_registration_num varchar(60) NULL, -- ˰��ǼǺ�
	fin_manage_area varchar(12) NULL, -- �������Χ
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
COMMENT ON TABLE dw.td_com_company IS '��˾������';

-- Column comments

COMMENT ON COLUMN dw.td_com_company.row_wid IS '�����';
COMMENT ON COLUMN dw.td_com_company.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.td_com_company.company_code IS '��˾����';
COMMENT ON COLUMN dw.td_com_company.company_name IS '��˾����';
COMMENT ON COLUMN dw.td_com_company.city IS '����';
COMMENT ON COLUMN dw.td_com_company.country IS '����';
COMMENT ON COLUMN dw.td_com_company.currency IS '����';
COMMENT ON COLUMN dw.td_com_company.language_type IS '����';
COMMENT ON COLUMN dw.td_com_company.chart_accounts IS '��Ŀ��';
COMMENT ON COLUMN dw.td_com_company.max_change_rate_deviation_percent IS '������ƫ����Ȱٷֱ�';
COMMENT ON COLUMN dw.td_com_company.fiscal_year_variant IS '�����ȱ�ʽ';
COMMENT ON COLUMN dw.td_com_company.allocation_flag IS '�����ʶ��';
COMMENT ON COLUMN dw.td_com_company.company_long_code IS '��˾';
COMMENT ON COLUMN dw.td_com_company.address_code IS '��ַ����';
COMMENT ON COLUMN dw.td_com_company.vat_registration_num IS '˰��ǼǺ�';
COMMENT ON COLUMN dw.td_com_company.fin_manage_area IS '�������Χ';

-- Permissions

ALTER TABLE dw.td_com_company OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_company TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_company TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_company TO gr_uqry_data;
