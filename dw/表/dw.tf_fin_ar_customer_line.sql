-- Drop table

-- DROP TABLE dw.tf_fin_ar_customer_line;

CREATE TABLE dw.tf_fin_ar_customer_line (
	client_code varchar(9) NULL, -- �ͻ��˱���
	company_wid int8 NULL, -- ��˾��������
	customer_wid int8 NULL, -- �ͻ������
	special_gl_transaction_type varchar(3) NULL, -- ��������
	special_gl_flag varchar(3) NULL, -- �ر����ʱ�־
	clearing_date varchar(24) NULL, -- ����
	clearing_doc_number varchar(30) NULL, -- ����ƾ֤
	assignment_number varchar(54) NULL, -- ����
	account_doc_number varchar(30) NULL, -- ƾ֤���
	account_doc_line_number varchar(9) NULL, -- ����Ŀ
	post_date varchar(24) NULL, -- ��������
	document_date varchar(24) NULL, -- ƾ֤����
	from_currency varchar(15) NULL, -- ����
	reference_doc_number varchar(48) NULL, -- ����
	document_type varchar(6) NULL, -- ƾ֤����
	fiscal_period_wid int8 NULL, -- ����ڼ�����
	posting_key varchar(6) NULL, -- ������
	business_area varchar(12) NULL, -- ҵ��Χ
	sales_tax_code varchar(6) NULL, -- ˰��
	to_currency numeric(13,2) NULL, -- ��λ�ҽ��
	from_currency_amount numeric(13,2) NULL, -- ���
	line_item_text varchar(150) NULL, -- �ı�
	order_number varchar(36) NULL, -- ����
	main_asset_number varchar(36) NULL, -- �ʲ�
	asset_sub_number varchar(12) NULL, -- �μ����
	gl_account_wid int8 NULL, -- ���˿�Ŀ�����
	general_ledger_account varchar(30) NULL, -- �ܷ����ʿ�Ŀ
	baseline_date_for_due_date varchar(24) NULL, -- ��׼����
	terms_payment_method varchar(12) NULL, -- ��������
	cash_discount_days1 numeric(3) NULL, -- ����1
	cash_discount_days2 numeric(3) NULL, -- ����2
	net_payment_terms_period numeric(3) NULL, -- ���ھ���
	cash_discount_percent1 numeric(5,3) NULL, -- �ۿ۰ٷֱ�1
	cash_discount_percent2 numeric(5,3) NULL, -- �ۿ۰ٷֱ�2
	cash_discount_amount_enable_from_currency numeric(13,2) NULL, -- �ۿۻ���
	cash_discount_amount_to_currency numeric(13,2) NULL, -- �ۿ۽��
	cash_discount_amount_from_currency numeric(13,2) NULL, -- �ۿ۽��
	payment_method varchar(3) NULL, -- ���ʽ
	payment_block_key varchar(3) NULL, -- �����
	house_bank_short_key varchar(15) NULL, -- ������
	invoice_number_refer varchar(30) NULL, -- ��Ʊ�ο���
	billing_document varchar(30) NULL, -- ��Ʊƾ֤
	document_type_follow varchar(3) NULL, -- ����ƾ֤����
	registration_number_vat varchar(60) NULL, -- ��ֵ˰�ǼǺ�
	commitment_item varchar(42) NULL, -- ��ŵ��Ŀ
	data_type varchar(30) NULL, -- ��������
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(2000) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_fin_ar_customer_line IS 'Ӧ�չ���-�ͻ�����Ŀ��Ϣ';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ar_customer_line.client_code IS '�ͻ��˱���';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.company_wid IS '��˾��������';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.customer_wid IS '�ͻ������';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.special_gl_transaction_type IS '��������';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.special_gl_flag IS '�ر����ʱ�־';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.clearing_date IS '����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.clearing_doc_number IS '����ƾ֤';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.assignment_number IS '����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.account_doc_number IS 'ƾ֤���';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.account_doc_line_number IS '����Ŀ';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.post_date IS '��������';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.document_date IS 'ƾ֤����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.from_currency IS '����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.reference_doc_number IS '����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.document_type IS 'ƾ֤����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.fiscal_period_wid IS '����ڼ�����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.posting_key IS '������';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.business_area IS 'ҵ��Χ';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.sales_tax_code IS '˰��';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.to_currency IS '��λ�ҽ��';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.from_currency_amount IS '���';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.line_item_text IS '�ı�';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.order_number IS '����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.main_asset_number IS '�ʲ�';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.asset_sub_number IS '�μ����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.gl_account_wid IS '���˿�Ŀ�����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.general_ledger_account IS '�ܷ����ʿ�Ŀ';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.baseline_date_for_due_date IS '��׼����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.terms_payment_method IS '��������';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_days1 IS '����1';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_days2 IS '����2';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.net_payment_terms_period IS '���ھ���';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_percent1 IS '�ۿ۰ٷֱ�1';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_percent2 IS '�ۿ۰ٷֱ�2';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_amount_enable_from_currency IS '�ۿۻ���';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_amount_to_currency IS '�ۿ۽��';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.cash_discount_amount_from_currency IS '�ۿ۽��';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.payment_method IS '���ʽ';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.payment_block_key IS '�����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.house_bank_short_key IS '������';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.invoice_number_refer IS '��Ʊ�ο���';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.billing_document IS '��Ʊƾ֤';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.document_type_follow IS '����ƾ֤����';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.registration_number_vat IS '��ֵ˰�ǼǺ�';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.commitment_item IS '��ŵ��Ŀ';
COMMENT ON COLUMN dw.tf_fin_ar_customer_line.data_type IS '��������';

-- Permissions

ALTER TABLE dw.tf_fin_ar_customer_line OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ar_customer_line TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ar_customer_line TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_ar_customer_line TO gr_uqry_data;
