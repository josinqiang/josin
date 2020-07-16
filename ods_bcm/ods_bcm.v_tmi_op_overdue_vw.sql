-- Drop table

-- DROP TABLE ods_bcm.v_tmi_op_overdue_vw;

CREATE TABLE ods_bcm.v_tmi_op_overdue_vw (
	primary_key numeric(15) NULL, -- ����
	document_number varchar(10) NULL, -- ƾ֤���
	accounting_year varchar(4) NULL, -- ������
	company_code varchar(4) NULL, -- ��˾����
	customer_name varchar(100) NULL, -- �ͻ�����
	customer_code varchar(10) NULL, -- �ͻ�����
	base_date varchar(20) NULL, -- ��׼��
	account_period varchar(20) NULL, -- ����
	quota varchar(15) NULL, -- ���
	credit_control_scope varchar(20) NULL, -- �Ŵ����Ʒ�Χ
	sales_order_no varchar(10) NULL, -- ���۶�����
	overdue_amount varchar(15) NULL, -- ���ڽ��
	overdue_currency varchar(20) NULL, -- ���ڱ���
	posting_date date NULL, -- ��������
	coping_day date NULL, -- Ӧ����
	operation_type varchar(20) NULL, -- ��������
	based_date varchar(10) NULL, -- ��׼����
	customer_id varchar(10) NULL, -- �ͻ�����
	invoice varchar(10) NULL, -- ��Ʊ
	amount_in_reporting_currency varchar(15) NULL, -- ��λ�ҽ��
	voucher_currency_amount varchar(15) NULL, -- ƾ֤���ҽ��
	document_type varchar(20) NULL, -- ƾ֤����
	currency varchar(4) NULL, -- ����
	credit_control_scope_2 varchar(4) NULL, -- �Ŵ����Ʒ�Χ2
	customer_type varchar(20) NULL, -- �ͻ�����
	selling_party varchar(10) NULL, -- �۴﷽
	decision_maker varchar(10) NULL, -- ���߷�
	receiving_party varchar(10) NULL, -- ��ȡ��Ʊ��
	service_provider varchar(10) NULL, -- �ʹ﷽
	payer varchar(10) NULL, -- ���
	delivery_number varchar(10) NULL, -- ��������
	clearing_state varchar(20) NULL, -- ����״̬
	international_trade_terms_part_1 varchar(3) NULL, -- ����ó�������1
	terms_of_international_trade_part_2 varchar(30) NULL, -- ����ó����������2
	delivery_method varchar(20) NULL, -- ������ʽ
	delivery_date varchar(10) NULL, -- ������
	row_item varchar(6) NULL, -- ����Ŀ
	product_name_and_description varchar(140) NULL, -- ��Ʒ���ƺ�����
	batch varchar(4) NULL, -- ����
	"number" varchar(15) NULL, -- ����
	relative_no varchar(10) NULL, -- ��Է����
	voucher_no_2 varchar(10) NULL, -- ƾ֤���2
	company_code_2 varchar(4) NULL, -- ��˾����2
	fiscal_year_2 varchar(4) NULL, -- ������2
	create_time date NULL, -- ����ʱ��
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_bcm.v_tmi_op_overdue_vw IS '�ͻ�����';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.primary_key IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.document_number IS 'ƾ֤���';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.accounting_year IS '������';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.company_code IS '��˾����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_name IS '�ͻ�����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_code IS '�ͻ�����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.base_date IS '��׼��';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.account_period IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.quota IS '���';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.credit_control_scope IS '�Ŵ����Ʒ�Χ';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.sales_order_no IS '���۶�����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.overdue_amount IS '���ڽ��';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.overdue_currency IS '���ڱ���';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.posting_date IS '��������';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.coping_day IS 'Ӧ����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.operation_type IS '��������';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.based_date IS '��׼����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_id IS '�ͻ�����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.invoice IS '��Ʊ';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.amount_in_reporting_currency IS '��λ�ҽ��';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.voucher_currency_amount IS 'ƾ֤���ҽ��';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.document_type IS 'ƾ֤����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.currency IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.credit_control_scope_2 IS '�Ŵ����Ʒ�Χ2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.customer_type IS '�ͻ�����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.selling_party IS '�۴﷽';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.decision_maker IS '���߷�';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.receiving_party IS '��ȡ��Ʊ��';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.service_provider IS '�ʹ﷽';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.payer IS '���';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.delivery_number IS '��������';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.clearing_state IS '����״̬';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.international_trade_terms_part_1 IS '����ó�������1';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.terms_of_international_trade_part_2 IS '����ó����������2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.delivery_method IS '������ʽ';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.delivery_date IS '������';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.row_item IS '����Ŀ';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.product_name_and_description IS '��Ʒ���ƺ�����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.batch IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw."number" IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.relative_no IS '��Է����';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.voucher_no_2 IS 'ƾ֤���2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.company_code_2 IS '��˾����2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.fiscal_year_2 IS '������2';
COMMENT ON COLUMN ods_bcm.v_tmi_op_overdue_vw.create_time IS '����ʱ��';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_op_overdue_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_op_overdue_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_op_overdue_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_op_overdue_vw TO gr_uqry_data;
