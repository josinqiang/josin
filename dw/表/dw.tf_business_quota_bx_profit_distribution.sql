-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_profit_distribution;

CREATE TABLE dw.tf_business_quota_bx_profit_distribution (
	client_code varchar(9) NULL, -- �ͻ�����
	company_code varchar(12) NULL, -- ��˾����
	gl_account_code varchar(30) NULL, -- �ܷ�������Ŀ
	assign_number varchar(54) NULL, -- ������
	fiscal_year varchar(12) NULL, -- ������
	account_doc_number varchar(30) NULL, -- ���ƾ֤���
	account_doc_line_num varchar(9) NULL, -- ���ƾ֤�е�����Ŀ��
	post_date varchar(24) NULL, -- ƾ֤�еĹ�������
	clearing_date varchar(24) NULL, -- ��������
	clear_doc_number varchar(30) NULL, -- ���㵥�ݵĵ��ݺ���
	currency varchar(15) NULL, -- ������
	from_currency_amount numeric NULL, -- ����λ�ҼƵĽ��
	to_currency_amount numeric NULL, -- ��ԭλ�ҼƵĽ��
	cost_center_code varchar(30) NULL, -- �ɱ�����
	functional_area_code varchar(48) NULL, -- ���ܷ�Χ����
	functional_area_name varchar(75) NULL, -- ���ܷ�Χ����
	debit_credit_flag varchar(3) NULL, -- �跽/������ʶ
	order_number varchar(36) NULL, -- �������
	fiscal_period varchar(6) NULL, -- ����ڼ�
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
COMMENT ON TABLE dw.tf_business_quota_bx_profit_distribution IS '��������ѯ��';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.client_code IS '�ͻ�����';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.company_code IS '��˾����';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.gl_account_code IS '�ܷ�������Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.assign_number IS '������';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.fiscal_year IS '������';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.account_doc_number IS '���ƾ֤���';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.account_doc_line_num IS '���ƾ֤�е�����Ŀ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.post_date IS 'ƾ֤�еĹ�������';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.clearing_date IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.clear_doc_number IS '���㵥�ݵĵ��ݺ���';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.currency IS '������';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.from_currency_amount IS '����λ�ҼƵĽ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.to_currency_amount IS '��ԭλ�ҼƵĽ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.cost_center_code IS '�ɱ�����';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.functional_area_code IS '���ܷ�Χ����';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.functional_area_name IS '���ܷ�Χ����';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.debit_credit_flag IS '�跽/������ʶ';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.order_number IS '�������';
COMMENT ON COLUMN dw.tf_business_quota_bx_profit_distribution.fiscal_period IS '����ڼ�';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_profit_distribution OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_profit_distribution TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_profit_distribution TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_profit_distribution TO gr_uqry_data;
