-- Drop table

-- DROP TABLE dw.tf_pp_production_plan;

CREATE TABLE dw.tf_pp_production_plan (
	client_code varchar(9) NULL, -- 客户端
	verison_number varchar(30) NULL, -- 版本号
	factory_wid int8 NULL, -- 工厂代理键
	item_wid int8 NULL, -- 物料号代理键
	special_flag varchar(12) NULL, -- 特殊标识
	production_place varchar(60) NULL, -- 生产地点
	classify varchar(30) NULL, -- 分类
	chicun varchar(180) NULL,
	plan_date_wid int8 NULL, -- 日期代理键
	plan_quantity numeric(13,3) NULL, -- 计划数量
	delete_flag varchar(3) NULL, -- 删除标识
	datlp1 varchar(24) NULL,
	datlp2 varchar(24) NULL,
	zrtpf varchar(60) NULL,
	zdover varchar(45) NULL,
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
COMMENT ON TABLE dw.tf_pp_production_plan IS '生产制造-生产计划信息表';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_production_plan.client_code IS '客户端';
COMMENT ON COLUMN dw.tf_pp_production_plan.verison_number IS '版本号';
COMMENT ON COLUMN dw.tf_pp_production_plan.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_pp_production_plan.item_wid IS '物料号代理键';
COMMENT ON COLUMN dw.tf_pp_production_plan.special_flag IS '特殊标识';
COMMENT ON COLUMN dw.tf_pp_production_plan.production_place IS '生产地点';
COMMENT ON COLUMN dw.tf_pp_production_plan.classify IS '分类';
COMMENT ON COLUMN dw.tf_pp_production_plan.plan_date_wid IS '日期代理键';
COMMENT ON COLUMN dw.tf_pp_production_plan.plan_quantity IS '计划数量';
COMMENT ON COLUMN dw.tf_pp_production_plan.delete_flag IS '删除标识';

-- Permissions

ALTER TABLE dw.tf_pp_production_plan OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_production_plan TO gr_uqry_data;
