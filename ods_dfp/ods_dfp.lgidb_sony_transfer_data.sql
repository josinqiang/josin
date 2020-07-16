-- Drop table

-- DROP TABLE ods_dfp.lgidb_sony_transfer_data;

CREATE TABLE ods_dfp.lgidb_sony_transfer_data (
	id varchar(255) NULL, -- id
	account varchar(20) NULL, -- ����
	atd_date varchar(20) NULL, -- ʵ���������ڣ����˸ۻ������
	bl_no varchar(255) NULL, -- �ᵥ��
	box_id varchar(255) NULL, -- box id
	container varchar(600) NULL, -- ��װ���
	erdat_likp varchar(24) NULL, -- ��¼�Ĵ�������
	eta_date varchar(255) NULL, -- Ԥ�Ƶ���ʱ��
	inv_no varchar(255) NULL, -- �ͻ���Ʊ��
	matnr_customer_invoice varchar(255) NULL, -- ���Ϻ�
	"method" varchar(255) NULL, -- ���䷽ʽ
	pallet_id varchar(255) NULL, -- Pallet ID
	po_no varchar(90) NULL, -- HF��No & Date P/O
	posnr varchar(255) NULL, -- ������Ŀ
	product varchar(255) NULL, -- ��Ʒ
	reason varchar(255) NULL, -- ԭ��
	serial_no varchar(255) NULL, -- Module ID
	site varchar(32) NULL, -- �ʹ﷽վ��
	status numeric(11) NULL, -- ״̬
	supplier_cd varchar(255) NULL, -- ��Ӧ��
	transfer_time timestamp NULL, -- ����ʱ��
	vbeln varchar(255) NULL, -- ����ƾ֤
	zcjfs_ztie_yd_hd varchar(255) NULL, -- �ɽ���ʽ
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
COMMENT ON TABLE ods_dfp.lgidb_sony_transfer_data IS '����LGI������ϸ��Ϣ';

-- Column comments

COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.id IS 'id';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.account IS '����';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.atd_date IS 'ʵ���������ڣ����˸ۻ������';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.bl_no IS '�ᵥ��';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.box_id IS 'box id';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.container IS '��װ���';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.erdat_likp IS '��¼�Ĵ�������';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.eta_date IS 'Ԥ�Ƶ���ʱ��';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.inv_no IS '�ͻ���Ʊ��';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.matnr_customer_invoice IS '���Ϻ�';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data."method" IS '���䷽ʽ';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.pallet_id IS 'Pallet ID';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.po_no IS 'HF��No & Date P/O';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.posnr IS '������Ŀ';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.product IS '��Ʒ';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.reason IS 'ԭ��';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.serial_no IS 'Module ID';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.site IS '�ʹ﷽վ��';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.status IS '״̬';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.supplier_cd IS '��Ӧ��';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.transfer_time IS '����ʱ��';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.vbeln IS '����ƾ֤';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.zcjfs_ztie_yd_hd IS '�ɽ���ʽ';

-- Permissions

ALTER TABLE ods_dfp.lgidb_sony_transfer_data OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.lgidb_sony_transfer_data TO ur_uown_ods;
GRANT SELECT ON TABLE ods_dfp.lgidb_sony_transfer_data TO gr_uqry_data;
GRANT ALL ON TABLE ods_dfp.lgidb_sony_transfer_data TO gr_uapp_data;
