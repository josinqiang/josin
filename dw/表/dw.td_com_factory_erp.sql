-- Drop table

-- DROP TABLE dw.td_com_factory_erp;

CREATE TABLE dw.td_com_factory_erp (
	row_wid int8 NULL,
	client varchar(9) NULL, -- �ͻ���
	factory_code varchar(12) NULL, -- ��������
	factory_name varchar(90) NULL, -- ����
	valuation_area varchar(12) NULL, -- ������Χ
	factory_customer_num varchar(30) NULL, -- �����Ŀͻ���
	factory_vendor_num varchar(30) NULL, -- ������Ӧ�̺���
	factory_calendar_code varchar(6) NULL, -- ����������
	factory_name2 varchar(90) NULL, -- ���� 2
	adress varchar(90) NULL, -- סլ�ż��ֵ�
	po_box varchar(30) NULL, -- ��������
	postal_code varchar(30) NULL, -- ��������
	city varchar(75) NULL, -- ����
	purchase_organization varchar(12) NULL, -- �ɹ���֯
	sales_org_for_intercompany_billing varchar(12) NULL, -- ���ڹ�˾����߷�Ʊ��������֯
	batch_status_manage_active_falg varchar(3) NULL, -- ��ʶ: ����״̬������
	plant_level_condition_flag varchar(3) NULL, -- ��ʶ: �������������
	source_list_require_flag varchar(3) NULL, -- ��ʶ: Դ�嵥Ҫ��
	require_plan_active varchar(3) NULL, -- ��������ƻ�
	country_code varchar(9) NULL, -- ���Ҵ���
	region_code varchar(9) NULL, -- ���� (�ݡ�ʡ����)
	county_code varchar(9) NULL, -- �ش���
	city_code varchar(12) NULL, -- ���д���
	address varchar(30) NULL, -- ��ַ
	maintenance_planning_plant varchar(12) NULL, -- ά���ƻ�����
	tax_jurisdiction varchar(45) NULL, -- ����˰�����
	intercompany_billing_distribute_channel varchar(6) NULL, -- ��˾�ڳ��߷�Ʊ��������
	intercompany_billing_division varchar(6) NULL, -- Ϊ��˾�ڲ����߷�Ʊ�Ĳ�Ʒ��
	language_code varchar(3) NULL, -- ���Դ���
	sop_plant varchar(3) NULL, -- sop����
	variance_code varchar(18) NULL, -- ������
	batch_status_manage_active_flag varchar(3) NULL, -- ��ʶ: ����״̬������
	factory_category varchar(3) NULL, -- ��������
	sales_district varchar(18) NULL, -- ���۵���
	supply_region_supplied varchar(30) NULL, -- ��Ӧ����(����Ӧ�ĵ���)
	tax_flag_plant_purchase varchar(3) NULL, -- ˰�ձ�ʶ���������ɹ���
	take_regular_vendor_into_account varchar(3) NULL, -- �����湩Ӧ�̿��ǽ�ȥ
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
COMMENT ON TABLE dw.td_com_factory_erp IS 'ά�ȱ�-����,������Դ��ERPϵͳ';

-- Column comments

COMMENT ON COLUMN dw.td_com_factory_erp.client IS '�ͻ���';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_code IS '��������';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_name IS '����';
COMMENT ON COLUMN dw.td_com_factory_erp.valuation_area IS '������Χ';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_customer_num IS '�����Ŀͻ���';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_vendor_num IS '������Ӧ�̺���';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_calendar_code IS '����������';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_name2 IS '���� 2';
COMMENT ON COLUMN dw.td_com_factory_erp.adress IS 'סլ�ż��ֵ�';
COMMENT ON COLUMN dw.td_com_factory_erp.po_box IS '��������';
COMMENT ON COLUMN dw.td_com_factory_erp.postal_code IS '��������';
COMMENT ON COLUMN dw.td_com_factory_erp.city IS '����';
COMMENT ON COLUMN dw.td_com_factory_erp.purchase_organization IS '�ɹ���֯';
COMMENT ON COLUMN dw.td_com_factory_erp.sales_org_for_intercompany_billing IS '���ڹ�˾����߷�Ʊ��������֯';
COMMENT ON COLUMN dw.td_com_factory_erp.batch_status_manage_active_falg IS '��ʶ: ����״̬������';
COMMENT ON COLUMN dw.td_com_factory_erp.plant_level_condition_flag IS '��ʶ: �������������';
COMMENT ON COLUMN dw.td_com_factory_erp.source_list_require_flag IS '��ʶ: Դ�嵥Ҫ��';
COMMENT ON COLUMN dw.td_com_factory_erp.require_plan_active IS '��������ƻ�';
COMMENT ON COLUMN dw.td_com_factory_erp.country_code IS '���Ҵ���';
COMMENT ON COLUMN dw.td_com_factory_erp.region_code IS '���� (�ݡ�ʡ����)';
COMMENT ON COLUMN dw.td_com_factory_erp.county_code IS '�ش���';
COMMENT ON COLUMN dw.td_com_factory_erp.city_code IS '���д���';
COMMENT ON COLUMN dw.td_com_factory_erp.address IS '��ַ';
COMMENT ON COLUMN dw.td_com_factory_erp.maintenance_planning_plant IS 'ά���ƻ�����';
COMMENT ON COLUMN dw.td_com_factory_erp.tax_jurisdiction IS '����˰�����';
COMMENT ON COLUMN dw.td_com_factory_erp.intercompany_billing_distribute_channel IS '��˾�ڳ��߷�Ʊ��������';
COMMENT ON COLUMN dw.td_com_factory_erp.intercompany_billing_division IS 'Ϊ��˾�ڲ����߷�Ʊ�Ĳ�Ʒ��';
COMMENT ON COLUMN dw.td_com_factory_erp.language_code IS '���Դ���';
COMMENT ON COLUMN dw.td_com_factory_erp.sop_plant IS 'sop����';
COMMENT ON COLUMN dw.td_com_factory_erp.variance_code IS '������';
COMMENT ON COLUMN dw.td_com_factory_erp.batch_status_manage_active_flag IS '��ʶ: ����״̬������';
COMMENT ON COLUMN dw.td_com_factory_erp.factory_category IS '��������';
COMMENT ON COLUMN dw.td_com_factory_erp.sales_district IS '���۵���';
COMMENT ON COLUMN dw.td_com_factory_erp.supply_region_supplied IS '��Ӧ����(����Ӧ�ĵ���)';
COMMENT ON COLUMN dw.td_com_factory_erp.tax_flag_plant_purchase IS '˰�ձ�ʶ���������ɹ���';
COMMENT ON COLUMN dw.td_com_factory_erp.take_regular_vendor_into_account IS '�����湩Ӧ�̿��ǽ�ȥ';

-- Permissions

ALTER TABLE dw.td_com_factory_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_factory_erp TO gr_uqry_data;
