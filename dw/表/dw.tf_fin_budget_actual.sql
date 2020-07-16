-- Drop table

-- DROP TABLE dw.tf_fin_budget_actual;

CREATE TABLE dw.tf_fin_budget_actual (
	client varchar(9) NULL, -- �ͻ���
	company_wid int8 NULL, -- ��˾��������
	line_item_doc_num varchar(30) NULL, -- fm:ƾ֤����Ŀ��ƾ֤���
	fin_management_area varchar(12) NULL, -- �������Χ
	trfm_line_item_num varchar(9) NULL, -- ��trfm����Ŀ�еĹ����к�
	amount_type varchar(12) NULL, -- �������
	ledger varchar(6) NULL, -- ������
	database_line_key_num varchar(48) NULL, -- ���ݿ��е��м�ֵ�������ʶ��
	funds_manage_update_date varchar(24) NULL, -- �ʽ����-��������
	cash_valid_year varchar(12) NULL, -- �ֽ���Ч���
	fiscal_period_wid int8 NULL, -- �������ڼ�����
	fm_commitment_carryforward_status varchar(6) NULL, -- fm:��ŵ��תstatus
	year_end_close_status_backup varchar(6) NULL, -- ��ĩ����״̬(����)
	year_end_close_transfer_num varchar(6) NULL, -- ���չ��ʴ����
	object_number varchar(66) NULL, -- �����
	transaction_currency_amount numeric(13,2) NULL, -- ҵ����ҼƼ۵Ľ��
	fm_area_currency_amount numeric(13,2) NULL, -- ��fm��Χ���ҼƵĽ��
	funds_center varchar(48) NULL, -- ��������
	fund varchar(30) NULL, -- ����
	commitment_item varchar(72) NULL, -- ��ŵ��Ŀ
	functional_area varchar(48) NULL, -- ���ܷ�Χ
	funded_program varchar(72) NULL, -- ����ƻ�
	grants varchar(60) NULL, -- ͬ��
	business_area varchar(12) NULL, -- ҵ��Χ
	profit_center varchar(30) NULL, -- ��������
	value_type varchar(6) NULL, -- ֵ����
	co_business_transaction varchar(12) NULL, -- co:ҵ������
	funds_manage_static_flag varchar(3) NULL, -- �������ͳ�Ʊ�ʶ
	transaction_currency varchar(15) NULL, -- ���׻���
	carryforward_level varchar(3) NULL, -- ��ת���
	item_text varchar(150) NULL, -- ��Ŀ�ı�
	funds_manage_transaction_num varchar(48) NULL, -- �ʽ����������
	funds_manage_control_num varchar(60) NULL, -- �ʽ������Ʊ��
	fm_actual_and_commitment_data_customer varchar(30) NULL, -- fm:ʵ�ʺͳ�ŵ���ݵĿͻ��ֶ�
	class_of_docu_lines varchar(12) NULL, -- ƾ֤�еķ���
	fm_budget_period varchar(30) NULL, -- fm:Ԥ���ڼ�
	general_ledger_account_wid int8 NULL, -- �ܷ�������Ŀ�����
	company_code_for_pay_doc_num varchar(12) NULL, -- �ո�ƾ֤�ŵĹ�˾����
	fiscal_year_for_pay_doc_num varchar(12) NULL, -- �ո�ƾ֤�ŵĻ�����
	payment_doc_num varchar(30) NULL, -- ֧��ƾ֤��
	item_for_pay_doc_num varchar(9) NULL, -- �ո�ƾ֤�ŵ�����Ŀ
	fiscal_year_for_fi_doc_num varchar(12) NULL, -- fi:ƾ֤�ŵĻ�����
	fi_doc_num varchar(30) NULL, -- fiƾ֤��
	doc_item_for_fi_doc_num varchar(9) NULL, -- fi:ƾ֤�ŵ�ƾ֤��Ŀ
	cash_discount_amount_local_currency numeric(13,2) NULL, -- ���ҵ��ֽ��ۿ۽��
	exchange_rate_gain_loss_realized numeric(13,2) NULL, -- ��ʵ�ֵĻ�������
	fm_doc_pay_status varchar(3) NULL, -- fm:ƾ֤�ĸ���״̬
	posting_day varchar(24) NULL, -- ��������
	quantity numeric(13,3) NULL, -- ����
	measure_base_unit varchar(9) NULL, -- ����������λ
	trading_partner_company_code varchar(18) NULL, -- ó�׻��Ĺ�˾��ʶ
	line_item_reference_key varchar(60) NULL, -- ����Ŀ�Ĳο���
	fm_pay_update_procedure varchar(12) NULL, -- fm:�еĸ�����³���
	predecessor_doc_category varchar(9) NULL, -- ��ǰƾ֤Ŀ¼
	predecessor_doc_num varchar(30) NULL, -- ��ǰƾ֤���
	predecessor_doc_org varchar(30) NULL, -- ��ǰƾ֤��֯
	predecessor_doc_item varchar(15) NULL, -- ��ǰƾ֤��Ŀ
	predecessor_account_assignment varchar(15) NULL, -- ��ǰ��Ŀ����
	reference_transaction varchar(15) NULL, -- �ο�����
	logical_system varchar(30) NULL, -- �߼�ϵͳ
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
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_fin_budget_actual IS '��ʵ��-Ԥ��ʵ����';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_budget_actual.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.company_wid IS '��˾��������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.line_item_doc_num IS 'fm:ƾ֤����Ŀ��ƾ֤���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fin_management_area IS '�������Χ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.trfm_line_item_num IS '��trfm����Ŀ�еĹ����к�';
COMMENT ON COLUMN dw.tf_fin_budget_actual.amount_type IS '�������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.ledger IS '������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.database_line_key_num IS '���ݿ��е��м�ֵ�������ʶ��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_update_date IS '�ʽ����-��������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.cash_valid_year IS '�ֽ���Ч���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fiscal_period_wid IS '�������ڼ�����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_commitment_carryforward_status IS 'fm:��ŵ��תstatus';
COMMENT ON COLUMN dw.tf_fin_budget_actual.year_end_close_status_backup IS '��ĩ����״̬(����)';
COMMENT ON COLUMN dw.tf_fin_budget_actual.year_end_close_transfer_num IS '���չ��ʴ����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.object_number IS '�����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.transaction_currency_amount IS 'ҵ����ҼƼ۵Ľ��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_area_currency_amount IS '��fm��Χ���ҼƵĽ��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_center IS '��������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fund IS '����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.commitment_item IS '��ŵ��Ŀ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.functional_area IS '���ܷ�Χ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funded_program IS '����ƻ�';
COMMENT ON COLUMN dw.tf_fin_budget_actual.grants IS 'ͬ��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.business_area IS 'ҵ��Χ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.profit_center IS '��������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.value_type IS 'ֵ����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.co_business_transaction IS 'co:ҵ������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_static_flag IS '�������ͳ�Ʊ�ʶ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.transaction_currency IS '���׻���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.carryforward_level IS '��ת���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.item_text IS '��Ŀ�ı�';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_transaction_num IS '�ʽ����������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.funds_manage_control_num IS '�ʽ������Ʊ��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_actual_and_commitment_data_customer IS 'fm:ʵ�ʺͳ�ŵ���ݵĿͻ��ֶ�';
COMMENT ON COLUMN dw.tf_fin_budget_actual.class_of_docu_lines IS 'ƾ֤�еķ���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_budget_period IS 'fm:Ԥ���ڼ�';
COMMENT ON COLUMN dw.tf_fin_budget_actual.general_ledger_account_wid IS '�ܷ�������Ŀ�����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.company_code_for_pay_doc_num IS '�ո�ƾ֤�ŵĹ�˾����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fiscal_year_for_pay_doc_num IS '�ո�ƾ֤�ŵĻ�����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.payment_doc_num IS '֧��ƾ֤��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.item_for_pay_doc_num IS '�ո�ƾ֤�ŵ�����Ŀ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fiscal_year_for_fi_doc_num IS 'fi:ƾ֤�ŵĻ�����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fi_doc_num IS 'fiƾ֤��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.doc_item_for_fi_doc_num IS 'fi:ƾ֤�ŵ�ƾ֤��Ŀ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.cash_discount_amount_local_currency IS '���ҵ��ֽ��ۿ۽��';
COMMENT ON COLUMN dw.tf_fin_budget_actual.exchange_rate_gain_loss_realized IS '��ʵ�ֵĻ�������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_doc_pay_status IS 'fm:ƾ֤�ĸ���״̬';
COMMENT ON COLUMN dw.tf_fin_budget_actual.posting_day IS '��������';
COMMENT ON COLUMN dw.tf_fin_budget_actual.quantity IS '����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.measure_base_unit IS '����������λ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.trading_partner_company_code IS 'ó�׻��Ĺ�˾��ʶ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.line_item_reference_key IS '����Ŀ�Ĳο���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.fm_pay_update_procedure IS 'fm:�еĸ�����³���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_category IS '��ǰƾ֤Ŀ¼';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_num IS '��ǰƾ֤���';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_org IS '��ǰƾ֤��֯';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_doc_item IS '��ǰƾ֤��Ŀ';
COMMENT ON COLUMN dw.tf_fin_budget_actual.predecessor_account_assignment IS '��ǰ��Ŀ����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.reference_transaction IS '�ο�����';
COMMENT ON COLUMN dw.tf_fin_budget_actual.logical_system IS '�߼�ϵͳ';

-- Permissions

ALTER TABLE dw.tf_fin_budget_actual OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_budget_actual TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_budget_actual TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_budget_actual TO gr_uqry_data;
