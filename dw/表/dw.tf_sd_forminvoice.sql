-- Drop table

-- DROP TABLE dw.tf_sd_forminvoice;

CREATE TABLE dw.tf_sd_forminvoice (
	client_code varchar(9) NULL, -- �ͻ��˱���
	invoice_number varchar(30) NULL, -- ��Ʊ����
	invoice_type_code varchar(3) NULL, -- ��Ʊ���ͱ���
	invoice_type_name text NULL, -- ��Ʊ��������
	zseller1 varchar(147) NULL, -- seller
	zseller2 varchar(147) NULL, -- seller
	zseller3 varchar(147) NULL, -- seller
	zseller4 varchar(147) NULL, -- seller
	zseller5 varchar(147) NULL, -- seller
	zconsig1 varchar(129) NULL, -- consignee
	zconsig2 varchar(129) NULL, -- consignee
	zconsig3 varchar(129) NULL, -- consignee
	zconsig4 varchar(129) NULL, -- consignee
	zconsig5 varchar(129) NULL, -- consignee
	zconsig6 varchar(129) NULL, -- consignee
	zconsig7 varchar(129) NULL, -- consignee
	zconsig8 varchar(129) NULL, -- consignee
	znotify1 varchar(129) NULL, -- notify party
	znotify2 varchar(129) NULL, -- notify party
	znotify3 varchar(129) NULL, -- notify party
	znotify4 varchar(129) NULL, -- notify party
	znotify5 varchar(129) NULL, -- notify party
	znotify6 varchar(129) NULL, -- notify party
	znotify7 varchar(129) NULL, -- notify party
	znotify8 varchar(129) NULL, -- notify party
	zfrom varchar(90) NULL, -- from city
	zto varchar(90) NULL, -- to city
	zconpo varchar(90) NULL, -- no & date p/o
	po_number_refer text NULL, -- PO�Ųο�
	zbuyer1 varchar(129) NULL, -- buyer
	zbuyer2 varchar(129) NULL, -- buyer
	zbuyer3 varchar(129) NULL, -- buyer
	zbuyer4 varchar(129) NULL, -- buyer
	zbuyer5 varchar(129) NULL, -- buyer
	zbuyer6 varchar(129) NULL, -- buyer
	zrefer1 varchar(96) NULL, -- other references
	zrefer2 varchar(96) NULL, -- other references
	zrefer3 varchar(96) NULL, -- other references
	zrefer4 varchar(96) NULL, -- other references
	zrefer5 varchar(96) NULL, -- other references
	zrefer6 varchar(96) NULL, -- other references
	zrefer7 varchar(96) NULL, -- other references
	zterms1 varchar(90) NULL, -- terms
	zterms2 varchar(90) NULL, -- terms
	zterms3 varchar(90) NULL, -- v
	zship1 varchar(60) NULL, -- shipping marks
	zship2 varchar(60) NULL, -- shipping marks
	zship3 varchar(60) NULL, -- shipping marks
	zship4 varchar(60) NULL, -- shipping marks
	item_name_cn varchar(120) NULL, -- ������������
	item_name_en varchar(120) NULL, -- Ӣ����������
	from_currency varchar(15) NULL, -- ���ҡ�
	total_weight numeric(15,3) NULL, -- ������
	net_weight numeric(15,3) NULL, -- ������
	weight_unit varchar(9) NULL, -- ������λ
	volum numeric(15,3) NULL, -- ҵ����
	volum_unit varchar(9) NULL, -- �����λ
	invoice_create_by varchar(36) NULL, -- ������
	invoice_create_dt_wid int8 NULL, -- �������ڴ����
	invoice_update_by varchar(36) NULL, -- ������
	invoice_update_dt varchar(24) NULL, -- ��������
	zversion varchar(9) NULL, -- �汾��
	total_number numeric(13,3) NULL, -- �ܼ���
	number_unit varchar(12) NULL, -- �ܼ�����λ
	invoice_line_number varchar(18) NULL, -- ��Ŀ��Ϣ�к�
	item_wid int8 NULL, -- ���ϱ�������
	item_name varchar(120) NULL, -- ��������
	customer_item_code varchar(105) NULL, -- �ͻ�ʹ�����ϱ���
	batch_number varchar(30) NULL, -- ���κ�
	actual_delivery_quantity numeric(13,3) NULL, -- ʵ�ʽ�����
	price_code varchar(60) NULL, -- ���۱���
	price numeric(13,4) NULL, -- ����
	amount numeric(15,2) NULL, -- ���
	line_from_currency varchar(15) NULL, -- ����Ŀʹ�û���
	order_header_num_refer varchar(30) NULL, -- ���۶���ͷ�Ųο�
	order_line_num_refer varchar(18) NULL, -- ���۶����кŲο�
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
COMMENT ON TABLE dw.tf_sd_forminvoice IS '��ʽ��Ʊ';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_forminvoice.client_code IS '�ͻ��˱���';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_number IS '��Ʊ����';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_type_code IS '��Ʊ���ͱ���';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_type_name IS '��Ʊ��������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller1 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller2 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller3 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller4 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zseller5 IS 'seller';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig1 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig2 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig3 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig4 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig5 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig6 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig7 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconsig8 IS 'consignee';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify1 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify2 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify3 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify4 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify5 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify6 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify7 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.znotify8 IS 'notify party';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zfrom IS 'from city';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zto IS 'to city';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zconpo IS 'no & date p/o';
COMMENT ON COLUMN dw.tf_sd_forminvoice.po_number_refer IS 'PO�Ųο�';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer1 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer2 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer3 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer4 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer5 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zbuyer6 IS 'buyer';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer1 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer2 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer3 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer4 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer5 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer6 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zrefer7 IS 'other references';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zterms1 IS 'terms';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zterms2 IS 'terms';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zterms3 IS 'v';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship1 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship2 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship3 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zship4 IS 'shipping marks';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_name_cn IS '������������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_name_en IS 'Ӣ����������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.from_currency IS '���ҡ�';
COMMENT ON COLUMN dw.tf_sd_forminvoice.total_weight IS '������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.net_weight IS '������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.weight_unit IS '������λ';
COMMENT ON COLUMN dw.tf_sd_forminvoice.volum IS 'ҵ����';
COMMENT ON COLUMN dw.tf_sd_forminvoice.volum_unit IS '�����λ';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_create_by IS '������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_create_dt_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_update_by IS '������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_update_dt IS '��������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.zversion IS '�汾��';
COMMENT ON COLUMN dw.tf_sd_forminvoice.total_number IS '�ܼ���';
COMMENT ON COLUMN dw.tf_sd_forminvoice.number_unit IS '�ܼ�����λ';
COMMENT ON COLUMN dw.tf_sd_forminvoice.invoice_line_number IS '��Ŀ��Ϣ�к�';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_wid IS '���ϱ�������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.item_name IS '��������';
COMMENT ON COLUMN dw.tf_sd_forminvoice.customer_item_code IS '�ͻ�ʹ�����ϱ���';
COMMENT ON COLUMN dw.tf_sd_forminvoice.batch_number IS '���κ�';
COMMENT ON COLUMN dw.tf_sd_forminvoice.actual_delivery_quantity IS 'ʵ�ʽ�����';
COMMENT ON COLUMN dw.tf_sd_forminvoice.price_code IS '���۱���';
COMMENT ON COLUMN dw.tf_sd_forminvoice.price IS '����';
COMMENT ON COLUMN dw.tf_sd_forminvoice.amount IS '���';
COMMENT ON COLUMN dw.tf_sd_forminvoice.line_from_currency IS '����Ŀʹ�û���';
COMMENT ON COLUMN dw.tf_sd_forminvoice.order_header_num_refer IS '���۶���ͷ�Ųο�';
COMMENT ON COLUMN dw.tf_sd_forminvoice.order_line_num_refer IS '���۶����кŲο�';

-- Permissions

ALTER TABLE dw.tf_sd_forminvoice OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_forminvoice TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_forminvoice TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_forminvoice TO gr_uqry_data;
