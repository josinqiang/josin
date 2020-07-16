-- Drop table

-- DROP TABLE dw.td_pp_bom_detail_info_erp;

CREATE TABLE dw.td_pp_bom_detail_info_erp (
	row_wid int8 NULL,
	client varchar(9) NULL, -- �ͻ���
	item_code varchar(54) NULL, -- ���Ϻ�
	factory_code varchar(12) NULL, -- ����
	bom_use varchar(3) NULL, -- bom_��;
	header_item_bom_num varchar(24) NULL, -- ���ϵ�
	header_bom_category varchar(3) NULL, -- bomͷ_���
	alternative_bom varchar(6) NULL, -- ͷ��ѡ��_bom
	header_internal_counter varchar(24) NULL, -- ͷ�ڲ�������
	header_valid_from_date varchar(24) NULL, -- ͷ��Ч��ʼ����
	header_tech_status_from varchar(36) NULL, -- ͷ����״̬��
	header_change_num varchar(36) NULL, -- ͷ���ı��
	header_delete_flag varchar(3) NULL, -- ͷɾ����ʶ
	header_delete_flag_bom varchar(3) NULL, -- bomͷ_ɾ����־
	header_create_dt varchar(24) NULL, -- ͷ���ڼ�¼������
	header_create_by varchar(36) NULL, -- ͷ������¼���û�
	header_update_dt varchar(24) NULL, -- ͷ��������
	header_update_by varchar(36) NULL, -- ͷ���������Ա������
	header_bom_unit varchar(9) NULL, -- ͷbom_������λ
	header_bom_quantity numeric(13,3) NULL, -- ͷ��������
	bom_status varchar(6) NULL, -- bom_״̬
	linebom_category varchar(3) NULL, -- bom_���
	line_item_bom_num varchar(24) NULL, -- ���ϵ�
	line_bom_item_num varchar(24) NULL, -- bom_��Ŀ�ڵ��
	line_internal_counter varchar(24) NULL, -- �ڲ�������
	line_valid_from_date varchar(24) NULL, -- ��Ч��ʼ����
	line_tech_status_from varchar(36) NULL, -- ����״̬��
	line_change_num varchar(36) NULL, -- ���ı��
	line_delete_flag varchar(3) NULL, -- ɾ����ʶ
	line_item_parent_num varchar(24) NULL, -- ���ڵ�
	line_internal_counter_pre varchar(24) NULL, -- ǰһ��Ŀ������
	line_create_dt varchar(24) NULL, -- ���ڼ�¼������
	line_create_by varchar(36) NULL, -- ������¼���û�
	line_update_dt varchar(24) NULL, -- ��������
	line_update_by varchar(36) NULL, -- ���������Ա������
	bom_compoent varchar(54) NULL, -- bom_���
	issuing_fatory varchar(12) NULL, -- ���Ź���
	line_item_category varchar(3) NULL, -- ��Ŀ������ϵ���
	item_number_bom varchar(12) NULL, -- bom_��Ŀ��
	sortf varchar(30) NULL, -- �����ַ���
	line_item_unit varchar(9) NULL, -- ���������λ
	line_item_quantity numeric(13,3) NULL, -- �������
	line_item_fixed_qty varchar(3) NULL, -- �̶�����
	line_item_price numeric(11,2) NULL, -- �۸�
	line_item_price_unit numeric(5) NULL, -- �۸�λ
	line_item_currency varchar(15) NULL, -- ������
	component_scrap_percent numeric(5,2) NULL, -- ������Ʒ�ٷ���
	operation_scrap numeric(5,2) NULL, -- �����Ʒ
	net_scrap_flag varchar(3) NULL, -- ��־������Ʒ
	bulk_material_flag varchar(3) NULL, -- ��ʶ��ɢװ����
	material_provision_flag varchar(3) NULL, -- ���Ϲ�Ӧ��ʶ��
	spare_part_flag varchar(3) NULL, -- ��־������
	item_relevant_to_sale_flag varchar(3) NULL, -- ��־����������ص���Ŀ
	item_relevant_to_product_flag varchar(3) NULL, -- ��־�������������Ŀ
	item_relevant_to_plant_maintenance_flag varchar(3) NULL, -- ��־���빤��ά�������Ŀ
	relevancy_to_cost_flag varchar(3) NULL, -- �ɱ����������ı�ʶ��
	item_relevant_to_engineer_flag varchar(3) NULL, -- ��־���빤�������Ŀ
	high_level_configure_flag varchar(3) NULL, -- ָʾ��_�߼�����
	pm_assembly_flag varchar(3) NULL, -- pm_װ��ָʾ��
	bom_is_recursive_flag varchar(3) NULL, -- ��־��bom_�ǵݹ��
	recursiveness_allowed_flag varchar(3) NULL, -- ��־���ݹ�������
	cad_flag varchar(3) NULL, -- cad��ʶ
	material_in_bom_item_not_use varchar(54) NULL, -- bom��Ŀ�еĺ�������-δʹ��
	lead_time_offset numeric(3) NULL, -- ��ǰ��ƫ����
	component_consume_distribute_key varchar(12) NULL, -- �������ĵķ������
	alternative_item_flag varchar(3) NULL, -- ָʾ���������Ŀ
	usage_probability_in_percent numeric(3) NULL, -- ʹ�ÿ����԰�%(��ѡ��Ŀ)
	purchasing_group varchar(9) NULL, -- �ɹ���
	delivery_time numeric(3) NULL, -- �������Ľ���ʱ��
	account_num_vendor_or_creditor varchar(30) NULL, -- ��Ӧ�̻�ծȨ�˵��ʺ�
	cost_element varchar(30) NULL, -- �ɱ�Ҫ��
	variable_size_items_num numeric(13,3) NULL, -- �ɱ��С��Ŀ��
	size1 numeric(13,3) NULL, -- �ߴ�1
	size2 numeric(13,3) NULL, -- �ߴ�2
	size3 numeric(13,3) NULL, -- �ߴ�3
	measure_sizes_unit_1_to_3 varchar(9) NULL, -- �ߴ�1��3�ļ�����λ
	variable_size_quantity numeric(13,3) NULL, -- �ɱ�ߴ���Ŀ����
	formula_key varchar(6) NULL, -- ��ʽ��
	sub_items_exist_flag varchar(3) NULL, -- ָʾ��������Ŀ����
	more_than_one_alternative_flag varchar(3) NULL, -- ��־�����ж���һ����ѡ����Ŀ
	long_text_language varchar(3) NULL, -- ���ı�����-���ڸ���ƾ֤�Ĵ���
	bom_item_text_line1 varchar(120) NULL, -- bom_��Ŀ�ı�����1��
	bom_item_text_line2 varchar(120) NULL, -- bom_��Ŀ�ı�����2��
	object_type_bom_item varchar(3) NULL, -- �������ͣ�bom��Ŀ��
	material_group varchar(27) NULL, -- ������
	goods_receipt_process_time numeric(3) NULL, -- ����Ƶ��ջ�����ʱ��
	document_type varchar(9) NULL, -- �ĵ�����
	document_number varchar(75) NULL, -- ƾ֤���
	document_version varchar(6) NULL, -- ƾ֤�汾
	document_part varchar(9) NULL, -- ƾ֤����
	average_material_purity numeric(5,2) NULL, -- ƽ�����ϴ��Ȱ�%
	assigned_dependencie_num varchar(54) NULL, -- ���з�������ԵĶ�����
	production_order_location varchar(12) NULL, -- ���������ķ����ص�
	co_product_flag varchar(3) NULL, -- ָʾ�������ϲ�Ʒ
	intra_material varchar(54) NULL, -- �м�����
	restrictions_exist_flag varchar(3) NULL, -- ָʾ����Լ������
	node_num_bom_item_flag varchar(24) NULL, -- bom_��Ŀ�ļ̳нڵ��
	last_date_shift_date varchar(24) NULL, -- ������ڰ�ε�����
	update_date_update_by varchar(36) NULL, -- �������ڱ�����û�������
	explosion_type varchar(6) NULL, -- չ������
	follow_up_group varchar(6) NULL, -- �����
	discontinuation_group varchar(6) NULL, -- ��ֹ��
	classification_number varchar(24) NULL, -- �����
	classifi_as_select_condition_flag varchar(3) NULL, -- ָʾ����������Ϊѡ������
	date_shift_hierarchy_flag varchar(6) NULL, -- ���ڱ�����ָʾ��
	supply_area varchar(30) NULL, -- ��Ӧ����
	offset_operation_lead_time numeric(3) NULL, -- �������ǰ��ƫ��
	lead_time_offset_operation_flag varchar(9) NULL, -- ������ǰ��ƫ�����ĵ�λ
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
COMMENT ON TABLE dw.td_pp_bom_detail_info_erp IS 'BOM������Ϣ';

-- Column comments

COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.client IS '�ͻ���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_code IS '���Ϻ�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.factory_code IS '����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_use IS 'bom_��;';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_item_bom_num IS '���ϵ�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_bom_category IS 'bomͷ_���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.alternative_bom IS 'ͷ��ѡ��_bom';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_internal_counter IS 'ͷ�ڲ�������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_valid_from_date IS 'ͷ��Ч��ʼ����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_tech_status_from IS 'ͷ����״̬��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_change_num IS 'ͷ���ı��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_delete_flag IS 'ͷɾ����ʶ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_delete_flag_bom IS 'bomͷ_ɾ����־';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_create_dt IS 'ͷ���ڼ�¼������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_create_by IS 'ͷ������¼���û�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_update_dt IS 'ͷ��������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_update_by IS 'ͷ���������Ա������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_bom_unit IS 'ͷbom_������λ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_bom_quantity IS 'ͷ��������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_status IS 'bom_״̬';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.linebom_category IS 'bom_���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_bom_num IS '���ϵ�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_bom_item_num IS 'bom_��Ŀ�ڵ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_internal_counter IS '�ڲ�������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_valid_from_date IS '��Ч��ʼ����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_tech_status_from IS '����״̬��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_change_num IS '���ı��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_delete_flag IS 'ɾ����ʶ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_parent_num IS '���ڵ�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_internal_counter_pre IS 'ǰһ��Ŀ������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_create_dt IS '���ڼ�¼������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_create_by IS '������¼���û�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_update_dt IS '��������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_update_by IS '���������Ա������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_compoent IS 'bom_���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.issuing_fatory IS '���Ź���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_category IS '��Ŀ������ϵ���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_number_bom IS 'bom_��Ŀ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.sortf IS '�����ַ���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_unit IS '���������λ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_quantity IS '�������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_fixed_qty IS '�̶�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_price IS '�۸�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_price_unit IS '�۸�λ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_currency IS '������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.component_scrap_percent IS '������Ʒ�ٷ���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.operation_scrap IS '�����Ʒ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.net_scrap_flag IS '��־������Ʒ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bulk_material_flag IS '��ʶ��ɢװ����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.material_provision_flag IS '���Ϲ�Ӧ��ʶ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.spare_part_flag IS '��־������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_sale_flag IS '��־����������ص���Ŀ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_product_flag IS '��־�������������Ŀ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_plant_maintenance_flag IS '��־���빤��ά�������Ŀ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.relevancy_to_cost_flag IS '�ɱ����������ı�ʶ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_engineer_flag IS '��־���빤�������Ŀ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.high_level_configure_flag IS 'ָʾ��_�߼�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.pm_assembly_flag IS 'pm_װ��ָʾ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_is_recursive_flag IS '��־��bom_�ǵݹ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.recursiveness_allowed_flag IS '��־���ݹ�������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.cad_flag IS 'cad��ʶ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.material_in_bom_item_not_use IS 'bom��Ŀ�еĺ�������-δʹ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.lead_time_offset IS '��ǰ��ƫ����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.component_consume_distribute_key IS '�������ĵķ������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.alternative_item_flag IS 'ָʾ���������Ŀ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.usage_probability_in_percent IS 'ʹ�ÿ����԰�%(��ѡ��Ŀ)';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.purchasing_group IS '�ɹ���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.delivery_time IS '�������Ľ���ʱ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.account_num_vendor_or_creditor IS '��Ӧ�̻�ծȨ�˵��ʺ�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.cost_element IS '�ɱ�Ҫ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.variable_size_items_num IS '�ɱ��С��Ŀ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.size1 IS '�ߴ�1';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.size2 IS '�ߴ�2';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.size3 IS '�ߴ�3';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.measure_sizes_unit_1_to_3 IS '�ߴ�1��3�ļ�����λ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.variable_size_quantity IS '�ɱ�ߴ���Ŀ����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.formula_key IS '��ʽ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.sub_items_exist_flag IS 'ָʾ��������Ŀ����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.more_than_one_alternative_flag IS '��־�����ж���һ����ѡ����Ŀ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.long_text_language IS '���ı�����-���ڸ���ƾ֤�Ĵ���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_item_text_line1 IS 'bom_��Ŀ�ı�����1��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_item_text_line2 IS 'bom_��Ŀ�ı�����2��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.object_type_bom_item IS '�������ͣ�bom��Ŀ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.material_group IS '������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.goods_receipt_process_time IS '����Ƶ��ջ�����ʱ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_type IS '�ĵ�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_number IS 'ƾ֤���';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_version IS 'ƾ֤�汾';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_part IS 'ƾ֤����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.average_material_purity IS 'ƽ�����ϴ��Ȱ�%';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.assigned_dependencie_num IS '���з�������ԵĶ�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.production_order_location IS '���������ķ����ص�';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.co_product_flag IS 'ָʾ�������ϲ�Ʒ';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.intra_material IS '�м�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.restrictions_exist_flag IS 'ָʾ����Լ������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.node_num_bom_item_flag IS 'bom_��Ŀ�ļ̳нڵ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.last_date_shift_date IS '������ڰ�ε�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.update_date_update_by IS '�������ڱ�����û�������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.explosion_type IS 'չ������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.follow_up_group IS '�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.discontinuation_group IS '��ֹ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.classification_number IS '�����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.classifi_as_select_condition_flag IS 'ָʾ����������Ϊѡ������';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.date_shift_hierarchy_flag IS '���ڱ�����ָʾ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.supply_area IS '��Ӧ����';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.offset_operation_lead_time IS '�������ǰ��ƫ��';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.lead_time_offset_operation_flag IS '������ǰ��ƫ�����ĵ�λ';

-- Permissions

ALTER TABLE dw.td_pp_bom_detail_info_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_bom_detail_info_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_bom_detail_info_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_pp_bom_detail_info_erp TO gr_uqry_data;
