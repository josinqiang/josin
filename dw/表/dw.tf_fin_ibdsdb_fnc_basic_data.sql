-- Drop table

-- DROP TABLE dw.tf_fin_ibdsdb_fnc_basic_data;

CREATE TABLE dw.tf_fin_ibdsdb_fnc_basic_data (
	uuid varchar(191) NULL,
	version_no varchar(191) NULL, -- �汾��
	sales_plan_type varchar(191) NULL, -- ���ۼƻ�����
	product_group varchar(191) NULL, -- ��Ʒ�����
	customer_code varchar(191) NULL, -- �ͻ�����
	internal_customer_flag varchar(191) NULL, -- �ڲ��ͻ���ʶ
	repository_factory varchar(191) NULL, -- ��λ����
	fgcode varchar(191) NULL, -- ���Ϻ�(FG code)
	"level" varchar(191) NULL, -- �ȼ�
	"month" varchar(191) NULL, -- ����
	product_group_detail varchar(191) NULL, -- ��Ʒ������
	real_product_group varchar(191) NULL, -- ��Ʒ��(Maker)������ϸ�֣�
	customer varchar(191) NULL, -- �ͻ�
	real_customer varchar(191) NULL, -- �ͻ�(��ս��)
	factory varchar(191) NULL, -- ����
	sales_volume numeric(20,4) NULL, -- ����
	sales_substrate numeric(20,4) NULL, -- ���ۻ���
	conversion_substrate numeric(20,4) NULL, -- �������
	conversion_substrate_g6 numeric(20,4) NULL, -- �������G6
	sales_area numeric(20,4) NULL, -- �������
	"size" varchar(191) NULL, -- �ߴ�
	resolving_power varchar(191) NULL, -- �ֱ���
	shipment_form varchar(191) NULL, -- ������̬
	narrow_border varchar(191) NULL, -- խ�߿�/Borderless
	ic_programme varchar(191) NULL, -- IC����
	odm_mode varchar(191) NULL, -- ODMģʽ
	glass_cut_num varchar(191) NULL, -- Glass����
	qpnl_cut_num varchar(191) NULL, -- QPNL����
	showtech varchar(191) NULL, -- ��ʾģʽ/����
	unit_price numeric(20,4) NULL, -- ����
	currency_unit varchar(191) NULL, -- ���ҵ�λ
	exchange_rate numeric(20,4) NULL, -- ����
	revenue numeric(20,4) NULL, -- ����
	is_offsetting_term varchar(191) NULL, -- �Ƿ������
	sales_voucher_type varchar(191) NULL, -- ����ƾ֤����
	side_effect numeric(20,4) NULL, -- ��Ч
	profit numeric(20,4) NULL, -- �����ܶ�
	"bom" numeric(20,4) NULL, -- BOM
	alpha numeric(20,4) NULL, -- ��
	send_flag varchar(191) NULL, -- ���ͱ��
	project varchar(191) NULL, -- ��Ŀ
	billing_documents varchar(191) NULL, -- ��Ʊƾ֤
	batchid varchar(191) NULL, -- ���κ�
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
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
COMMENT ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data IS 'ibds��������';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.version_no IS '�汾��';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_plan_type IS '���ۼƻ�����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.product_group IS '��Ʒ�����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.customer_code IS '�ͻ�����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.internal_customer_flag IS '�ڲ��ͻ���ʶ';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.repository_factory IS '��λ����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.fgcode IS '���Ϻ�(FG code)';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."level" IS '�ȼ�';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."month" IS '����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.product_group_detail IS '��Ʒ������';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.real_product_group IS '��Ʒ��(Maker)������ϸ�֣�';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.customer IS '�ͻ�';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.real_customer IS '�ͻ�(��ս��)';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.factory IS '����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_volume IS '����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_substrate IS '���ۻ���';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.conversion_substrate IS '�������';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.conversion_substrate_g6 IS '�������G6';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_area IS '�������';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."size" IS '�ߴ�';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.resolving_power IS '�ֱ���';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.shipment_form IS '������̬';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.narrow_border IS 'խ�߿�/Borderless';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.ic_programme IS 'IC����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.odm_mode IS 'ODMģʽ';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.glass_cut_num IS 'Glass����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.qpnl_cut_num IS 'QPNL����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.showtech IS '��ʾģʽ/����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.unit_price IS '����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.currency_unit IS '���ҵ�λ';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.exchange_rate IS '����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.revenue IS '����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.is_offsetting_term IS '�Ƿ������';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.sales_voucher_type IS '����ƾ֤����';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.side_effect IS '��Ч';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.profit IS '�����ܶ�';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data."bom" IS 'BOM';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.alpha IS '��';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.send_flag IS '���ͱ��';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.project IS '��Ŀ';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.billing_documents IS '��Ʊƾ֤';
COMMENT ON COLUMN dw.tf_fin_ibdsdb_fnc_basic_data.batchid IS '���κ�';

-- Permissions

ALTER TABLE dw.tf_fin_ibdsdb_fnc_basic_data OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_fin_ibdsdb_fnc_basic_data TO gr_uapp_data;
