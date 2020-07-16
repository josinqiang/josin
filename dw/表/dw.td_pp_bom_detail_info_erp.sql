-- Drop table

-- DROP TABLE dw.td_pp_bom_detail_info_erp;

CREATE TABLE dw.td_pp_bom_detail_info_erp (
	row_wid int8 NULL,
	client varchar(9) NULL, -- 客户端
	item_code varchar(54) NULL, -- 物料号
	factory_code varchar(12) NULL, -- 工厂
	bom_use varchar(3) NULL, -- bom_用途
	header_item_bom_num varchar(24) NULL, -- 物料单
	header_bom_category varchar(3) NULL, -- bom头_类别
	alternative_bom varchar(6) NULL, -- 头可选的_bom
	header_internal_counter varchar(24) NULL, -- 头内部计数器
	header_valid_from_date varchar(24) NULL, -- 头有效起始日期
	header_tech_status_from varchar(36) NULL, -- 头技术状态从
	header_change_num varchar(36) NULL, -- 头更改编号
	header_delete_flag varchar(3) NULL, -- 头删除标识
	header_delete_flag_bom varchar(3) NULL, -- bom头_删除标志
	header_create_dt varchar(24) NULL, -- 头日期记录创建于
	header_create_by varchar(36) NULL, -- 头创建记录的用户
	header_update_dt varchar(24) NULL, -- 头更改日期
	header_update_by varchar(36) NULL, -- 头对象更改人员的名称
	header_bom_unit varchar(9) NULL, -- 头bom_基本单位
	header_bom_quantity numeric(13,3) NULL, -- 头基本数量
	bom_status varchar(6) NULL, -- bom_状态
	linebom_category varchar(3) NULL, -- bom_类别
	line_item_bom_num varchar(24) NULL, -- 物料单
	line_bom_item_num varchar(24) NULL, -- bom_项目节点号
	line_internal_counter varchar(24) NULL, -- 内部计数器
	line_valid_from_date varchar(24) NULL, -- 有效起始日期
	line_tech_status_from varchar(36) NULL, -- 技术状态从
	line_change_num varchar(36) NULL, -- 更改编号
	line_delete_flag varchar(3) NULL, -- 删除标识
	line_item_parent_num varchar(24) NULL, -- 父节点
	line_internal_counter_pre varchar(24) NULL, -- 前一项目计数器
	line_create_dt varchar(24) NULL, -- 日期记录创建于
	line_create_by varchar(36) NULL, -- 创建记录的用户
	line_update_dt varchar(24) NULL, -- 更改日期
	line_update_by varchar(36) NULL, -- 对象更改人员的名称
	bom_compoent varchar(54) NULL, -- bom_组件
	issuing_fatory varchar(12) NULL, -- 发放工厂
	line_item_category varchar(3) NULL, -- 项目类别（物料单）
	item_number_bom varchar(12) NULL, -- bom_项目号
	sortf varchar(30) NULL, -- 排序字符串
	line_item_unit varchar(9) NULL, -- 组件计量单位
	line_item_quantity numeric(13,3) NULL, -- 组件数量
	line_item_fixed_qty varchar(3) NULL, -- 固定数量
	line_item_price numeric(11,2) NULL, -- 价格
	line_item_price_unit numeric(5) NULL, -- 价格单位
	line_item_currency varchar(15) NULL, -- 货币码
	component_scrap_percent numeric(5,2) NULL, -- 部件废品百分数
	operation_scrap numeric(5,2) NULL, -- 工序废品
	net_scrap_flag varchar(3) NULL, -- 标志：净废品
	bulk_material_flag varchar(3) NULL, -- 标识：散装物料
	material_provision_flag varchar(3) NULL, -- 物料供应标识符
	spare_part_flag varchar(3) NULL, -- 标志：备件
	item_relevant_to_sale_flag varchar(3) NULL, -- 标志：与销售相关的项目
	item_relevant_to_product_flag varchar(3) NULL, -- 标志：与生产相关项目
	item_relevant_to_plant_maintenance_flag varchar(3) NULL, -- 标志：与工厂维护相关项目
	relevancy_to_cost_flag varchar(3) NULL, -- 成本核算相关项的标识符
	item_relevant_to_engineer_flag varchar(3) NULL, -- 标志：与工程相关项目
	high_level_configure_flag varchar(3) NULL, -- 指示器_高级配置
	pm_assembly_flag varchar(3) NULL, -- pm_装配指示符
	bom_is_recursive_flag varchar(3) NULL, -- 标志：bom_是递归的
	recursiveness_allowed_flag varchar(3) NULL, -- 标志：递归性允许
	cad_flag varchar(3) NULL, -- cad标识
	material_in_bom_item_not_use varchar(54) NULL, -- bom项目中的后续物料-未使用
	lead_time_offset numeric(3) NULL, -- 提前期偏置量
	component_consume_distribute_key varchar(12) NULL, -- 部件消耗的分配代码
	alternative_item_flag varchar(3) NULL, -- 指示符：替代项目
	usage_probability_in_percent numeric(3) NULL, -- 使用可能性按%(可选项目)
	purchasing_group varchar(9) NULL, -- 采购组
	delivery_time numeric(3) NULL, -- 以天计算的交货时间
	account_num_vendor_or_creditor varchar(30) NULL, -- 供应商或债权人的帐号
	cost_element varchar(30) NULL, -- 成本要素
	variable_size_items_num numeric(13,3) NULL, -- 可变大小项目号
	size1 numeric(13,3) NULL, -- 尺寸1
	size2 numeric(13,3) NULL, -- 尺寸2
	size3 numeric(13,3) NULL, -- 尺寸3
	measure_sizes_unit_1_to_3 varchar(9) NULL, -- 尺寸1到3的计量单位
	variable_size_quantity numeric(13,3) NULL, -- 可变尺寸项目数量
	formula_key varchar(6) NULL, -- 公式码
	sub_items_exist_flag varchar(3) NULL, -- 指示符：子项目存在
	more_than_one_alternative_flag varchar(3) NULL, -- 标志：具有多于一个可选的项目
	long_text_language varchar(3) NULL, -- 长文本语言-用于更改凭证的创建
	bom_item_text_line1 varchar(120) NULL, -- bom_项目文本（行1）
	bom_item_text_line2 varchar(120) NULL, -- bom_项目文本（行2）
	object_type_bom_item varchar(3) NULL, -- 对象类型（bom项目）
	material_group varchar(27) NULL, -- 物料组
	goods_receipt_process_time numeric(3) NULL, -- 以天计的收货处理时间
	document_type varchar(9) NULL, -- 文档类型
	document_number varchar(75) NULL, -- 凭证编号
	document_version varchar(6) NULL, -- 凭证版本
	document_part varchar(9) NULL, -- 凭证部分
	average_material_purity numeric(5,2) NULL, -- 平均物料纯度按%
	assigned_dependencie_num varchar(54) NULL, -- 具有分配相关性的对象编号
	production_order_location varchar(12) NULL, -- 生产订单的发货地点
	co_product_flag varchar(3) NULL, -- 指示符：联合产品
	intra_material varchar(54) NULL, -- 中间物料
	restrictions_exist_flag varchar(3) NULL, -- 指示符：约束存在
	node_num_bom_item_flag varchar(24) NULL, -- bom_项目的继承节点号
	last_date_shift_date varchar(24) NULL, -- 最后日期班次的日期
	update_date_update_by varchar(36) NULL, -- 进行日期变更的用户的名称
	explosion_type varchar(6) NULL, -- 展开类型
	follow_up_group varchar(6) NULL, -- 后继组
	discontinuation_group varchar(6) NULL, -- 中止组
	classification_number varchar(24) NULL, -- 分类号
	classifi_as_select_condition_flag varchar(3) NULL, -- 指示符：分类作为选择条件
	date_shift_hierarchy_flag varchar(6) NULL, -- 日期变更层次指示符
	supply_area varchar(30) NULL, -- 供应区域
	offset_operation_lead_time numeric(3) NULL, -- 工序的提前期偏置
	lead_time_offset_operation_flag varchar(9) NULL, -- 工序提前期偏移量的单位
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
COMMENT ON TABLE dw.td_pp_bom_detail_info_erp IS 'BOM基本信息';

-- Column comments

COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.client IS '客户端';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_code IS '物料号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.factory_code IS '工厂';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_use IS 'bom_用途';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_item_bom_num IS '物料单';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_bom_category IS 'bom头_类别';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.alternative_bom IS '头可选的_bom';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_internal_counter IS '头内部计数器';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_valid_from_date IS '头有效起始日期';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_tech_status_from IS '头技术状态从';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_change_num IS '头更改编号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_delete_flag IS '头删除标识';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_delete_flag_bom IS 'bom头_删除标志';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_create_dt IS '头日期记录创建于';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_create_by IS '头创建记录的用户';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_update_dt IS '头更改日期';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_update_by IS '头对象更改人员的名称';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_bom_unit IS '头bom_基本单位';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.header_bom_quantity IS '头基本数量';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_status IS 'bom_状态';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.linebom_category IS 'bom_类别';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_bom_num IS '物料单';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_bom_item_num IS 'bom_项目节点号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_internal_counter IS '内部计数器';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_valid_from_date IS '有效起始日期';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_tech_status_from IS '技术状态从';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_change_num IS '更改编号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_delete_flag IS '删除标识';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_parent_num IS '父节点';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_internal_counter_pre IS '前一项目计数器';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_create_dt IS '日期记录创建于';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_create_by IS '创建记录的用户';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_update_dt IS '更改日期';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_update_by IS '对象更改人员的名称';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_compoent IS 'bom_组件';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.issuing_fatory IS '发放工厂';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_category IS '项目类别（物料单）';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_number_bom IS 'bom_项目号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.sortf IS '排序字符串';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_unit IS '组件计量单位';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_quantity IS '组件数量';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_fixed_qty IS '固定数量';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_price IS '价格';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_price_unit IS '价格单位';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.line_item_currency IS '货币码';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.component_scrap_percent IS '部件废品百分数';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.operation_scrap IS '工序废品';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.net_scrap_flag IS '标志：净废品';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bulk_material_flag IS '标识：散装物料';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.material_provision_flag IS '物料供应标识符';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.spare_part_flag IS '标志：备件';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_sale_flag IS '标志：与销售相关的项目';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_product_flag IS '标志：与生产相关项目';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_plant_maintenance_flag IS '标志：与工厂维护相关项目';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.relevancy_to_cost_flag IS '成本核算相关项的标识符';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.item_relevant_to_engineer_flag IS '标志：与工程相关项目';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.high_level_configure_flag IS '指示器_高级配置';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.pm_assembly_flag IS 'pm_装配指示符';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_is_recursive_flag IS '标志：bom_是递归的';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.recursiveness_allowed_flag IS '标志：递归性允许';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.cad_flag IS 'cad标识';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.material_in_bom_item_not_use IS 'bom项目中的后续物料-未使用';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.lead_time_offset IS '提前期偏置量';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.component_consume_distribute_key IS '部件消耗的分配代码';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.alternative_item_flag IS '指示符：替代项目';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.usage_probability_in_percent IS '使用可能性按%(可选项目)';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.purchasing_group IS '采购组';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.delivery_time IS '以天计算的交货时间';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.account_num_vendor_or_creditor IS '供应商或债权人的帐号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.cost_element IS '成本要素';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.variable_size_items_num IS '可变大小项目号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.size1 IS '尺寸1';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.size2 IS '尺寸2';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.size3 IS '尺寸3';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.measure_sizes_unit_1_to_3 IS '尺寸1到3的计量单位';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.variable_size_quantity IS '可变尺寸项目数量';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.formula_key IS '公式码';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.sub_items_exist_flag IS '指示符：子项目存在';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.more_than_one_alternative_flag IS '标志：具有多于一个可选的项目';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.long_text_language IS '长文本语言-用于更改凭证的创建';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_item_text_line1 IS 'bom_项目文本（行1）';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.bom_item_text_line2 IS 'bom_项目文本（行2）';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.object_type_bom_item IS '对象类型（bom项目）';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.material_group IS '物料组';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.goods_receipt_process_time IS '以天计的收货处理时间';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_type IS '文档类型';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_number IS '凭证编号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_version IS '凭证版本';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.document_part IS '凭证部分';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.average_material_purity IS '平均物料纯度按%';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.assigned_dependencie_num IS '具有分配相关性的对象编号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.production_order_location IS '生产订单的发货地点';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.co_product_flag IS '指示符：联合产品';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.intra_material IS '中间物料';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.restrictions_exist_flag IS '指示符：约束存在';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.node_num_bom_item_flag IS 'bom_项目的继承节点号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.last_date_shift_date IS '最后日期班次的日期';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.update_date_update_by IS '进行日期变更的用户的名称';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.explosion_type IS '展开类型';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.follow_up_group IS '后继组';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.discontinuation_group IS '中止组';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.classification_number IS '分类号';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.classifi_as_select_condition_flag IS '指示符：分类作为选择条件';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.date_shift_hierarchy_flag IS '日期变更层次指示符';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.supply_area IS '供应区域';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.offset_operation_lead_time IS '工序的提前期偏置';
COMMENT ON COLUMN dw.td_pp_bom_detail_info_erp.lead_time_offset_operation_flag IS '工序提前期偏移量的单位';

-- Permissions

ALTER TABLE dw.td_pp_bom_detail_info_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_bom_detail_info_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_bom_detail_info_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_pp_bom_detail_info_erp TO gr_uqry_data;
