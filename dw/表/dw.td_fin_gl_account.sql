-- Drop table

-- DROP TABLE dw.td_fin_gl_account;

CREATE TABLE dw.td_fin_gl_account (
	row_wid int8 NULL, -- �����
	client_code varchar(9) NULL, -- �ͻ��˴���
	company_code varchar(12) NULL, -- ��˾����
	account_charts varchar(12) NULL, -- ��Ŀ��Ŀ
	gl_account_code varchar(30) NULL, -- ���˿�Ŀ����
	gl_account_short_name varchar(60) NULL, -- ���˿�Ŀ�ζ�����
	gl_account_name varchar(150) NULL, -- ���˿�Ŀ����
	gl_account_group_code varchar(12) NULL, -- ��Ŀ�����
	gl_account_group_name varchar(10) NULL, -- ��Ŀ������(���T077Z��������ÿ�Ŀ������)
	pl_account_flag varchar(6) NULL, -- �����Ŀ���ʶ
	pl_acct_func_area varchar(48) NULL, -- �����Ŀ����Ʒ�Χ
	bs_account_flag varchar(3) NULL, -- �ʲ���ծ���ʶ
	trading_partner_compamy_code varchar(18) NULL, -- ó�׻�鹫˾����
	currency varchar(15) NULL, -- ����
	balances_in_loc_currency_flag varchar(3) NULL, -- ���Ա�λ�Ҽ�����ʶ��
	tax_category varchar(6) NULL, -- ˰������
	tax_code_require_flag varchar(3) NULL, -- ����/����˰����
	open_item_manage_flag varchar(3) NULL, -- δ����Ŀ����
	line_item_display_flag varchar(3) NULL, -- ����Ŀ�Ƿ���ʾ��ʶ��
	sorting_assign_number varchar(9) NULL, -- ������
	field_status_group_code varchar(12) NULL, -- �ֶ�״̬��
	field_status_group_name varchar(40) NULL, -- �ֶ�״̬�����ƣ���T004G���������ȡ�ֶ�״̬�����ƣ�
	account_post_auto_flag varchar(3) NULL, -- ��Ŀֻ���Զ����˱�ʶ
	supplement_post_auto_flag varchar(3) NULL, -- �Զ����˲��䴦��
	commitment_item varchar(42) NULL, -- ��ŵ��Ŀ
	account_create_block_flag varchar(3) NULL, -- ���Ὠ��
	account_create_dt varchar(24) NULL, -- ��Ŀ��Ϣ��������
	account_create_by varchar(36) NULL, -- ��Ŀ��Ϣ������
	account_company_create_dt varchar(24) NULL, -- ��Ŀ��Ϣ��������(����˾����)
	account_company_create_by varchar(36) NULL, -- ��Ŀ��Ϣ������(����˾����)
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
COMMENT ON TABLE dw.td_fin_gl_account IS '��ƿ�Ŀ������';

-- Column comments

COMMENT ON COLUMN dw.td_fin_gl_account.row_wid IS '�����';
COMMENT ON COLUMN dw.td_fin_gl_account.client_code IS '�ͻ��˴���';
COMMENT ON COLUMN dw.td_fin_gl_account.company_code IS '��˾����';
COMMENT ON COLUMN dw.td_fin_gl_account.account_charts IS '��Ŀ��Ŀ';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_code IS '���˿�Ŀ����';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_short_name IS '���˿�Ŀ�ζ�����';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_name IS '���˿�Ŀ����';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_group_code IS '��Ŀ�����';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_group_name IS '��Ŀ������(���T077Z��������ÿ�Ŀ������)';
COMMENT ON COLUMN dw.td_fin_gl_account.pl_account_flag IS '�����Ŀ���ʶ';
COMMENT ON COLUMN dw.td_fin_gl_account.pl_acct_func_area IS '�����Ŀ����Ʒ�Χ';
COMMENT ON COLUMN dw.td_fin_gl_account.bs_account_flag IS '�ʲ���ծ���ʶ';
COMMENT ON COLUMN dw.td_fin_gl_account.trading_partner_compamy_code IS 'ó�׻�鹫˾����';
COMMENT ON COLUMN dw.td_fin_gl_account.currency IS '����';
COMMENT ON COLUMN dw.td_fin_gl_account.balances_in_loc_currency_flag IS '���Ա�λ�Ҽ�����ʶ��';
COMMENT ON COLUMN dw.td_fin_gl_account.tax_category IS '˰������';
COMMENT ON COLUMN dw.td_fin_gl_account.tax_code_require_flag IS '����/����˰����';
COMMENT ON COLUMN dw.td_fin_gl_account.open_item_manage_flag IS 'δ����Ŀ����';
COMMENT ON COLUMN dw.td_fin_gl_account.line_item_display_flag IS '����Ŀ�Ƿ���ʾ��ʶ��';
COMMENT ON COLUMN dw.td_fin_gl_account.sorting_assign_number IS '������';
COMMENT ON COLUMN dw.td_fin_gl_account.field_status_group_code IS '�ֶ�״̬��';
COMMENT ON COLUMN dw.td_fin_gl_account.field_status_group_name IS '�ֶ�״̬�����ƣ���T004G���������ȡ�ֶ�״̬�����ƣ�';
COMMENT ON COLUMN dw.td_fin_gl_account.account_post_auto_flag IS '��Ŀֻ���Զ����˱�ʶ';
COMMENT ON COLUMN dw.td_fin_gl_account.supplement_post_auto_flag IS '�Զ����˲��䴦��';
COMMENT ON COLUMN dw.td_fin_gl_account.commitment_item IS '��ŵ��Ŀ';
COMMENT ON COLUMN dw.td_fin_gl_account.account_create_block_flag IS '���Ὠ��';
COMMENT ON COLUMN dw.td_fin_gl_account.account_create_dt IS '��Ŀ��Ϣ��������';
COMMENT ON COLUMN dw.td_fin_gl_account.account_create_by IS '��Ŀ��Ϣ������';
COMMENT ON COLUMN dw.td_fin_gl_account.account_company_create_dt IS '��Ŀ��Ϣ��������(����˾����)';
COMMENT ON COLUMN dw.td_fin_gl_account.account_company_create_by IS '��Ŀ��Ϣ������(����˾����)';

-- Permissions

ALTER TABLE dw.td_fin_gl_account OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_gl_account TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_gl_account TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_fin_gl_account TO gr_uqry_data;
