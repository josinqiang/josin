-- Drop table

-- DROP TABLE dw.tf_pur_purchase_order_info;

CREATE TABLE dw.tf_pur_purchase_order_info (
	client varchar(9) NULL, -- �ͻ���
	purchase_document_type varchar(12) NULL, -- �ɹ����
	purchase_document_number varchar(30) NULL, -- �ɹ�ƾ֤
	vendor_wid int8 NULL, -- ��Ӧ�̱�������
	purchase_document_date_wid int8 NULL, -- ƾ֤���ڴ����
	payment_method varchar(12) NULL, -- ��������
	cash_prompt_payment_discount_days numeric(3) NULL, -- ����
	incoterms_part1 varchar(9) NULL, -- ���ʸ�������
	currency_key varchar(15) NULL, -- ����
	exchange_rate numeric(9,5) NULL, -- ����
	salesperson varchar(90) NULL, -- ����Ա
	vendor_telephone_number varchar(48) NULL, -- �绰
	languages varchar(3) NULL, -- ����
	collective_number varchar(30) NULL, -- ���ܺ�
	purchasing_organization varchar(12) NULL, -- �ɹ���֯
	purchasing_group varchar(9) NULL, -- �ɹ���
	company_wid int8 NULL, -- ��˾��������
	contract_code varchar(90) NULL, -- ��ͬ��
	business_type varchar(60) NULL, -- ҵ������
	return_settlement_method varchar(3) NULL, -- �˻����㷽ʽ
	exchange_return_trade_terms varchar(105) NULL, -- �˻�������ó��
	import_invoice_no varchar(90) NULL, -- ���ڷ�Ʊ��
	delivery_method varchar(675) NULL, -- ������ʽ
	place_of_delivery varchar(675) NULL, -- ������
	package_and_transport varchar(675) NULL, -- ��װ�����䷽ʽ
	delivery_cycle varchar(675) NULL, -- ��������
	warranty_terms varchar(675) NULL, -- �ʱ�����
	other_instructions varchar(675) NULL, -- ����˵��
	defects_liability_period varchar(30) NULL, -- ������
	fac varchar(15) NULL, -- fac
	release_group varchar(6) NULL, -- ������
	release_strategy varchar(6) NULL, -- ��������
	release_indicator_purchasing_document varchar(3) NULL, -- ������ʶ
	item_number_of_purchasing_document varchar(15) NULL, -- ��Ŀ
	line_company_wid int8 NULL, -- ��˾������
	account_assignment_category varchar(3) NULL, -- ��Ŀ�������
	subitem_category varchar(3) NULL, -- ��Ŀ����
	item_wid int8 NULL, -- ���ϴ����
	short_text varchar(120) NULL, -- ���ı�
	purchase_order_quantity numeric(13,3) NULL, -- �ɹ���������
	purchase_order_unit_of_measure varchar(9) NULL, -- oun������λ
	planned_delivery_time_in_days numeric(3) NULL, -- ����ļƻ�����ʱ��
	net_price_in_document_currency numeric(11,2) NULL, -- ����
	currency varchar(15) NULL, -- ����
	price_unit numeric(5) NULL, -- �۸�λ
	order_price_unit_purchasing varchar(9) NULL, -- oun�����۸�λ
	material_group varchar(27) NULL, -- ������
	factory_wid int8 NULL, -- ���������
	storage_location varchar(12) NULL, -- ���ص�
	requirement_tracking_number varchar(30) NULL, -- �������
	requester varchar(36) NULL, -- ������
	material_number varchar(54) NULL,
	material_wid int8 NULL, -- im���ϴ����
	purchasing_info_record varchar(30) NULL, -- ��Ϣ��¼
	returns_item varchar(3) NULL, -- �˻���Ŀ
	purchase_requisition_number varchar(30) NULL, -- �ɹ�����
	purchase_requisition_item_num varchar(15) NULL, -- ������Ŀ
	purchase_agreement varchar(30) NULL, -- ���Э��
	principal_purchase_agreement_lin_item varchar(15) NULL, -- ��ͬ��Ŀ
	rfq_number varchar(30) NULL, -- ��������
	item_number_of_rfq varchar(15) NULL, -- ��Ŀ
	purchase_document_high_level varchar(15) NULL, -- �߼���Ŀ
	purchase_document_sub_category varchar(3) NULL, -- ����Ŀ���
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
COMMENT ON TABLE dw.tf_pur_purchase_order_info IS '��ʵ��-�ɹ�����';

-- Column comments

COMMENT ON COLUMN dw.tf_pur_purchase_order_info.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_type IS '�ɹ����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_number IS '�ɹ�ƾ֤';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.vendor_wid IS '��Ӧ�̱�������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_date_wid IS 'ƾ֤���ڴ����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.payment_method IS '��������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.cash_prompt_payment_discount_days IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.incoterms_part1 IS '���ʸ�������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.currency_key IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.exchange_rate IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.salesperson IS '����Ա';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.vendor_telephone_number IS '�绰';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.languages IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.collective_number IS '���ܺ�';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchasing_organization IS '�ɹ���֯';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchasing_group IS '�ɹ���';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.company_wid IS '��˾��������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.contract_code IS '��ͬ��';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.business_type IS 'ҵ������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.return_settlement_method IS '�˻����㷽ʽ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.exchange_return_trade_terms IS '�˻�������ó��';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.import_invoice_no IS '���ڷ�Ʊ��';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.delivery_method IS '������ʽ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.place_of_delivery IS '������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.package_and_transport IS '��װ�����䷽ʽ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.delivery_cycle IS '��������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.warranty_terms IS '�ʱ�����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.other_instructions IS '����˵��';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.defects_liability_period IS '������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.fac IS 'fac';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.release_group IS '������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.release_strategy IS '��������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.release_indicator_purchasing_document IS '������ʶ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.item_number_of_purchasing_document IS '��Ŀ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.line_company_wid IS '��˾������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.account_assignment_category IS '��Ŀ�������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.subitem_category IS '��Ŀ����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.item_wid IS '���ϴ����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.short_text IS '���ı�';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_order_quantity IS '�ɹ���������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_order_unit_of_measure IS 'oun������λ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.planned_delivery_time_in_days IS '����ļƻ�����ʱ��';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.net_price_in_document_currency IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.currency IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.price_unit IS '�۸�λ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.order_price_unit_purchasing IS 'oun�����۸�λ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.material_group IS '������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.storage_location IS '���ص�';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.requirement_tracking_number IS '�������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.requester IS '������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.material_wid IS 'im���ϴ����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchasing_info_record IS '��Ϣ��¼';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.returns_item IS '�˻���Ŀ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_requisition_number IS '�ɹ�����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_requisition_item_num IS '������Ŀ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_agreement IS '���Э��';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.principal_purchase_agreement_lin_item IS '��ͬ��Ŀ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.rfq_number IS '��������';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.item_number_of_rfq IS '��Ŀ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_high_level IS '�߼���Ŀ';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info.purchase_document_sub_category IS '����Ŀ���';

-- Permissions

ALTER TABLE dw.tf_pur_purchase_order_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pur_purchase_order_info TO gr_uqry_data;
