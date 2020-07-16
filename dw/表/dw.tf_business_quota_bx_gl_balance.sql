-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_gl_balance;

CREATE TABLE dw.tf_business_quota_bx_gl_balance (
	client_code varchar(9) NOT NULL, -- �ͻ��˱���
	fiscal_year varchar(12) NULL, -- ������
	fiscal_period text NULL, -- ����ڼ�
	ytd_pre_year_flag text NULL, -- ��ת����ʶ
	object_num_table_group00 numeric(10) NULL, -- �����Ķ������00
	object_num_table_group01 numeric(10) NULL, -- �����Ķ������01
	object_num_table_group02 numeric(10) NULL, -- �����Ķ������02
	object_num_table_group03 numeric(10) NULL, -- �����Ķ������03
	object_num_table_group04 numeric(10) NULL, -- �����Ķ������04
	object_num_table_group05 numeric(10) NULL, -- �����Ķ������05
	object_num_table_group06 numeric(10) NULL, -- �����Ķ������06
	object_num_table_group07 numeric(10) NULL, -- �����Ķ������07
	object_num_table_group08 numeric(10) NULL, -- �����Ķ������08
	debit_credit_flag varchar(3) NULL, -- �跽/������ʶ
	period_max varchar(9) NULL, -- ����ڼ�
	"version" varchar(9) NULL, -- �汾
	account_number varchar(30) NULL, -- ��Ŀ����
	cost_element varchar(30) NULL, -- �ɱ�Ҫ��
	company_code varchar(12) NULL, -- ��˾����
	cost_center_code varchar(30) NULL, -- �ɱ����ı���
	profit_center_code varchar(30) NULL, -- �������ı���
	controlling_area varchar(12) NULL, -- ���Ʒ�Χ
	currency_type text NULL, -- ��������
	months varchar(30) NULL, -- �·�
	amount numeric NULL, -- ���
	"timestamp" numeric(15) NULL,
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
COMMENT ON TABLE dw.tf_business_quota_bx_gl_balance IS 'Bxָ��-��������-����˰���̱�ʹ�÷�';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.client_code IS '�ͻ��˱���';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.fiscal_year IS '������';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.fiscal_period IS '����ڼ�';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.ytd_pre_year_flag IS '��ת����ʶ';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group00 IS '�����Ķ������00';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group01 IS '�����Ķ������01';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group02 IS '�����Ķ������02';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group03 IS '�����Ķ������03';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group04 IS '�����Ķ������04';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group05 IS '�����Ķ������05';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group06 IS '�����Ķ������06';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group07 IS '�����Ķ������07';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group08 IS '�����Ķ������08';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.debit_credit_flag IS '�跽/������ʶ';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.period_max IS '����ڼ�';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance."version" IS '�汾';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.account_number IS '��Ŀ����';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.cost_element IS '�ɱ�Ҫ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.company_code IS '��˾����';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.cost_center_code IS '�ɱ����ı���';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.profit_center_code IS '�������ı���';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.controlling_area IS '���Ʒ�Χ';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.currency_type IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.months IS '�·�';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.amount IS '���';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_gl_balance OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_gl_balance TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_gl_balance TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_gl_balance TO gr_uqry_data;
