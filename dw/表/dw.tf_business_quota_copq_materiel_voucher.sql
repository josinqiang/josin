-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_materiel_voucher;

CREATE TABLE dw.tf_business_quota_copq_materiel_voucher (
	client varchar(10) NULL, -- �ͻ���
	material_voucher_no varchar(300) NULL, -- ����ƾ֤��
	material_voucher_year varchar(12) NULL, -- ����ƾ֤���
	material_voucher_item varchar(255) NULL, -- ����ƾ֤�е���Ŀ
	mobile_type varchar(255) NULL, -- �ƶ�����
	materiel varchar(255) NULL, -- ����
	factory varchar(255) NULL, -- ����
	stock_location varchar(255) NULL, -- ���ص�
	batch_no varchar(255) NULL, -- ���Σ����ڷ����ȼ���
	credit_debit_flag varchar(255) NULL, -- �����ʶ
	amount numeric(13,2) NULL, -- ���
	material_quantity numeric(13,3) NULL, -- ����
	recevie varchar(255) NULL, -- ���շ�
	cost_center varchar(255) NULL, -- �ɱ�����
	company varchar(255) NULL, -- ��˾�����ڷ���������
	general_ledger_account_number varchar(255) NULL, -- ���ʿ�Ŀ���
	voucher_no varchar(255) NULL, -- ����ƾ֤��
	posting_date varchar(255) NULL, -- ��������
	voucher_desc varchar(255) NULL, -- ƾ̧֤ͷ�ı�
	currency varchar(100) NULL, -- ����
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
COMMENT ON TABLE dw.tf_business_quota_copq_materiel_voucher IS '����ƾ֤';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_voucher_no IS '����ƾ֤��';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_voucher_year IS '����ƾ֤���';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_voucher_item IS '����ƾ֤�е���Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.mobile_type IS '�ƶ�����';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.materiel IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.factory IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.stock_location IS '���ص�';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.batch_no IS '���Σ����ڷ����ȼ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.credit_debit_flag IS '�����ʶ';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.amount IS '���';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_quantity IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.recevie IS '���շ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.cost_center IS '�ɱ�����';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.company IS '��˾�����ڷ���������';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.general_ledger_account_number IS '���ʿ�Ŀ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.voucher_no IS '����ƾ֤��';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.posting_date IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.voucher_desc IS 'ƾ̧֤ͷ�ı�';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.currency IS '����';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_materiel_voucher OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_materiel_voucher TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_materiel_voucher TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_materiel_voucher TO gr_uqry_data;
