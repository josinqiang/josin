-- Drop table

-- DROP TABLE dw.tf_sd_customer_po_bcp;

CREATE TABLE dw.tf_sd_customer_po_bcp (
	order_id numeric(19) NULL, -- �ɹ�����id
	order_no varchar(150) NULL, -- �ɹ��������
	cust_order_no varchar(150) NULL, -- �ͻ����ɹ�������
	order_type_code numeric(10) NULL, -- ״̬����
	order_type_name text NULL, -- ״̬����
	customer_wid int8 NULL, -- �ͻ���˾id�����
	customer_name varchar(300) NULL, -- �ͻ���˾����
	company_address varchar(300) NULL, -- �ͻ���˾��ַ
	purchase_id numeric(19) NULL, -- �ͻ��ɹ�id
	purchase_name varchar(300) NULL, -- �ͻ��ɹ�����
	purchase_account varchar(300) NULL, -- �ͻ��ɹ��˺�
	purchase_tel varchar(150) NULL, -- �ͻ��ɹ��绰
	supplier varchar(150) NULL, -- ������
	supplier_name varchar(300) NULL, -- ����������
	supplier_tel varchar(150) NULL, -- ��Ӧ�̵绰
	supplier_address varchar(300) NULL, -- ��Ӧ�̵�ַ
	sbu varchar(150) NULL, -- ��Ʒ���
	sale_id numeric(19) NULL, -- ����ID
	sale_name varchar(300) NULL, -- ��������
	sale_account varchar(300) NULL, -- �����˺�
	delivery_location varchar(150) NULL, -- �����ص�
	delivery_dt_wid int8 NULL, -- ����ʱ�䣨��ٽ���ʱ�䣩�����
	delivery_type varchar(150) NULL, -- ������ʽ
	pay_term varchar(765) NULL, -- ��������
	pay_term_reason varchar(765) NULL, -- ��������ԭ��
	pay_term_changed_flag_code numeric(19) NULL, -- ���������Ƿ�仯����
	pay_term_changed_flag_name text NULL, -- ���������Ƿ�仯
	append_term varchar(765) NULL, -- ��������
	is_tax_code numeric(19) NULL, -- �Ƿ�˰����
	is_tax_name text NULL, -- �Ƿ�˰
	currency varchar(30) NULL, -- ����
	total_price numeric(14,2) NULL, -- �ܼ�
	order_status_code numeric(10) NULL, -- ����״̬����
	order_status_name text NULL, -- ����״̬
	single_sign_dt timestamp NULL, -- ��ǩʱ��
	double_sign_dt timestamp NULL, -- ˫ǩʱ��
	cancle_dt timestamp NULL, -- ����ȡ��ʱ��
	create_dt timestamp NULL, -- ��������ʱ��
	record varchar(3000) NULL, -- ��¼
	file_name varchar(1500) NULL, -- ftp�ļ�����
	qt_no varchar(300) NULL, -- QT��
	unpaid_price numeric(14,2) NULL, -- δ�����
	delivery_city varchar(765) NULL, -- ��������/�ۿ�
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
COMMENT ON TABLE dw.tf_sd_customer_po_bcp IS '�ͻ�PO';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_id IS '�ɹ�����id';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_no IS '�ɹ��������';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.cust_order_no IS '�ͻ����ɹ�������';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_type_code IS '״̬����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_type_name IS '״̬����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.customer_wid IS '�ͻ���˾id�����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.customer_name IS '�ͻ���˾����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.company_address IS '�ͻ���˾��ַ';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_id IS '�ͻ��ɹ�id';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_name IS '�ͻ��ɹ�����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_account IS '�ͻ��ɹ��˺�';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.purchase_tel IS '�ͻ��ɹ��绰';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier IS '������';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier_name IS '����������';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier_tel IS '��Ӧ�̵绰';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.supplier_address IS '��Ӧ�̵�ַ';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sbu IS '��Ʒ���';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sale_id IS '����ID';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sale_name IS '��������';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.sale_account IS '�����˺�';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_location IS '�����ص�';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_dt_wid IS '����ʱ�䣨��ٽ���ʱ�䣩�����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_type IS '������ʽ';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term IS '��������';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term_reason IS '��������ԭ��';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term_changed_flag_code IS '���������Ƿ�仯����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.pay_term_changed_flag_name IS '���������Ƿ�仯';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.append_term IS '��������';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.is_tax_code IS '�Ƿ�˰����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.is_tax_name IS '�Ƿ�˰';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.currency IS '����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.total_price IS '�ܼ�';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_status_code IS '����״̬����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.order_status_name IS '����״̬';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.single_sign_dt IS '��ǩʱ��';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.double_sign_dt IS '˫ǩʱ��';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.cancle_dt IS '����ȡ��ʱ��';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.create_dt IS '��������ʱ��';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.record IS '��¼';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.file_name IS 'ftp�ļ�����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.qt_no IS 'QT��';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.unpaid_price IS 'δ�����';
COMMENT ON COLUMN dw.tf_sd_customer_po_bcp.delivery_city IS '��������/�ۿ�';

-- Permissions

ALTER TABLE dw.tf_sd_customer_po_bcp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_customer_po_bcp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_customer_po_bcp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_customer_po_bcp TO gr_uqry_data;
