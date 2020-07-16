-- Drop table

-- DROP TABLE dw.tf_fin_ap_po_order;

CREATE TABLE dw.tf_fin_ap_po_order (
	client_code varchar(9) NULL, -- �ͻ��˱���
	company_wid int8 NULL, -- ��˾��������
	vendor_wid int8 NULL, -- ��Ӧ�̱�������
	gl_transaction_type varchar(3) NULL, -- ���� g/l ��ʶ
	clearing_date varchar(24) NULL, -- ��������
	clearing_document_number varchar(30) NULL, -- ���㵥�ݵĵ��ݺ���
	assignment_number varchar(54) NULL, -- ������
	account_doc_number varchar(30) NULL, -- ���ƾ֤���
	account_doc_line_number varchar(9) NULL, -- ���ƾ֤�е�����Ŀ��
	post_date varchar(24) NULL, -- ƾ֤�еĹ�������
	document_date varchar(24) NULL, -- ƾ֤�е�ƾ֤����
	entered_document_date varchar(24) NULL, -- ���ƾ֤��������
	from_currency varchar(15) NULL, -- ������
	reference_doc_number varchar(48) NULL, -- �ο�ƾ֤��
	document_type varchar(6) NULL, -- ƾ֤����
	fiscal_period_wid int8 NULL, -- ����ڼ�����
	posting_key varchar(6) NULL, -- ���ʴ���
	target_special_flag varchar(3) NULL, -- Ŀ���ر����ʱ�־
	debit_credit_flag varchar(3) NULL, -- �跽/������ʶ
	business_area varchar(12) NULL, -- ҵ��Χ
	sales_tax_code varchar(6) NULL, -- ����˰����
	to_currency numeric(13,2) NULL, -- ����λ�ҼƵĽ��
	from_currency_amount numeric(13,2) NULL, -- ƾ֤���ҽ��
	tax_amount_local_currency numeric(13,2) NULL, -- �ñ��ұ�ʾ��˰�ս��
	tax_amount_document_currency numeric(13,2) NULL, -- ��ƾ֤���ұ�ʾ��˰�ս��
	valuation_difference numeric(13,2) NULL, -- ���۲��
	second_local_currency_differ numeric(13,2) NULL, -- �ڶ����ҵ��������
	line_item_text varchar(150) NULL, -- ��Ŀ�ı�
	order_number varchar(36) NULL, -- ������
	main_asset_number varchar(36) NULL, -- ���ʲ���
	asset_sub_number varchar(12) NULL, -- �ʲ��μ����
	purchasing_doc_number varchar(30) NULL, -- �ɹ�ƾ֤��
	purchasing_doc_line_item varchar(15) NULL, -- �ɹ�ƾ֤����Ŀ���
	gl_account_wid int8 NULL, -- ���ʿ�Ŀ��Ŵ����
	general_ledger_account varchar(30) NULL, -- �ܷ�������Ŀ
	financial_budget_item varchar(9) NULL, -- ����Ԥ����Ŀ
	branch_account_number varchar(30) NULL, -- ��֧�ʺ�
	baseline_date_for_due_date varchar(24) NULL, -- ���ڵ����ռ���Ļ�׼����
	terms_payment_method varchar(12) NULL, -- ������������
	cash_discount_days1 numeric(3) NULL, -- �ֽ��ۿ����� 1
	cash_discount_days2 numeric(3) NULL, -- �ֽ��ۿ����� 2
	net_payment_terms_period numeric(3) NULL, -- ��֧�������ڶ�
	payment_method varchar(3) NULL, -- ���ʽ
	payment_block_key varchar(3) NULL, -- �ո�������
	fixed_payment_terms varchar(3) NULL, -- �̶���������
	house_bank_short_key varchar(15) NULL, -- �������еļ�Ҫ��
	partner_bank_type varchar(12) NULL, -- ������������
	invoice_number_refer varchar(30) NULL, -- ҵ�������ķ�Ʊ����
	relevant_invoice_fiscal_year varchar(12) NULL, -- �йط�Ʊ�Ĳ������ (����ƾ��)
	relevant_invoice_line_item varchar(9) NULL, -- ��ط�Ʊ�е�����Ŀ
	invoice_list_number varchar(24) NULL, -- ��Ʊ�嵥��
	customs_tariff_number varchar(24) NULL, -- ��˰˰��
	customs_date varchar(24) NULL, -- ��˰����
	supplying_country varchar(9) NULL, -- ��������
	payments_reason_code varchar(9) NULL, -- ����ԭ�����
	cost_center_wid int8 NULL, -- �ɱ����Ĵ����
	funds_center varchar(48) NULL DEFAULT NULL::character varying, -- ��������
	profit_center varchar(30) NULL, -- ��������
	functional_area varchar(48) NULL, -- ���ܷ�Χ
	data_type varchar(8) NULL COLLATE "C", -- ����
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
COMMENT ON TABLE dw.tf_fin_ap_po_order IS 'Ӧ������-PO�ջ���';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ap_po_order.client_code IS '�ͻ��˱���';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.company_wid IS '��˾��������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.vendor_wid IS '��Ӧ�̱�������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.gl_transaction_type IS '���� g/l ��ʶ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.clearing_date IS '��������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.clearing_document_number IS '���㵥�ݵĵ��ݺ���';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.assignment_number IS '������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.account_doc_number IS '���ƾ֤���';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.account_doc_line_number IS '���ƾ֤�е�����Ŀ��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.post_date IS 'ƾ֤�еĹ�������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.document_date IS 'ƾ֤�е�ƾ֤����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.entered_document_date IS '���ƾ֤��������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.from_currency IS '������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.reference_doc_number IS '�ο�ƾ֤��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.document_type IS 'ƾ֤����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.fiscal_period_wid IS '����ڼ�����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.posting_key IS '���ʴ���';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.target_special_flag IS 'Ŀ���ر����ʱ�־';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.debit_credit_flag IS '�跽/������ʶ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.business_area IS 'ҵ��Χ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.sales_tax_code IS '����˰����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.to_currency IS '����λ�ҼƵĽ��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.from_currency_amount IS 'ƾ֤���ҽ��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.tax_amount_local_currency IS '�ñ��ұ�ʾ��˰�ս��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.tax_amount_document_currency IS '��ƾ֤���ұ�ʾ��˰�ս��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.valuation_difference IS '���۲��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.second_local_currency_differ IS '�ڶ����ҵ��������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.line_item_text IS '��Ŀ�ı�';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.order_number IS '������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.main_asset_number IS '���ʲ���';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.asset_sub_number IS '�ʲ��μ����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.purchasing_doc_number IS '�ɹ�ƾ֤��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.purchasing_doc_line_item IS '�ɹ�ƾ֤����Ŀ���';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.gl_account_wid IS '���ʿ�Ŀ��Ŵ����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.general_ledger_account IS '�ܷ�������Ŀ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.financial_budget_item IS '����Ԥ����Ŀ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.branch_account_number IS '��֧�ʺ�';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.baseline_date_for_due_date IS '���ڵ����ռ���Ļ�׼����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.terms_payment_method IS '������������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.cash_discount_days1 IS '�ֽ��ۿ����� 1';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.cash_discount_days2 IS '�ֽ��ۿ����� 2';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.net_payment_terms_period IS '��֧�������ڶ�';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.payment_method IS '���ʽ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.payment_block_key IS '�ո�������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.fixed_payment_terms IS '�̶���������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.house_bank_short_key IS '�������еļ�Ҫ��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.partner_bank_type IS '������������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.invoice_number_refer IS 'ҵ�������ķ�Ʊ����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.relevant_invoice_fiscal_year IS '�йط�Ʊ�Ĳ������ (����ƾ��)';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.relevant_invoice_line_item IS '��ط�Ʊ�е�����Ŀ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.invoice_list_number IS '��Ʊ�嵥��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.customs_tariff_number IS '��˰˰��';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.customs_date IS '��˰����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.supplying_country IS '��������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.payments_reason_code IS '����ԭ�����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.cost_center_wid IS '�ɱ����Ĵ����';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.funds_center IS '��������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.profit_center IS '��������';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.functional_area IS '���ܷ�Χ';
COMMENT ON COLUMN dw.tf_fin_ap_po_order.data_type IS '����';

-- Permissions

ALTER TABLE dw.tf_fin_ap_po_order OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ap_po_order TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ap_po_order TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_ap_po_order TO gr_uqry_data;
