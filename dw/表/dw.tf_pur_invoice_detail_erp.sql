-- Drop table

-- DROP TABLE dw.tf_pur_invoice_detail_erp;

CREATE TABLE dw.tf_pur_invoice_detail_erp (
	client_code varchar(9) NULL, -- �ͻ��˱���
	fiscal_year varchar(12) NULL, -- ������
	company_wid int8 NULL, -- ��˾��������
	invoice_number varchar(30) NULL, -- ��Ʊ���
	invoice_date_wid int8 NULL, -- ��Ʊ���ڴ����
	post_date_wid int8 NULL, -- �������ڴ����
	from_currency_invoice_amount numeric(13,2) NULL, -- ���
	from_currency_invoice_tax_amount numeric(13,2) NULL, -- ˰��
	tax_code varchar(6) NULL, -- ����˰����
	"text" varchar(150) NULL, -- �ı�
	payment_rules text NULL, -- ֧������
	baseline_date varchar(24) NULL, -- ��׼����
	unplan_delivery_cost numeric(13,2) NULL, -- δ�ƻ��Ľ�����
	currency varchar(15) NULL, -- ����
	rate numeric(9,5) NULL, -- ����
	document_type varchar(6) NULL, -- ƾ֤����
	diff_invoice_party varchar(30) NULL, -- ��Ʊ��(��Ӧ�̱���)
	assign_number varchar(54) NULL, -- ����
	tax_currency varchar(15) NULL, -- ˰��ƾ֤����
	baseline_date2 text NULL, -- ��������
	payment_rule varchar(12) NULL, -- ��������
	cash_discount_day1 numeric(3) NULL, -- ��������-����1
	cash_discount_day2 numeric(3) NULL, -- ��������-����2
	due_date_wid int8 NULL, -- �����մ����
	payment_method varchar(3) NULL, -- ���ʽ
	payment_block_flag varchar(3) NULL, -- �����
	invoice_reference varchar(30) NULL, -- ��Ʊ�ο���
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
COMMENT ON TABLE dw.tf_pur_invoice_detail_erp IS '��ʵ��-��Ʊ��������Դ��ERP';

-- Column comments

COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.client_code IS '�ͻ��˱���';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.fiscal_year IS '������';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.company_wid IS '��˾��������';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.invoice_number IS '��Ʊ���';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.invoice_date_wid IS '��Ʊ���ڴ����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.post_date_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.from_currency_invoice_amount IS '���';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.from_currency_invoice_tax_amount IS '˰��';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.tax_code IS '����˰����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp."text" IS '�ı�';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_rules IS '֧������';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.baseline_date IS '��׼����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.unplan_delivery_cost IS 'δ�ƻ��Ľ�����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.currency IS '����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.rate IS '����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.document_type IS 'ƾ֤����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.diff_invoice_party IS '��Ʊ��(��Ӧ�̱���)';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.assign_number IS '����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.tax_currency IS '˰��ƾ֤����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.baseline_date2 IS '��������';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_rule IS '��������';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.cash_discount_day1 IS '��������-����1';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.cash_discount_day2 IS '��������-����2';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.due_date_wid IS '�����մ����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_method IS '���ʽ';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.payment_block_flag IS '�����';
COMMENT ON COLUMN dw.tf_pur_invoice_detail_erp.invoice_reference IS '��Ʊ�ο���';

-- Permissions

ALTER TABLE dw.tf_pur_invoice_detail_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_invoice_detail_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_invoice_detail_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pur_invoice_detail_erp TO gr_uqry_data;
