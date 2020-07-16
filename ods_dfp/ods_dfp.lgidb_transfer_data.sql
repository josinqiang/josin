-- Drop table

-- DROP TABLE ods_dfp.lgidb_transfer_data;

CREATE TABLE ods_dfp.lgidb_transfer_data (
	id varchar(255) NULL, -- id
	account varchar(255) NULL, -- ����
	actual_month varchar(255) NULL, -- so1�����·�
	arrial_cd varchar(255) NULL, -- �ʹ﷽���
	arrial_port varchar(255) NULL, -- �����
	bl_no varchar(255) NULL, -- �ᵥ��
	box_id varchar(255) NULL, -- box id
	buyer_cd varchar(255) NULL, -- �۴﷽���
	eta_date varchar(255) NULL, -- Ԥ�Ƶ���ʱ��
	etd_date varchar(255) NULL, -- Ԥ���뿪ʱ��
	inv_no varchar(255) NULL, -- �ͻ���Ʊ��
	lge_part_no varchar(255) NULL, -- ����ȡֵ
	lgi_po_no varchar(255) NULL, -- �ͻ�po��
	loading_port varchar(255) NULL, -- ���˸�
	matnr_customer_invoice varchar(255) NULL, -- ���Ϻ�
	model_no varchar(255) NULL, -- ��Ʒ��
	pallet_id varchar(255) NULL, -- Pallet ID
	posnr varchar(255) NULL, -- ������Ŀ
	product_type varchar(255) NULL, -- ��Ʒ����
	qty varchar(255) NULL, -- Panel��������BOX��������
	reason varchar(255) NULL, -- ԭ��
	sales_date varchar(255) NULL, -- ����ʱ��
	sales_price varchar(255) NULL, -- SO1����
	serial_no varchar(255) NULL, -- Module ID
	status numeric(11) NULL, -- ״̬
	supplier_cd varchar(255) NULL, -- ��Ӧ��
	vbeln varchar(255) NULL, -- ����ƾ֤
	zcjfs_ztie_yd_hd varchar(255) NULL, -- �ɽ���ʽ
	zxmldocno timestamp NULL, -- ʱ��
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
COMMENT ON TABLE ods_dfp.lgidb_transfer_data IS '����LGI������ϸ��Ϣ';

-- Column comments

COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.id IS 'id';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.account IS '����';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.actual_month IS 'so1�����·�';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.arrial_cd IS '�ʹ﷽���';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.arrial_port IS '�����';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.bl_no IS '�ᵥ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.box_id IS 'box id';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.buyer_cd IS '�۴﷽���';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.eta_date IS 'Ԥ�Ƶ���ʱ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.etd_date IS 'Ԥ���뿪ʱ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.inv_no IS '�ͻ���Ʊ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.lge_part_no IS '����ȡֵ';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.lgi_po_no IS '�ͻ�po��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.loading_port IS '���˸�';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.matnr_customer_invoice IS '���Ϻ�';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.model_no IS '��Ʒ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.pallet_id IS 'Pallet ID';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.posnr IS '������Ŀ';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.product_type IS '��Ʒ����';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.qty IS 'Panel��������BOX��������';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.reason IS 'ԭ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.sales_date IS '����ʱ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.sales_price IS 'SO1����';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.serial_no IS 'Module ID';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.status IS '״̬';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.supplier_cd IS '��Ӧ��';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.vbeln IS '����ƾ֤';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.zcjfs_ztie_yd_hd IS '�ɽ���ʽ';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.zxmldocno IS 'ʱ��';

-- Permissions

ALTER TABLE ods_dfp.lgidb_transfer_data OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.lgidb_transfer_data TO ur_uown_ods;
GRANT SELECT ON TABLE ods_dfp.lgidb_transfer_data TO gr_uqry_data;
GRANT ALL ON TABLE ods_dfp.lgidb_transfer_data TO gr_uapp_data;
