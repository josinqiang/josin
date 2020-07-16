-- Drop table

-- DROP TABLE dw.tf_fin_item_price_info;

CREATE TABLE dw.tf_fin_item_price_info (
	client_code varchar(9) NULL, -- 客户端编号
	item_wid int8 NULL, -- 项目代码代理键
	material_number varchar(12) NULL, -- 评估范围
	valuation_type varchar(30) NULL, -- 评估类型
	delet_flag_valuation_type varchar(3) NULL, -- 一种评估类型的所有物料数据的删除标志
	valuated_stock numeric(13,3) NULL, -- 总计已估计库存
	valuated_stock_value numeric(13,2) NULL, -- 估价的总库存价值
	price_control_flag varchar(3) NULL, -- 价格控制指示符
	moving_avg_or_periodic_price numeric(11,2) NULL, -- 移动平均价格/周期单价
	standard_price numeric(11,2) NULL, -- 标准价格
	price_unit numeric(5) NULL, -- 价格单位
	valuation_class varchar(12) NULL, -- 评估类
	moving_avg_based_value numeric(13,2) NULL, -- 基于平均移动价的值（仅价格控制 s）
	valuated_stock_pre_period numeric(13,3) NULL, -- 前期的总评估库存
	valuated_stock_value_pre_period numeric(13,2) NULL, -- 上期估过价的总库存价值
	price_control_flag_pre_period varchar(3) NULL, -- 前一期间价格控制标识
	moving_avg_or_periodic_price_pre_period numeric(11,2) NULL, -- 前一期间的移动平均价格/期间单位价格
	standard_price_pre_period numeric(11,2) NULL, -- 前期的标准价格
	price_unit_pre_period numeric(5) NULL, -- 前期的价格单位
	valuation_class_pre_period varchar(12) NULL, -- 上期的评价分类
	moving_avg_based_value_pre_period numeric(13,2) NULL, -- 基于平均移动价的值(上期)
	valuated_stock_pre_year numeric(13,3) NULL, -- 前年的总评估库存
	valuated_stock_value_pre_year numeric(13,2) NULL, -- 上年估价的总库存价值
	price_control_flag_pre_year varchar(3) NULL, -- 前一年的价格控制标识
	moving_avg_or_periodic_price_pre_year numeric(11,2) NULL, -- 前一年移动平均价格/期间单价价格
	standard_price_in_previous_year numeric(11,2) NULL, -- 上年的标准价格
	price_unit__pre_year numeric(5) NULL, -- 去年的价格单位
	valuation_class__pre_year varchar(12) NULL, -- 上年的评价分类
	moving_avg_based_value_pre_year numeric(13,2) NULL, -- 基于平均移动价的值(上年)
	fiscal_period_post_wid int8 NULL, -- 当前期间代理键
	valuation_category varchar(3) NULL, -- 评估类别
	previous_price numeric(11,2) NULL, -- 上期价格
	price_update_date varchar(24) NULL, -- 最新价格更改的日期
	future_price numeric(11,2) NULL, -- 未来价格
	valid_price_date varchar(24) NULL, -- 价格开始有效的日期
	"timestamp" numeric(15) NULL, -- 简短格式的 utc 时戳 (yyyymmddhhmmss)
	valuation_price_taxlaw1 numeric(11,2) NULL, -- 基于税法的估价价格 
	valuation_price_commerciallaw1 numeric(11,2) NULL, -- 基于商法的估价价格 
	valuation_price_taxlaw3 numeric(11,2) NULL, -- 基于税法的估价价格(btci) 
	valuation_price_commerciallaw3 numeric(11,2) NULL, -- 基于商业法律的估价价格 
	valuated_stock_value_pre_2_years numeric(13,2) NULL, -- 前年估价的总库存价值
	valuated_stock_pre_2_years numeric(13,3) NULL, -- 前年的总评估库存
	valuated_stock_pre_2_period numeric(13,3) NULL, -- 前期的总评估库存
	valuated_stock_value_pre_2_period numeric(13,2) NULL, -- 前期估价的总库存价值
	planned_price numeric(11,2) NULL, -- 未来计划价格
	planned_price_1 numeric(11,2) NULL, -- 未来计划价格1
	planned_price_2 numeric(11,2) NULL, -- 未来计划价格 2
	planned_price_3 numeric(11,2) NULL, -- 未来计划价格 3
	planned_price_1_valid_from varchar(24) NULL, -- 计划价格 1 开始有效的日期
	planned_price_2_valid_from varchar(24) NULL, -- 计划价格 2 开始有效的日期
	planned_price_3_valid_from varchar(24) NULL, -- 计划价格 3 开始有效的日期
	standard_cost_estimate_next_period_deactive varchar(18) NULL, -- 未来标准成本估计的期间(未激活)
	standard_cost_estimate_period_deactive varchar(18) NULL, -- 当前标准成本估计的期间(未激活)
	standard_cost_estimate_pre_period_deactive varchar(18) NULL, -- 以前标准成本估计的期间(未激活)
	standard_cost_estimate_next_period_flag varchar(3) NULL, -- 标识: 未来期间的标准成本估算
	standard_cost_estimate_period_flag varchar(3) NULL, -- 当前期间的标准成本估算
	standard_cost_estimate_pre_period_flag varchar(3) NULL, -- 标识: 上一期间的标准成本估计
	overhead_key_deactivated varchar(18) NULL, -- 一般费用代码(未激活)
	lifo_fifo_relevant varchar(3) NULL, -- lifo/fifo 相关
	pool_number_for_lifo_valuation varchar(12) NULL, -- 用于lifo评估的储备号
	valuation_price_commerciallaw_level2 numeric(11,2) NULL, -- 基于商业法律的估价价格：级别 2
	valuation_price_taxlaw_level2 numeric(11,2) NULL, -- 基于税法的估价价格： 级别2
	lowest_value_devaluation_flag varchar(6) NULL, -- 最低价值: 贬值标志
	maintenance_status varchar(45) NULL, -- 维护状态
	cost_estimate_number_product_costing varchar(36) NULL, -- 成本估算号 
	cost_estimate_number_no_qty_structure varchar(36) NULL, -- 没有数量结构的成本估算的成本估算编号
	valuation_variant_for_future_standard_cost_estimate varchar(9) NULL, -- 未来的标准成本估算的估价变式
	valuation_variant_for_current_standard_cost_estimate varchar(9) NULL, -- 当前的标准成本估算的估价变式
	valuation_variant_for_previous_standard_cost_estimate varchar(9) NULL, -- 过去的标准成本估算的估价变式
	costing_version_of_future_standard_cost_estimate varchar(6) NULL, -- 未来的标准成本估算的成本核算方案
	costing_version_of_current_standard_cost_estimate varchar(6) NULL, -- 当前的标准成本估算的成本核算方案
	costing_version_of_previous_standard_cost_estimate varchar(6) NULL, -- 先前的标准成本估算的成本核算方案
	origingroup_as_subdivision_of_cost_element varchar(12) NULL, -- 作为成本要素子组的原始组
	costing_overhead_group varchar(30) NULL, -- 成本核算间接费用组
	period_of_future_standard_cost_estimate varchar(9) NULL, -- 未来成本估算期间
	period_of_current_standard_cost_estimate varchar(9) NULL, -- 当前的标准成本估算期间
	period_of_previous_standard_cost_estimate varchar(9) NULL, -- 先前的标准成本估算期间
	fiscal_year_of_future_standard_cost_estimate varchar(12) NULL, -- 未来标准成本估算的会计年度
	fiscal_year_of_current_standard_cost_estimate varchar(12) NULL, -- 当前标准成本估算的会计年度
	fiscal_year_of_previous_standard_cost_estimate varchar(12) NULL, -- 上一标准成本估算的会计年度
	material_costed_with_quantity_structure varchar(3) NULL, -- 物料根据数量结构进行成本核算
	previous_planned_price numeric(11,2) NULL, -- 上期标准价格
	material_ledger_activated_at_material_level varchar(3) NULL, -- 物料帐簿在物料层被激活
	material_price_determination_control varchar(3) NULL, -- 物料价格确定: 控制
	current_planned_price numeric(11,2) NULL, -- 当前的计划价格
	value_total_valuated_stock_at_sales_price numeric(13,2) NULL, -- 以销售价格计的总估价库存价值
	material_related_origin varchar(3) NULL, -- 物料相关的源
	physical_inventory_blocking_indicator varchar(3) NULL, -- 实际盘点冻结标识
	inventory_indicator_for_valueonly_material varchar(9) NULL, -- 单一价值物料的盘点库存标识
	date_of_lastposted_count_for_unrestricted_use_stock varchar(24) NULL, -- 非限制使用的库存中最新实际盘点的日期
	physical_inventory_indicator_for_cycle_counting varchar(3) NULL, -- 周期盘点的盘点标识
	valuation_margin numeric(6,2) NULL, -- 评价毛利
	fixed_portion_of_current_planned_price numeric(11,2) NULL, -- 当前计划价格的固定金额
	fixed_portion_of_previous_planned_price numeric(11,2) NULL, -- 上年计划价格的固定比例
	fixed_portion_of_future_planned_price numeric(11,2) NULL, -- 未来计划价格的固定比例
	plan_pricefor_sales_order_or_item_stock varchar(3) NULL, -- 当前计划价格
	plan_pricefor_sales_order_or_item_stock_pre_year varchar(3) NULL, -- 上年计划价格，限制使用库存的评估策略
	plan_pricefor_sales_order_or_item_stock_future varchar(3) NULL, -- 未来计划价格，限制使用库存的评估决策
	valuation_class_for_sales_order_stock varchar(12) NULL, -- 关于销售订单库存的评估类别
	valuation_class_for_project_stock varchar(12) NULL, -- 项目库存的评估分类
	material_usage varchar(3) NULL, -- 物料用途
	material_origin varchar(3) NULL, -- 物料源
	produced_in_house varchar(3) NULL, -- 自制产品
	unit_measure_special_batch varchar(3) NULL, -- 基于批次特定计量单位的评估
	price_unit_based_tax_commercial_law numeric(5) NULL, -- 基于税/商法估价价格的价格单位
	mbrue varchar(3) NULL, -- mbew 最后期间之前，期间的 mbewh 已经存在
	special_stock_vendor_valuation_class varchar(12) NULL, -- 供应商特殊库存的估价类
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

COMMENT ON COLUMN dw.tf_fin_item_price_info.client_code IS '客户端编号';
COMMENT ON COLUMN dw.tf_fin_item_price_info.item_wid IS '项目代码代理键';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_number IS '评估范围';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_type IS '评估类型';
COMMENT ON COLUMN dw.tf_fin_item_price_info.delet_flag_valuation_type IS '一种评估类型的所有物料数据的删除标志';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock IS '总计已估计库存';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value IS '估价的总库存价值';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_control_flag IS '价格控制指示符';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_or_periodic_price IS '移动平均价格/周期单价';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_price IS '标准价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit IS '价格单位';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class IS '评估类';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_based_value IS '基于平均移动价的值（仅价格控制 s）';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_period IS '前期的总评估库存';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_period IS '上期估过价的总库存价值';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_control_flag_pre_period IS '前一期间价格控制标识';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_or_periodic_price_pre_period IS '前一期间的移动平均价格/期间单位价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_price_pre_period IS '前期的标准价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit_pre_period IS '前期的价格单位';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class_pre_period IS '上期的评价分类';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_based_value_pre_period IS '基于平均移动价的值(上期)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_year IS '前年的总评估库存';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_year IS '上年估价的总库存价值';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_control_flag_pre_year IS '前一年的价格控制标识';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_or_periodic_price_pre_year IS '前一年移动平均价格/期间单价价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_price_in_previous_year IS '上年的标准价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit__pre_year IS '去年的价格单位';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class__pre_year IS '上年的评价分类';
COMMENT ON COLUMN dw.tf_fin_item_price_info.moving_avg_based_value_pre_year IS '基于平均移动价的值(上年)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_period_post_wid IS '当前期间代理键';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_category IS '评估类别';
COMMENT ON COLUMN dw.tf_fin_item_price_info.previous_price IS '上期价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_update_date IS '最新价格更改的日期';
COMMENT ON COLUMN dw.tf_fin_item_price_info.future_price IS '未来价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valid_price_date IS '价格开始有效的日期';
COMMENT ON COLUMN dw.tf_fin_item_price_info."timestamp" IS '简短格式的 utc 时戳 (yyyymmddhhmmss)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_taxlaw1 IS '基于税法的估价价格 ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_commerciallaw1 IS '基于商法的估价价格 ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_taxlaw3 IS '基于税法的估价价格(btci) ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_commerciallaw3 IS '基于商业法律的估价价格 ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_2_years IS '前年估价的总库存价值';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_2_years IS '前年的总评估库存';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_pre_2_period IS '前期的总评估库存';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuated_stock_value_pre_2_period IS '前期估价的总库存价值';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price IS '未来计划价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_1 IS '未来计划价格1';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_2 IS '未来计划价格 2';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_3 IS '未来计划价格 3';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_1_valid_from IS '计划价格 1 开始有效的日期';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_2_valid_from IS '计划价格 2 开始有效的日期';
COMMENT ON COLUMN dw.tf_fin_item_price_info.planned_price_3_valid_from IS '计划价格 3 开始有效的日期';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_next_period_deactive IS '未来标准成本估计的期间(未激活)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_period_deactive IS '当前标准成本估计的期间(未激活)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_pre_period_deactive IS '以前标准成本估计的期间(未激活)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_next_period_flag IS '标识: 未来期间的标准成本估算';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_period_flag IS '当前期间的标准成本估算';
COMMENT ON COLUMN dw.tf_fin_item_price_info.standard_cost_estimate_pre_period_flag IS '标识: 上一期间的标准成本估计';
COMMENT ON COLUMN dw.tf_fin_item_price_info.overhead_key_deactivated IS '一般费用代码(未激活)';
COMMENT ON COLUMN dw.tf_fin_item_price_info.lifo_fifo_relevant IS 'lifo/fifo 相关';
COMMENT ON COLUMN dw.tf_fin_item_price_info.pool_number_for_lifo_valuation IS '用于lifo评估的储备号';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_commerciallaw_level2 IS '基于商业法律的估价价格：级别 2';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_price_taxlaw_level2 IS '基于税法的估价价格： 级别2';
COMMENT ON COLUMN dw.tf_fin_item_price_info.lowest_value_devaluation_flag IS '最低价值: 贬值标志';
COMMENT ON COLUMN dw.tf_fin_item_price_info.maintenance_status IS '维护状态';
COMMENT ON COLUMN dw.tf_fin_item_price_info.cost_estimate_number_product_costing IS '成本估算号 ';
COMMENT ON COLUMN dw.tf_fin_item_price_info.cost_estimate_number_no_qty_structure IS '没有数量结构的成本估算的成本估算编号';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_variant_for_future_standard_cost_estimate IS '未来的标准成本估算的估价变式';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_variant_for_current_standard_cost_estimate IS '当前的标准成本估算的估价变式';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_variant_for_previous_standard_cost_estimate IS '过去的标准成本估算的估价变式';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_version_of_future_standard_cost_estimate IS '未来的标准成本估算的成本核算方案';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_version_of_current_standard_cost_estimate IS '当前的标准成本估算的成本核算方案';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_version_of_previous_standard_cost_estimate IS '先前的标准成本估算的成本核算方案';
COMMENT ON COLUMN dw.tf_fin_item_price_info.origingroup_as_subdivision_of_cost_element IS '作为成本要素子组的原始组';
COMMENT ON COLUMN dw.tf_fin_item_price_info.costing_overhead_group IS '成本核算间接费用组';
COMMENT ON COLUMN dw.tf_fin_item_price_info.period_of_future_standard_cost_estimate IS '未来成本估算期间';
COMMENT ON COLUMN dw.tf_fin_item_price_info.period_of_current_standard_cost_estimate IS '当前的标准成本估算期间';
COMMENT ON COLUMN dw.tf_fin_item_price_info.period_of_previous_standard_cost_estimate IS '先前的标准成本估算期间';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_year_of_future_standard_cost_estimate IS '未来标准成本估算的会计年度';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_year_of_current_standard_cost_estimate IS '当前标准成本估算的会计年度';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fiscal_year_of_previous_standard_cost_estimate IS '上一标准成本估算的会计年度';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_costed_with_quantity_structure IS '物料根据数量结构进行成本核算';
COMMENT ON COLUMN dw.tf_fin_item_price_info.previous_planned_price IS '上期标准价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_ledger_activated_at_material_level IS '物料帐簿在物料层被激活';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_price_determination_control IS '物料价格确定: 控制';
COMMENT ON COLUMN dw.tf_fin_item_price_info.current_planned_price IS '当前的计划价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.value_total_valuated_stock_at_sales_price IS '以销售价格计的总估价库存价值';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_related_origin IS '物料相关的源';
COMMENT ON COLUMN dw.tf_fin_item_price_info.physical_inventory_blocking_indicator IS '实际盘点冻结标识';
COMMENT ON COLUMN dw.tf_fin_item_price_info.inventory_indicator_for_valueonly_material IS '单一价值物料的盘点库存标识';
COMMENT ON COLUMN dw.tf_fin_item_price_info.date_of_lastposted_count_for_unrestricted_use_stock IS '非限制使用的库存中最新实际盘点的日期';
COMMENT ON COLUMN dw.tf_fin_item_price_info.physical_inventory_indicator_for_cycle_counting IS '周期盘点的盘点标识';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_margin IS '评价毛利';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fixed_portion_of_current_planned_price IS '当前计划价格的固定金额';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fixed_portion_of_previous_planned_price IS '上年计划价格的固定比例';
COMMENT ON COLUMN dw.tf_fin_item_price_info.fixed_portion_of_future_planned_price IS '未来计划价格的固定比例';
COMMENT ON COLUMN dw.tf_fin_item_price_info.plan_pricefor_sales_order_or_item_stock IS '当前计划价格';
COMMENT ON COLUMN dw.tf_fin_item_price_info.plan_pricefor_sales_order_or_item_stock_pre_year IS '上年计划价格，限制使用库存的评估策略';
COMMENT ON COLUMN dw.tf_fin_item_price_info.plan_pricefor_sales_order_or_item_stock_future IS '未来计划价格，限制使用库存的评估决策';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class_for_sales_order_stock IS '关于销售订单库存的评估类别';
COMMENT ON COLUMN dw.tf_fin_item_price_info.valuation_class_for_project_stock IS '项目库存的评估分类';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_usage IS '物料用途';
COMMENT ON COLUMN dw.tf_fin_item_price_info.material_origin IS '物料源';
COMMENT ON COLUMN dw.tf_fin_item_price_info.produced_in_house IS '自制产品';
COMMENT ON COLUMN dw.tf_fin_item_price_info.unit_measure_special_batch IS '基于批次特定计量单位的评估';
COMMENT ON COLUMN dw.tf_fin_item_price_info.price_unit_based_tax_commercial_law IS '基于税/商法估价价格的价格单位';
COMMENT ON COLUMN dw.tf_fin_item_price_info.mbrue IS 'mbew 最后期间之前，期间的 mbewh 已经存在';
COMMENT ON COLUMN dw.tf_fin_item_price_info.special_stock_vendor_valuation_class IS '供应商特殊库存的估价类';

-- Permissions

ALTER TABLE dw.tf_fin_item_price_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_item_price_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_item_price_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_item_price_info TO gr_uqry_data;
