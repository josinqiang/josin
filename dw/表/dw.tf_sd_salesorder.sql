-- Drop table

-- DROP TABLE dw.tf_sd_salesorder;

CREATE TABLE dw.tf_sd_salesorder (
	mandt varchar(9) NULL, -- �ͻ���
	header_sales_catg varchar(12) NULL, -- ͷ������Ŀ���
	header_sales_catg_name varchar(60) NULL, -- ͷ������Ŀ�������
	so_header_code varchar(30) NULL, -- ���۶���ͷcode
	sold_to_customer_wid int8 NULL, -- �۴﷽�ͻ������
	ship_to_customer_code varchar(30) NULL, -- �˴﷽code
	po_number varchar(60) NULL, -- �ɹ�������
	po_date varchar(24) NULL, -- �ɹ���������
	request_delivery_date varchar(24) NULL, -- ���󽻻�����
	delivery_factory_code varchar(12) NULL, -- ��������
	delivery_frozen varchar(6) NULL, -- ��������
	invoice_frozen varchar(6) NULL, -- ���߷�Ʊ����
	pricing_date varchar(24) NULL, -- ��������
	pay_method_code varchar(12) NULL, -- ��������
	pay_method_name varchar(90) NULL, -- ������������
	inco1 varchar(9) NULL, -- ����ó������1
	inco2 varchar(84) NULL, -- ����ó������2
	pay_reason_code varchar(9) NULL, -- ����ԭ��
	pay_reason_name varchar(120) NULL, -- ����ԭ������
	so_line_code varchar(18) NULL, -- ���۶�����code
	item_wid int8 NULL, -- ���ϺŴ����
	po_line_quantity numeric(15,3) NULL, -- ��������������
	po_line_price varchar(48) NULL, -- ���������۵���
	po_line_net_price numeric(11,2) NULL, -- ���������۾���
	po_line_net_aount numeric(15,2) NULL, -- ���������۾�ֵ
	from_currency varchar(15) NULL, -- ԭλ��
	to_currency varchar(15) NULL, -- ��λ��
	currency_rate numeric(9,5) NULL, -- ����
	item_short_desc varchar(120) NULL, -- ��Ŀ������
	customer_item_num varchar(105) NULL, -- �ͻ����ϱ��
	line_sales_catg varchar(12) NULL, -- ��������Ŀ���
	line_sales_catg_name varchar(60) NULL, -- ��������Ŀ�������
	factory_wid int8 NULL, -- ������������
	po_detail_num varchar(105) NULL, -- PO��ϸ
	sold_to_area_code varchar(18) NULL, -- �����������
	sold_to_area_name varchar(60) NULL, -- ������������
	invoice_date_wid int8 NULL, -- ���߷�Ʊ���ڴ����
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
COMMENT ON TABLE dw.tf_sd_salesorder IS '��ʵ��-���۶���  ';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_salesorder.mandt IS '�ͻ���';
COMMENT ON COLUMN dw.tf_sd_salesorder.header_sales_catg IS 'ͷ������Ŀ���';
COMMENT ON COLUMN dw.tf_sd_salesorder.header_sales_catg_name IS 'ͷ������Ŀ�������';
COMMENT ON COLUMN dw.tf_sd_salesorder.so_header_code IS '���۶���ͷcode';
COMMENT ON COLUMN dw.tf_sd_salesorder.sold_to_customer_wid IS '�۴﷽�ͻ������';
COMMENT ON COLUMN dw.tf_sd_salesorder.ship_to_customer_code IS '�˴﷽code';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_number IS '�ɹ�������';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_date IS '�ɹ���������';
COMMENT ON COLUMN dw.tf_sd_salesorder.request_delivery_date IS '���󽻻�����';
COMMENT ON COLUMN dw.tf_sd_salesorder.delivery_factory_code IS '��������';
COMMENT ON COLUMN dw.tf_sd_salesorder.delivery_frozen IS '��������';
COMMENT ON COLUMN dw.tf_sd_salesorder.invoice_frozen IS '���߷�Ʊ����';
COMMENT ON COLUMN dw.tf_sd_salesorder.pricing_date IS '��������';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_method_code IS '��������';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_method_name IS '������������';
COMMENT ON COLUMN dw.tf_sd_salesorder.inco1 IS '����ó������1';
COMMENT ON COLUMN dw.tf_sd_salesorder.inco2 IS '����ó������2';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_reason_code IS '����ԭ��';
COMMENT ON COLUMN dw.tf_sd_salesorder.pay_reason_name IS '����ԭ������';
COMMENT ON COLUMN dw.tf_sd_salesorder.so_line_code IS '���۶�����code';
COMMENT ON COLUMN dw.tf_sd_salesorder.item_wid IS '���ϺŴ����';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_quantity IS '��������������';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_price IS '���������۵���';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_net_price IS '���������۾���';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_line_net_aount IS '���������۾�ֵ';
COMMENT ON COLUMN dw.tf_sd_salesorder.from_currency IS 'ԭλ��';
COMMENT ON COLUMN dw.tf_sd_salesorder.to_currency IS '��λ��';
COMMENT ON COLUMN dw.tf_sd_salesorder.currency_rate IS '����';
COMMENT ON COLUMN dw.tf_sd_salesorder.item_short_desc IS '��Ŀ������';
COMMENT ON COLUMN dw.tf_sd_salesorder.customer_item_num IS '�ͻ����ϱ��';
COMMENT ON COLUMN dw.tf_sd_salesorder.line_sales_catg IS '��������Ŀ���';
COMMENT ON COLUMN dw.tf_sd_salesorder.line_sales_catg_name IS '��������Ŀ�������';
COMMENT ON COLUMN dw.tf_sd_salesorder.factory_wid IS '������������';
COMMENT ON COLUMN dw.tf_sd_salesorder.po_detail_num IS 'PO��ϸ';
COMMENT ON COLUMN dw.tf_sd_salesorder.sold_to_area_code IS '�����������';
COMMENT ON COLUMN dw.tf_sd_salesorder.sold_to_area_name IS '������������';
COMMENT ON COLUMN dw.tf_sd_salesorder.invoice_date_wid IS '���߷�Ʊ���ڴ����';

-- Permissions

ALTER TABLE dw.tf_sd_salesorder OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_salesorder TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_salesorder TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_salesorder TO gr_uqry_data;
