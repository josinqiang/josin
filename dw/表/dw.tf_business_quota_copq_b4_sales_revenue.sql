-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_sales_revenue;

CREATE TABLE dw.tf_business_quota_copq_b4_sales_revenue (
	client varchar(100) NULL, -- �ͻ���
	plan_version varchar(100) NULL, -- �ƻ��汾(CO-PA)
	co_pa_no varchar(100) NULL, -- ���������α��(CO-PA)
	co_pa_line_no varchar(100) NULL, -- �����ֶ�����Ŀ��ƾ֤��
	co_pa_line_prj varchar(100) NULL, -- CO-PA����Ŀ����Ŀ��
	company_code varchar(255) NULL, -- ��˾code
	factory_code varchar(255) NULL, -- ����code
	sale_voucher_no varchar(255) NULL, -- ����ƾ֤/���۶���
	sale_voucher_type varchar(255) NULL, -- ����ƾ֤����
	prod_group_code varchar(255) NULL, -- ��Ʒ��code,bu����
	prod_group_name varchar(255) NULL, -- ��Ʒ��,bu����
	customer_code varchar(255) NULL, -- �ͻ�code
	customer varchar(255) NULL, -- �ͻ�
	currency_type varchar(255) NULL, -- ��Ӫ��Χ�Ļ�������
	record_type varchar(255) NULL, -- ��¼����
	mat_code varchar(255) NULL, -- ����CODE
	mat_name varchar(255) NULL, -- ����
	location_code varchar(255) NULL, -- ��λ
	"location" varchar(255) NULL, -- �ִ��ص������
	years varchar(4) NULL, -- ������
	months varchar(2) NULL, -- �����ڼ�
	revenue numeric(18,2) NULL, -- ����
	other_bus_income numeric(18,2) NULL, -- ����ҵ������
	other_bus_cost numeric(18,2) NULL, -- ����ҵ��֧��
	cogs numeric(18,2) NULL, -- cogs
	prod_code varchar(255) NULL, -- ��Ʒ��
	prod_name varchar(255) NULL, -- ��Ʒ����
	batch_code varchar(255) NULL, -- ���κ�
	quantity numeric(18,6) NULL, -- ��������
	currency varchar(255) NULL, -- ���ݼ�¼����
	exchange_rate numeric(9,5) NULL, -- ����
	hq_customer_code varchar(255) NULL, -- hq �ͻ�code
	hq_customer varchar(255) NULL, -- hq�ͻ���Ϣ
	distribution_channel varchar(255) NULL, -- ��������
	sales_org_code varchar(255) NULL, -- ������֯
	ref_voucher_no varchar(255) NULL, -- �ο�ƾ֤�Ŷ���co-pa����Ŀ
	matl_group1_code varchar(255) NULL, -- ������1
	matl_group1 varchar(255) NULL, -- ������1����
	matl_group2_code varchar(255) NULL, -- ������2
	matl_group2 varchar(255) NULL, -- ������2����
	matl_group3_code varchar(255) NULL, -- ������3
	matl_group3 varchar(255) NULL, -- ������3����
	matl_group4_code varchar(255) NULL, -- ������4
	matl_group4 varchar(255) NULL, -- ������4����
	matl_group5_code varchar(255) NULL, -- ������5
	matl_group5 varchar(255) NULL, -- ������5����
	matl_group_code varchar(255) NULL, -- ������code
	matl_group varchar(255) NULL, -- ����������
	revenue_center varchar(255) NULL, -- �������ı���
	revenue_center_desc varchar(255) NULL, -- ��������
	sale_voucher_type1 varchar(255) NULL, -- ����ƾ֤��Ŀ���
	ref_voucher_no1 varchar(255) NULL, -- �ο�ƾ֤
	order_quantity numeric(18,6) NULL, -- ��������
	"size" varchar(255) NULL, -- �ߴ�
	resolution varchar(255) NULL, -- �ֱ���
	ship_format varchar(255) NULL, -- ������̬
	show_or_tech varchar(255) NULL, -- ��ʾģʽ/����
	glass_cuts numeric(16,6) NULL, -- glass����
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
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
COMMENT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue IS 'COPQ:B4��������';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.plan_version IS '�ƻ��汾(CO-PA)';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.co_pa_no IS '���������α��(CO-PA)';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.co_pa_line_no IS '�����ֶ�����Ŀ��ƾ֤��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.co_pa_line_prj IS 'CO-PA����Ŀ����Ŀ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.company_code IS '��˾code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.factory_code IS '����code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sale_voucher_no IS '����ƾ֤/���۶���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sale_voucher_type IS '����ƾ֤����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_group_code IS '��Ʒ��code,bu����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_group_name IS '��Ʒ��,bu����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.customer_code IS '�ͻ�code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.customer IS '�ͻ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.currency_type IS '��Ӫ��Χ�Ļ�������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.record_type IS '��¼����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.mat_code IS '����CODE';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.mat_name IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.location_code IS '��λ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue."location" IS '�ִ��ص������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.years IS '������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.months IS '�����ڼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.revenue IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.other_bus_income IS '����ҵ������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.other_bus_cost IS '����ҵ��֧��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.cogs IS 'cogs';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_code IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.prod_name IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.batch_code IS '���κ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.quantity IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.currency IS '���ݼ�¼����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.exchange_rate IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.hq_customer_code IS 'hq �ͻ�code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.hq_customer IS 'hq�ͻ���Ϣ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.distribution_channel IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sales_org_code IS '������֯';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.ref_voucher_no IS '�ο�ƾ֤�Ŷ���co-pa����Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group1_code IS '������1';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group1 IS '������1����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group2_code IS '������2';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group2 IS '������2����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group3_code IS '������3';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group3 IS '������3����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group4_code IS '������4';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group4 IS '������4����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group5_code IS '������5';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group5 IS '������5����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group_code IS '������code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.matl_group IS '����������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.revenue_center IS '�������ı���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.revenue_center_desc IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.sale_voucher_type1 IS '����ƾ֤��Ŀ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.ref_voucher_no1 IS '�ο�ƾ֤';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.order_quantity IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue."size" IS '�ߴ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.resolution IS '�ֱ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.ship_format IS '������̬';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.show_or_tech IS '��ʾģʽ/����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_sales_revenue.glass_cuts IS 'glass����';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_sales_revenue OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_sales_revenue TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_sales_revenue TO gr_uapp_data;
