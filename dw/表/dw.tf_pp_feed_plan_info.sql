-- Drop table

-- DROP TABLE dw.tf_pp_feed_plan_info;

CREATE TABLE dw.tf_pp_feed_plan_info (
	client_code varchar(9) NULL, -- 客户端
	factory_wid int8 NULL, -- 工厂代理键
	version_number varchar(30) NULL, -- 版本号
	bom_component varchar(54) NULL, -- BOM 组件
	dates_wid int8 NULL, -- 日期代理键
	zmenge numeric(13,3) NULL,
	wipsl numeric(13,3) NULL,
	openpo numeric(13,3) NULL,
	aqkc numeric(13,3) NULL,
	compoment_desc varchar(120) NULL, -- 组件描述
	base_unit varchar(9) NULL, -- 基本计量单位
	demand_plan_quantity numeric(13) NULL, -- 计划需求
	recommend_quantity numeric(13) NULL, -- 建议到料
	adjust_quantity numeric(13) NULL, -- 调整到料
	feedback_quantity numeric(13) NULL, -- 到料反馈
	actual_quantity numeric(13,3) NULL, -- 实际到料
	inv_total_quantity numeric(13,3) NULL, -- 库存总数
	inv_quantity numeric(13,3) NULL, -- 仓库库存
	edge_inv_quantity numeric(13,3) NULL, -- 线边仓库存
	o_inv_quantity numeric(13,3) NULL, -- O库存
	oem_inv_quantity numeric(13,3) NULL, -- 代工库存
	dates2 varchar(24) NULL, -- 日期
	times varchar(18) NULL, -- 时间
	delete_flag varchar(3) NULL, -- 删除标识
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
COMMENT ON TABLE dw.tf_pp_feed_plan_info IS '事实表-进料计划查询表';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_feed_plan_info.client_code IS '客户端';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.version_number IS '版本号';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.bom_component IS 'BOM 组件';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.dates_wid IS '日期代理键';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.compoment_desc IS '组件描述';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.base_unit IS '基本计量单位';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.demand_plan_quantity IS '计划需求';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.recommend_quantity IS '建议到料';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.adjust_quantity IS '调整到料';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.feedback_quantity IS '到料反馈';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.actual_quantity IS '实际到料';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.inv_total_quantity IS '库存总数';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.inv_quantity IS '仓库库存';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.edge_inv_quantity IS '线边仓库存';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.o_inv_quantity IS 'O库存';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.oem_inv_quantity IS '代工库存';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.dates2 IS '日期';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.times IS '时间';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.delete_flag IS '删除标识';

-- Permissions

ALTER TABLE dw.tf_pp_feed_plan_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_feed_plan_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_feed_plan_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_feed_plan_info TO gr_uqry_data;
