-- Drop table

-- DROP TABLE dw.tf_pp_production_plan_implement;

CREATE TABLE dw.tf_pp_production_plan_implement (
	client_code varchar(9) NULL, -- 客户端
	version_number varchar(30) NULL, -- 版本号
	factory_wid int8 NULL, -- 工厂编码代理键
	item_wid int8 NULL, -- 物料编码代理键
	special_flag varchar(12) NULL, -- 特殊标识
	production_location varchar(60) NULL, -- 生产地点
	classify varchar(30) NULL, -- 分类
	chicun varchar(180) NULL,
	dates_wid int8 NULL, -- 日期代理键
	planned_quantity numeric(13,3) NULL, -- 计划数量
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
COMMENT ON TABLE dw.tf_pp_production_plan_implement IS '事实表-Daily生产计划执行';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_production_plan_implement.client_code IS '客户端';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.version_number IS '版本号';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.factory_wid IS '工厂编码代理键';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.item_wid IS '物料编码代理键';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.special_flag IS '特殊标识';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.production_location IS '生产地点';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.classify IS '分类';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.dates_wid IS '日期代理键';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.planned_quantity IS '计划数量';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.delete_flag IS '删除标识';

-- Permissions

ALTER TABLE dw.tf_pp_production_plan_implement OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan_implement TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan_implement TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_production_plan_implement TO gr_uqry_data;
