-- Drop table

-- DROP TABLE dw.tf_fin_item_price_info;

CREATE TABLE dw.tf_fin_item_price_info (
	client_code varchar(9) NULL, -- �ͻ��˱��
	item_wid int8 NULL, -- ��Ŀ��������
	material_number varchar(12) NULL, -- ������Χ
	valuation_type varchar(30) NULL, -- ��������
	delet_flag_valuation_type varchar(3) NULL, -- һ���������͵������������ݵ�ɾ����־
	valuated_stock numeric(13,3) NULL, -- �ܼ��ѹ��ƿ��
	valuated_stock_value numeric(13,2) NULL, -- ���۵��ܿ���ֵ
	price_control_flag varchar(3) NULL, -- �۸����ָʾ��
	moving_avg_or_periodic_price numeric(11,2) NULL, -- �ƶ�ƽ���۸�/���ڵ���
	standard_price numeric(11,2) NULL, -- ��׼�۸�
	price_unit numeric(5) NULL, -- �۸�λ
	valuation_class varchar(12) NULL, -- ������
	moving_avg_based_value numeric(13,2) NULL, -- ����ƽ���ƶ��۵�ֵ�����۸���� s��
	valuated_stock_pre_period numeric(13,3) NULL, -- ǰ�ڵ����������
	valuated_stock_value_pre_period numeric(13,2) NULL, -- ���ڹ����۵��ܿ���ֵ
	price_control_flag_pre_period varchar(3) NULL, -- ǰһ�ڼ�۸���Ʊ�ʶ
	moving_avg_or_periodic_price_pre_period numeric(11,2) NULL, -- ǰһ�ڼ���ƶ�ƽ���۸�/�ڼ䵥λ�۸�
	standard_price_pre_period numeric(11,2) NULL, -- ǰ�ڵı�׼�۸�
	price_unit_pre_period numeric(5) NULL, -- ǰ�ڵļ۸�λ
	valuation_class_pre_period varchar(12) NULL, -- ���ڵ����۷���
	moving_avg_based_value_pre_period numeric(13,2) NULL, -- ����ƽ���ƶ��۵�ֵ(����)
	valuated_stock_pre_year numeric(13,3) NULL, -- ǰ������������
	valuated_stock_value_pre_year numeric(13,2) NULL, -- ������۵��ܿ���ֵ
	price_control_flag_pre_year varchar(3) NULL, -- ǰһ��ļ۸���Ʊ�ʶ
	moving_avg_or_periodic_price_pre_year numeric(11,2) NULL, -- ǰһ���ƶ�ƽ���۸�/�ڼ䵥�ۼ۸�
	standard_price_in_previous_year numeric(11,2) NULL, -- ����ı�׼�۸�
	price_unit__pre_year numeric(5) NULL, -- ȥ��ļ۸�λ
	valuation_class__pre_year varchar(12) NULL, -- ��������۷���
	moving_avg_based_value_pre_year numeric(13,2) NULL, -- ����ƽ���ƶ��۵�ֵ(����)
	fiscal_period_post_wid int8 NULL, -- ��ǰ�ڼ�����
	valuation_category varchar(3) NULL, -- �������
	previous_price numeric(11,2) NULL, -- ���ڼ۸�
	price_update_date varchar(24) NULL, -- ���¼۸���ĵ�����
	future_price numeric(11,2) NULL, -- δ���۸�
	valid_price_date varchar(24) NULL, -- �۸�ʼ��Ч������
	"timestamp" numeric(15) NULL, -- ��̸�ʽ�� utc ʱ�� (yyyymmddhhmmss)
	valuation_price_taxlaw1 numeric(11,2) NULL, -- ����˰���Ĺ��ۼ۸� 
	valuation_price_commerciallaw1 numeric(11,2) NULL, -- �����̷��Ĺ��ۼ۸� 
	valuation_price_taxlaw3 numeric(11,2) NULL, -- ����˰���Ĺ��ۼ۸�(btci) 
	valuation_price_commerciallaw3 numeric(11,2) NULL, -- ������ҵ���ɵĹ��ۼ۸� 
	valuated_stock_value_pre_2_years numeric(13,2) NULL, -- ǰ����۵��ܿ���ֵ
	valuated_stock_pre_2_years numeric(13,3) NULL, -- ǰ������������
	valuated_stock_pre_2_period numeric(13,3) NULL, -- ǰ�ڵ����������
	valuated_stock_value_pre_2_period numeric(13,2) NULL, -- ǰ�ڹ��۵��ܿ���ֵ
	planned_price numeric(11,2) NULL, -- δ���ƻ��۸�
	planned_price_1 numeric(11,2) NULL, -- δ���ƻ��۸�1
	planned_price_2 numeric(11,2) NULL, -- δ���ƻ��۸� 2
	planned_price_3 numeric(11,2) NULL, -- δ���ƻ��۸� 3
	planned_price_1_valid_from varchar(24) NULL, -- �ƻ��۸� 1 ��ʼ��Ч������
	planned_price_2_valid_from varchar(24) NULL, -- �ƻ��۸� 2 ��ʼ��Ч������
	planned_price_3_valid_from varchar(24) NULL, -- �ƻ��۸� 3 ��ʼ��Ч������
	standard_cost_estimate_next_period_deactive varchar(18) NULL, -- δ����׼�ɱ����Ƶ��ڼ�(δ����)
	standard_cost_estimate_period_deactive varchar(18) NULL, -- ��ǰ��׼�ɱ����Ƶ��ڼ�(δ����)
	standard_cost_estimate_pre_period_deactive varchar(18) NULL, -- ��ǰ��׼�ɱ����Ƶ��ڼ�(δ����)
	standard_cost_estimate_next_period_flag varchar(3) NULL, -- ��ʶ: δ���ڼ�ı�׼�ɱ�����
	standard_cost_estimate_period_flag varchar(3) NULL, -- ��ǰ�ڼ�ı�׼�ɱ�����
	standard_cost_estimate_pre_period_flag varchar(3) NULL, -- ��ʶ: ��һ�ڼ�ı�׼�ɱ�����
	overhead_key_deactivated varchar(18) NULL, -- һ����ô���(δ����)
	lifo_fifo_relevant varchar(3) NULL, -- lifo/fifo ���
	pool_number_for_lifo_valuation varchar(12) NULL, -- ����lifo�����Ĵ�����
	valuation_price_commerciallaw_level2 numeric(11,2) NULL, -- ������ҵ���ɵĹ��ۼ۸񣺼��� 2
	valuation_price_taxlaw_level2 numeric(11,2) NULL, -- ����˰���Ĺ��ۼ۸� ����2
	lowest_value_devaluation_flag varchar(6) NULL, -- ��ͼ�ֵ: ��ֵ��־
	maintenance_status varchar(45) NULL, -- ά��״̬
	cost_estimate_number_product_costing varchar(36) NULL, -- �ɱ������ 
	cost_estimate_number_no_qty_structure varchar(36) NULL, -- û�������ṹ�ĳɱ�����ĳɱ�������
	valuation_variant_for_future_standard_cost_estimate varchar(9) NULL, -- δ���ı�׼�ɱ�����Ĺ��۱�ʽ
	valuation_variant_for_current_standard_cost_estimate varchar(9) NULL, -- ��ǰ�ı�׼�ɱ�����Ĺ��۱�ʽ
	valuation_variant_for_previous_standard_cost_estimate varchar(9) NULL, -- ��ȥ�ı�׼�ɱ�����Ĺ��۱�ʽ
	costing_version_of_future_standard_cost_estimate varchar(6) NULL, -- δ���ı�׼�ɱ�����ĳɱ����㷽��
	costing_version_of_current_standard_cost_estimate varchar(6) NULL, -- ��ǰ�ı�׼�ɱ�����ĳɱ����㷽��
	costing_version_of_previous_standard_cost_estimate varchar(6) NULL, -- ��ǰ�ı�׼�ɱ�����ĳɱ����㷽��
	origingroup_as_subdivision_of_cost_element varchar(12) NULL, -- ��Ϊ�ɱ�Ҫ�������ԭʼ��
	costing_overhead_group varchar(30) NULL, -- �ɱ������ӷ�����
	period_of_future_standard_cost_estimate varchar(9) NULL, -- δ���ɱ������ڼ�
	period_of_current_standard_cost_estimate varchar(9) NULL, -- ��ǰ�ı�׼�ɱ������ڼ�
	period_of_previous_standard_cost_estimate varchar(9) NULL, -- ��ǰ�ı�׼�ɱ������ڼ�
	fiscal_year_of_future_standard_cost_estimate varchar(12) NULL, -- δ����׼�ɱ�����Ļ�����
	fiscal_year_of_current_standard_cost_estimate varchar(12) NULL, -- ��ǰ��׼�ɱ�����Ļ�����
	fiscal_year_of_previous_standard_cost_estimate varchar(12) NULL, -- ��һ��׼�ɱ�����Ļ�����
	material_costed_with_quantity_structure varchar(3) NULL, -- ���ϸ��������ṹ���гɱ�����
	previous_planned_price numeric(11,2) NULL, -- ���ڱ�׼�۸�
	material_ledger_activated_at_material_level varchar(3) NULL, -- �����ʲ������ϲ㱻����
	material_price_determination_control varchar(3) NULL, -- ���ϼ۸�ȷ��: ����
	current_planned_price numeric(11,2) NULL, -- ��ǰ�ļƻ��۸�
	value_total_valuated_stock_at_sales_price numeric(13,2) NULL, -- �����ۼ۸�Ƶ��ܹ��ۿ���ֵ
	material_related_origin varchar(3) NULL, -- ������ص�Դ
	physical_inventory_blocking_indicator varchar(3) NULL, -- ʵ���̵㶳���ʶ
	inventory_indicator_for_valueonly_material varchar(9) NULL, -- ��һ��ֵ���ϵ��̵����ʶ
	date_of_lastposted_count_for_unrestricted_use_stock varchar(24) NULL, -- ������ʹ�õĿ��������ʵ���̵������
	physical_inventory_indicator_for_cycle_counting varchar(3) NULL, -- �����̵���̵��ʶ
	valuation_margin numeric(6,2) NULL, -- ����ë��
	fixed_portion_of_current_planned_price numeric(11,2) NULL, -- ��ǰ�ƻ��۸�Ĺ̶����
	fixed_portion_of_previous_planned_price numeric(11,2) NULL, -- ����ƻ��۸�Ĺ̶�����
	fixed_portion_of_future_planned_price numeric(11,2) NULL, -- δ���ƻ��۸�Ĺ̶�����
	plan_pricefor_sales_order_or_item_stock varchar(3) NULL, -- ��ǰ�ƻ��۸�
	plan_pricefor_sales_order_or_item_stock_pre_year varchar(3) NULL, -- ����ƻ��۸�����ʹ�ÿ�����������
	plan_pricefor_sales_order_or_item_stock_future varchar(3) NULL, -- δ���ƻ��۸�����ʹ�ÿ�����������
	valuation_class_for_sales_order_stock varchar(12) NULL, -- �������۶��������������
	valuation_class_for_project_stock varchar(12) NULL, -- ��Ŀ������������
	material_usage varchar(3) NULL, -- ������;
	material_origin varchar(3) NULL, -- ����Դ
	produced_in_house varchar(3) NULL, -- ���Ʋ�Ʒ
	unit_measure_special_batch varchar(3) NULL, -- ���������ض�������λ������
	price_unit_based_tax_commercial_law numeric(5) NULL, -- ����˰/�̷����ۼ۸�ļ۸�λ
	mbrue varchar(3) NULL, -- mbew ����ڼ�֮ǰ���ڼ�� mbewh �Ѿ�����
	special_stock_vendor_valuation_class varchar(12) NULL, -- ��Ӧ��������Ĺ�����
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

-- Column comments

COMMENT ON COLUMN dw.tf_fin_item_price_info.client_code IS '�ͻ��˱��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.item_wid IS '��Ŀ��������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_number IS '������Χ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_type IS '��������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.delet_flag_valuation_type IS 'һ���������͵������������ݵ�ɾ����־';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock IS '�ܼ��ѹ��ƿ��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value IS '���۵��ܿ���ֵ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_control_flag IS '�۸����ָʾ��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_or_periodic_price IS '�ƶ�ƽ���۸�/���ڵ���';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_price IS '��׼�۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit IS '�۸�λ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class IS '������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_based_value IS '����ƽ���ƶ��۵�ֵ�����۸���� s��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_period IS 'ǰ�ڵ����������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_period IS '���ڹ����۵��ܿ���ֵ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_control_flag_pre_period IS 'ǰһ�ڼ�۸���Ʊ�ʶ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_or_periodic_price_pre_period IS 'ǰһ�ڼ���ƶ�ƽ���۸�/�ڼ䵥λ�۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_price_pre_period IS 'ǰ�ڵı�׼�۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit_pre_period IS 'ǰ�ڵļ۸�λ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class_pre_period IS '���ڵ����۷���';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_based_value_pre_period IS '����ƽ���ƶ��۵�ֵ(����)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_year IS 'ǰ������������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_year IS '������۵��ܿ���ֵ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_control_flag_pre_year IS 'ǰһ��ļ۸���Ʊ�ʶ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_or_periodic_price_pre_year IS 'ǰһ���ƶ�ƽ���۸�/�ڼ䵥�ۼ۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_price_in_previous_year IS '����ı�׼�۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit__pre_year IS 'ȥ��ļ۸�λ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class__pre_year IS '��������۷���';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_based_value_pre_year IS '����ƽ���ƶ��۵�ֵ(����)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_period_post_wid IS '��ǰ�ڼ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_category IS '�������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.previous_price IS '���ڼ۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_update_date IS '���¼۸���ĵ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.future_price IS 'δ���۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valid_price_date IS '�۸�ʼ��Ч������';
COMMENT ON COLUMN dw.tf_fin_item_price_info."timestamp" IS '��̸�ʽ�� utc ʱ�� (yyyymmddhhmmss)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_taxlaw1 IS '����˰���Ĺ��ۼ۸� ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_commerciallaw1 IS '�����̷��Ĺ��ۼ۸� ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_taxlaw3 IS '����˰���Ĺ��ۼ۸�(btci) ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_commerciallaw3 IS '������ҵ���ɵĹ��ۼ۸� ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_2_years IS 'ǰ����۵��ܿ���ֵ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_2_years IS 'ǰ������������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_2_period IS 'ǰ�ڵ����������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_2_period IS 'ǰ�ڹ��۵��ܿ���ֵ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price IS 'δ���ƻ��۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_1 IS 'δ���ƻ��۸�1';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_2 IS 'δ���ƻ��۸� 2';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_3 IS 'δ���ƻ��۸� 3';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_1_valid_from IS '�ƻ��۸� 1 ��ʼ��Ч������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_2_valid_from IS '�ƻ��۸� 2 ��ʼ��Ч������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_3_valid_from IS '�ƻ��۸� 3 ��ʼ��Ч������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_next_period_deactive IS 'δ����׼�ɱ����Ƶ��ڼ�(δ����)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_period_deactive IS '��ǰ��׼�ɱ����Ƶ��ڼ�(δ����)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_pre_period_deactive IS '��ǰ��׼�ɱ����Ƶ��ڼ�(δ����)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_next_period_flag IS '��ʶ: δ���ڼ�ı�׼�ɱ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_period_flag IS '��ǰ�ڼ�ı�׼�ɱ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_pre_period_flag IS '��ʶ: ��һ�ڼ�ı�׼�ɱ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.overhead_key_deactivated IS 'һ����ô���(δ����)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.lifo_fifo_relevant IS 'lifo/fifo ���';
COMMENT ON COLUMN dw.tf_fin_item_price_info.pool_number_for_lifo_valuation IS '����lifo�����Ĵ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_commerciallaw_level2 IS '������ҵ���ɵĹ��ۼ۸񣺼��� 2';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_taxlaw_level2 IS '����˰���Ĺ��ۼ۸� ����2';
COMMENT ON COLUMN dw.tf_fin_item_price_info.lowest_value_devaluation_flag IS '��ͼ�ֵ: ��ֵ��־';
COMMENT ON COLUMN dw.tf_fin_item_price_info.maintenance_status IS 'ά��״̬';
COMMENT ON COLUMN dw.tf_fin_item_price_info.cost_estimate_number_product_costing IS '�ɱ������ ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.cost_estimate_number_no_qty_structure IS 'û�������ṹ�ĳɱ�����ĳɱ�������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_variant_for_future_standard_cost_estimate IS 'δ���ı�׼�ɱ�����Ĺ��۱�ʽ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_variant_for_current_standard_cost_estimate IS '��ǰ�ı�׼�ɱ�����Ĺ��۱�ʽ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_variant_for_previous_standard_cost_estimate IS '��ȥ�ı�׼�ɱ�����Ĺ��۱�ʽ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_version_of_future_standard_cost_estimate IS 'δ���ı�׼�ɱ�����ĳɱ����㷽��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_version_of_current_standard_cost_estimate IS '��ǰ�ı�׼�ɱ�����ĳɱ����㷽��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_version_of_previous_standard_cost_estimate IS '��ǰ�ı�׼�ɱ�����ĳɱ����㷽��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.origingroup_as_subdivision_of_cost_element IS '��Ϊ�ɱ�Ҫ�������ԭʼ��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_overhead_group IS '�ɱ������ӷ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.period_of_future_standard_cost_estimate IS 'δ���ɱ������ڼ�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.period_of_current_standard_cost_estimate IS '��ǰ�ı�׼�ɱ������ڼ�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.period_of_previous_standard_cost_estimate IS '��ǰ�ı�׼�ɱ������ڼ�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_year_of_future_standard_cost_estimate IS 'δ����׼�ɱ�����Ļ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_year_of_current_standard_cost_estimate IS '��ǰ��׼�ɱ�����Ļ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_year_of_previous_standard_cost_estimate IS '��һ��׼�ɱ�����Ļ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_costed_with_quantity_structure IS '���ϸ��������ṹ���гɱ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.previous_planned_price IS '���ڱ�׼�۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_ledger_activated_at_material_level IS '�����ʲ������ϲ㱻����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_price_determination_control IS '���ϼ۸�ȷ��: ����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.current_planned_price IS '��ǰ�ļƻ��۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.value_total_valuated_stock_at_sales_price IS '�����ۼ۸�Ƶ��ܹ��ۿ���ֵ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_related_origin IS '������ص�Դ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.physical_inventory_blocking_indicator IS 'ʵ���̵㶳���ʶ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.inventory_indicator_for_valueonly_material IS '��һ��ֵ���ϵ��̵����ʶ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.date_of_lastposted_count_for_unrestricted_use_stock IS '������ʹ�õĿ��������ʵ���̵������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.physical_inventory_indicator_for_cycle_counting IS '�����̵���̵��ʶ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_margin IS '����ë��';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fixed_portion_of_current_planned_price IS '��ǰ�ƻ��۸�Ĺ̶����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fixed_portion_of_previous_planned_price IS '����ƻ��۸�Ĺ̶�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fixed_portion_of_future_planned_price IS 'δ���ƻ��۸�Ĺ̶�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.plan_pricefor_sales_order_or_item_stock IS '��ǰ�ƻ��۸�';
COMMENT ON COLUMN dw.tf_fin_item_price_info.plan_pricefor_sales_order_or_item_stock_pre_year IS '����ƻ��۸�����ʹ�ÿ�����������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.plan_pricefor_sales_order_or_item_stock_future IS 'δ���ƻ��۸�����ʹ�ÿ�����������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class_for_sales_order_stock IS '�������۶��������������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class_for_project_stock IS '��Ŀ������������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_usage IS '������;';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_origin IS '����Դ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.produced_in_house IS '���Ʋ�Ʒ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.unit_measure_special_batch IS '���������ض�������λ������';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit_based_tax_commercial_law IS '����˰/�̷����ۼ۸�ļ۸�λ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.mbrue IS 'mbew ����ڼ�֮ǰ���ڼ�� mbewh �Ѿ�����';
COMMENT ON COLUMN dw.tf_fin_item_price_info.special_stock_vendor_valuation_class IS '��Ӧ��������Ĺ�����';

-- Permissions

ALTER TABLE dw.tf_fin_item_price_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_item_price_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_item_price_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_item_price_info TO gr_uqry_data;
