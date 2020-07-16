-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info;

CREATE TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info (
	days date NULL,
	search_material_code varchar(200) NULL,
	cost_price numeric(30,15) NULL, -- 成本价
	fgcode varchar(4000) NULL, -- FG-Code编码
	product_name varchar(4000) NULL, -- 产品名
	panel_production_line varchar(4000) NULL, -- Panel 产线
	qpnl_cuts varchar(4000) NULL, -- QPNL Cuts
	glass_cuts varchar(4000) NULL, -- Glass cuts（抛送）
	cuts numeric(20,10) NULL,
	is_mmg varchar(4000) NULL, -- 是否为套切（MMG）
	product_form varchar(4000) NULL, -- 产品形态
	property_factory varchar(4000) NULL, -- 物权工厂
	"type" varchar(4000) NULL, -- 类型
	real_size varchar(4000) NULL, -- 真实尺寸
	resolution varchar(4000) NULL, -- 分辨率
	model text NULL, -- 型号
	sbu_name varchar(4000) NULL, -- SBU名称
	bu_name varchar(60) NULL, -- BU名称
	product_group varchar(4000) NULL, -- 产品组
	display_mode varchar(4000) NULL, -- 显示模式
	narrow_border_borderless varchar(4000) NULL, -- 窄边框/Borderless
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

COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.cost_price IS '成本价';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.fgcode IS 'FG-Code编码';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.product_name IS '产品名';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.panel_production_line IS 'Panel 产线';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.qpnl_cuts IS 'QPNL Cuts';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.glass_cuts IS 'Glass cuts（抛送）';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.is_mmg IS '是否为套切（MMG）';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.product_form IS '产品形态';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.property_factory IS '物权工厂';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info."type" IS '类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.real_size IS '真实尺寸';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.resolution IS '分辨率';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.model IS '型号';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.sbu_name IS 'SBU名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.bu_name IS 'BU名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.product_group IS '产品组';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.display_mode IS '显示模式';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info.narrow_border_borderless IS '窄边框/Borderless';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info TO gr_uapp_data;
