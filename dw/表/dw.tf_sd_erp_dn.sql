-- Drop table

-- DROP TABLE dw.tf_sd_erp_dn;

CREATE TABLE dw.tf_sd_erp_dn (
	vbeln varchar(30) NULL, -- ����ƾ֤
	posnr varchar(18) NULL, -- ������Ŀ
	werks varchar(12) NULL, -- ����
	lgort varchar(12) NULL, -- ���ص�
	charg varchar(30) NULL, -- ����
	lfimg numeric(13,3) NULL, -- ʵ���ѽ������������۵�λ��
	vgbel varchar(30) NULL, -- �ο����ݵĵ��ݱ��
	vgpos varchar(18) NULL, -- �ο���Ŀ����Ŀ��
	spart varchar(6) NULL, -- ��Ʒ��
	zfphm_customer_invoice varchar(30) NULL, -- HF����Ʊ����
	matnr_customer_invoice varchar(60) NULL, -- ���Ϻ�
	zntpr_customer_invoice numeric(13,4) NULL, -- HF������4λС��
	vgbel_customer_invoice varchar(30) NULL, -- �ο����ݵĵ��ݱ��
	vgpos_customer_invoice varchar(18) NULL, -- �ο���Ŀ����Ŀ��
	erdat_customer_invoice varchar(24) NULL, -- ��¼�Ĵ�������
	product_type varchar(32) NULL, -- ��Ʒ����
	posnr_vbap varchar(18) NULL, -- ������Ŀ
	matnr_vbap varchar(60) NULL, -- ���Ϻ�
	kdmat_vbap varchar(105) NULL, -- �ͻ����õ����ϱ��
	kwmeng_vbap numeric(15,3) NULL, -- �����۵�λ��ʾ���ۼƶ�������
	erdat_vbap varchar(24) NULL, -- ��¼�Ĵ�������
	vbeln_vbak varchar(30) NULL, -- ����ƾ֤
	erdat_vbak varchar(24) NULL, -- ��¼����ʱ��
	spart_vbak varchar(6) NULL, -- ��Ʒ��
	vbeln_vbkd varchar(30) NULL, -- ����ƾ֤
	bstkd_vbkd varchar(105) NULL, -- �ͻ��ɹ��������
	zckpz_ztie_yd_item varchar(54) NULL, -- �ο�ƾ֤����
	zckxm_ztie_yd_item varchar(18) NULL, -- �ο�ƾ֤����Ŀ���
	werks_ztie_yd_hd varchar(12) NULL, -- ����
	zwlbh_ztie_yd_hd varchar(60) NULL, -- �������
	zfdhm_ztie_yd_hd varchar(450) NULL, -- �ֵ���
	zcjfs_ztie_yd_hd varchar(9) NULL, -- �ɽ���ʽ
	zysfs_ztie_yd_hd varchar(6) NULL, -- ���䷽ʽ
	zyszl_ztie_yd_hd varchar(3) NULL, -- ��������
	zjzxh_ztie_yd_hd varchar(600) NULL, -- ��װ���
	zetat_ztie_yd_hd varchar(24) NULL, -- Ԥ�Ƶ���Ŀ�ĵ�����(ETA)
	zetdt_ztie_yd_hd varchar(24) NULL, -- Ԥ���������(ETD)
	zatd_pol_ztie_yd_hd varchar(24) NULL, -- ʵ���������ڣ����˸ۻ������
	zqyd_ztie_yd_hd varchar(300) NULL, -- ���˵�
	zmdd_ztie_yd_hd varchar(300) NULL, -- Ŀ�ĵ�
	zatd_onboard_ztie_yd_hd varchar(24) NULL, -- ON BOARD DATE
	erdat_likp varchar(24) NULL, -- ��¼�Ĵ�������
	vbeln_likp varchar(30) NULL, -- ����ƾ֤
	lfart_likp varchar(12) NULL, -- ��������
	kunnr_likp varchar(30) NULL, -- �ʹ﷽
	kunag_likp varchar(30) NULL, -- �۴﷽
	lifex_likp varchar(105) NULL, -- ���������ⲿ��ʶ
	zfphm_customer_invoice_head varchar(30) NULL, -- HF����Ʊ����
	zconpo varchar(90) NULL, -- HF��No & Date P/O
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
COMMENT ON TABLE dw.tf_sd_erp_dn IS 'ERP DN��Ϣ';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln IS '����ƾ֤';
COMMENT ON COLUMN dw.tf_sd_erp_dn.posnr IS '������Ŀ';
COMMENT ON COLUMN dw.tf_sd_erp_dn.werks IS '����';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lgort IS '���ص�';
COMMENT ON COLUMN dw.tf_sd_erp_dn.charg IS '����';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lfimg IS 'ʵ���ѽ������������۵�λ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgbel IS '�ο����ݵĵ��ݱ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgpos IS '�ο���Ŀ����Ŀ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.spart IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zfphm_customer_invoice IS 'HF����Ʊ����';
COMMENT ON COLUMN dw.tf_sd_erp_dn.matnr_customer_invoice IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zntpr_customer_invoice IS 'HF������4λС��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgbel_customer_invoice IS '�ο����ݵĵ��ݱ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgpos_customer_invoice IS '�ο���Ŀ����Ŀ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_customer_invoice IS '��¼�Ĵ�������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.product_type IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_sd_erp_dn.posnr_vbap IS '������Ŀ';
COMMENT ON COLUMN dw.tf_sd_erp_dn.matnr_vbap IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kdmat_vbap IS '�ͻ����õ����ϱ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kwmeng_vbap IS '�����۵�λ��ʾ���ۼƶ�������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_vbap IS '��¼�Ĵ�������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln_vbak IS '����ƾ֤';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_vbak IS '��¼����ʱ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.spart_vbak IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln_vbkd IS '����ƾ֤';
COMMENT ON COLUMN dw.tf_sd_erp_dn.bstkd_vbkd IS '�ͻ��ɹ��������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zckpz_ztie_yd_item IS '�ο�ƾ֤����';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zckxm_ztie_yd_item IS '�ο�ƾ֤����Ŀ���';
COMMENT ON COLUMN dw.tf_sd_erp_dn.werks_ztie_yd_hd IS '����';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zwlbh_ztie_yd_hd IS '�������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zfdhm_ztie_yd_hd IS '�ֵ���';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zcjfs_ztie_yd_hd IS '�ɽ���ʽ';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zysfs_ztie_yd_hd IS '���䷽ʽ';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zyszl_ztie_yd_hd IS '��������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zjzxh_ztie_yd_hd IS '��װ���';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zetat_ztie_yd_hd IS 'Ԥ�Ƶ���Ŀ�ĵ�����(ETA)';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zetdt_ztie_yd_hd IS 'Ԥ���������(ETD)';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zatd_pol_ztie_yd_hd IS 'ʵ���������ڣ����˸ۻ������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zqyd_ztie_yd_hd IS '���˵�';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zmdd_ztie_yd_hd IS 'Ŀ�ĵ�';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zatd_onboard_ztie_yd_hd IS 'ON BOARD DATE';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_likp IS '��¼�Ĵ�������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln_likp IS '����ƾ֤';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lfart_likp IS '��������';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kunnr_likp IS '�ʹ﷽';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kunag_likp IS '�۴﷽';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lifex_likp IS '���������ⲿ��ʶ';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zfphm_customer_invoice_head IS 'HF����Ʊ����';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zconpo IS 'HF��No & Date P/O';

-- Permissions

ALTER TABLE dw.tf_sd_erp_dn OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_dn TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_dn TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_dn TO gr_uqry_data;
