-- Drop table

-- DROP TABLE dw.tf_pp_material_requirement_plan;

CREATE TABLE dw.tf_pp_material_requirement_plan (
	client varchar(9) NULL, -- 客户端
	requirement_number varchar(36) NULL, -- 物料需求编号
	item_wid int8 NULL, -- 物料号代理键
	factory_wid int8 NULL, -- 工厂代理键
	requirement_type varchar(12) NULL, -- 需求类型
	independent_requirement_version_num varchar(6) NULL, -- 独立需求的版本号
	requirements_plan_number varchar(30) NULL, -- 需求计划编号
	base_unit varchar(9) NULL, -- 基本计量单位
	production_version varchar(12) NULL, -- 生产版本
	mrp_type varchar(6) NULL, -- 物料需求计划类型
	mrp_group varchar(12) NULL, -- 物料需求计划组
	mrp_controller varchar(9) NULL, -- mrp 控制者（物料计划人）
	mrp_area_exist_flag varchar(3) NULL, -- 指示：mrp  范围存在
	delivery_order_finish_date_wid int8 NULL, -- 交货/订单完成日期代理键
	planned_quantity numeric(13,3) NULL, -- 计划数量
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
COMMENT ON TABLE dw.tf_pp_material_requirement_plan IS '事实表-物料需求计划';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.client IS '客户端';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.requirement_number IS '物料需求编号';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.item_wid IS '物料号代理键';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.requirement_type IS '需求类型';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.independent_requirement_version_num IS '独立需求的版本号';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.requirements_plan_number IS '需求计划编号';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.base_unit IS '基本计量单位';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.production_version IS '生产版本';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_type IS '物料需求计划类型';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_group IS '物料需求计划组';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_controller IS 'mrp 控制者（物料计划人）';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_area_exist_flag IS '指示：mrp  范围存在';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.delivery_order_finish_date_wid IS '交货/订单完成日期代理键';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.planned_quantity IS '计划数量';

-- Permissions

ALTER TABLE dw.tf_pp_material_requirement_plan OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_material_requirement_plan TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_material_requirement_plan TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_material_requirement_plan TO gr_uqry_data;
