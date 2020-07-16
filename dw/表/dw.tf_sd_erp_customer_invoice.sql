-- Drop table

-- DROP TABLE dw.tf_sd_erp_customer_invoice;

CREATE TABLE dw.tf_sd_erp_customer_invoice (
	mandt varchar(9) NULL, -- �ͻ���
	zfphm varchar(30) NULL, -- HF����Ʊ����
	zfplx varchar(3) NULL, -- HF����Ʊ����
	zversion varchar(9) NULL, -- HF���汾��
	zitem varchar(18) NULL, -- HF����Ŀ��
	matnr varchar(54) NULL, -- ���Ϻ�
	charg varchar(30) NULL, -- ����
	kdmat varchar(105) NULL, -- �ͻ����õ����ϱ��
	menge numeric(13,3) NULL, -- ����
	meins varchar(9) NULL, -- ����������λ
	lfimg numeric(13,3) NULL, -- ʵ���ѽ������������۵�λ��
	vrkme varchar(60) NULL, -- ���
	zntpr numeric(13,4) NULL, -- HF������4λС��
	netwr numeric(15,2) NULL, -- HF�����
	waers varchar(15) NULL, -- ������
	ntgew numeric(15,3) NULL, -- ������
	gewei varchar(9) NULL, -- HF��������λ
	vgbel varchar(30) NULL, -- �ο����ݵĵ��ݱ��
	vgpos varchar(18) NULL, -- �ο���Ŀ����Ŀ��
	maktx varchar(120) NULL, -- �������������ı���
	zggxh varchar(600) NULL, -- ����ͺ�
	ernam varchar(36) NULL, -- �����������Ա����
	erdat varchar(24) NULL, -- ��¼�Ĵ�������
	eruze varchar(18) NULL, -- ʱ��
	aenam varchar(36) NULL, -- ��������
	aedat varchar(24) NULL, -- ���Ķ������ļ�����
	aeuze varchar(18) NULL, -- ʱ��
	gross numeric(10,3) NULL, -- ë����
	grwei varchar(9) NULL, -- HF��������λ
	zvolum varchar(90) NULL,
	zspmc varchar(150) NULL, -- ��Ʒ����
	zywpm varchar(150) NULL, -- Ӣ��Ʒ��
	bwkey varchar(12) NULL, -- ����
	lgort varchar(12) NULL, -- ���ص�
	btgew numeric(15,3) NULL, -- ������
	volum numeric(15,3) NULL, -- ���
	product_type varchar(32) NULL, -- ��Ʒ����
	source_table_name varchar(100) NULL, -- �ñ���ERP�в�ͬ��ĺϲ������Դ������
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
COMMENT ON TABLE dw.tf_sd_erp_customer_invoice IS 'IE����Ʊ��Ŀ��Ϣ';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.mandt IS '�ͻ���';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zfphm IS 'HF����Ʊ����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zfplx IS 'HF����Ʊ����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zversion IS 'HF���汾��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zitem IS 'HF����Ŀ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.matnr IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.charg IS '����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.kdmat IS '�ͻ����õ����ϱ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.menge IS '����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.meins IS '����������λ';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.lfimg IS 'ʵ���ѽ������������۵�λ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.vrkme IS '���';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zntpr IS 'HF������4λС��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.netwr IS 'HF�����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.waers IS '������';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.ntgew IS '������';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.gewei IS 'HF��������λ';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.vgbel IS '�ο����ݵĵ��ݱ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.vgpos IS '�ο���Ŀ����Ŀ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.maktx IS '�������������ı���';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zggxh IS '����ͺ�';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.ernam IS '�����������Ա����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.erdat IS '��¼�Ĵ�������';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.eruze IS 'ʱ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.aenam IS '��������';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.aedat IS '���Ķ������ļ�����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.aeuze IS 'ʱ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.gross IS 'ë����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.grwei IS 'HF��������λ';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zspmc IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.zywpm IS 'Ӣ��Ʒ��';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.bwkey IS '����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.lgort IS '���ص�';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.btgew IS '������';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.volum IS '���';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.product_type IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_sd_erp_customer_invoice.source_table_name IS '�ñ���ERP�в�ͬ��ĺϲ������Դ������';

-- Permissions

ALTER TABLE dw.tf_sd_erp_customer_invoice OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_customer_invoice TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_customer_invoice TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_customer_invoice TO gr_uqry_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_customer_invoice TO "109752";
