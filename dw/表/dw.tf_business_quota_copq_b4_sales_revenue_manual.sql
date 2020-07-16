-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual;

CREATE TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual (
	client varchar(255) NULL, -- �ͻ���
	company_code varchar(255) NULL, -- ��˾����
	account_code varchar(255) NULL, -- ��ƿ�Ŀ
	years varchar(255) NULL, -- ��
	months varchar(255) NULL, -- ��
	ref_no varchar(255) NULL, -- ����ƾ֤��
	dis_no varchar(255) NULL, -- ������
	voucher_no varchar(255) NULL, -- ���ƾ֤���
	voucher_line varchar(255) NULL, -- ���ƾ֤�е�����Ŀ��
	dc_flag varchar(255) NULL, -- �跽/����
	amount numeric(18,2) NULL, -- ��λ�ҽ��
	voucher_type varchar(255) NULL, -- ƾ֤���
	descs varchar(255) NULL, -- �ı�
	revenue_center varchar(255) NULL, -- ��������,��������BU
	revenue_center_name varchar(255) NULL, -- ������������
	revenue_center_ldesc varchar(255) NULL, -- �������ĳ�����
	revenue_center_desc varchar(255) NULL, -- ������������
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(100) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual IS 'COPQָ�꣺���۶�-�ֹ���';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.company_code IS '��˾����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.account_code IS '��ƿ�Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.years IS '��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.months IS '��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.ref_no IS '����ƾ֤��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.dis_no IS '������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.voucher_no IS '���ƾ֤���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.voucher_line IS '���ƾ֤�е�����Ŀ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.dc_flag IS '�跽/����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.amount IS '��λ�ҽ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.voucher_type IS 'ƾ֤���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.descs IS '�ı�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.revenue_center IS '��������,��������BU';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.revenue_center_name IS '������������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.revenue_center_ldesc IS '�������ĳ�����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue_manual.revenue_center_desc IS '������������';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue_manual TO gr_uapp_data;
