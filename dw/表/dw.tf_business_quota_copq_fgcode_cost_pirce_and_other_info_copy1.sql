-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1;

CREATE TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 (
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
TABLESPACE edw_tablespace

DISTRIBUTED BY (days);

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.cost_price IS '成本价';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.fgcode IS 'FG-Code编码';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.product_name IS '产品名';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.panel_production_line IS 'Panel 产线';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.qpnl_cuts IS 'QPNL Cuts';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.glass_cuts IS 'Glass cuts（抛送）';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.is_mmg IS '是否为套切（MMG）';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.product_form IS '产品形态';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.property_factory IS '物权工厂';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1."type" IS '类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.real_size IS '真实尺寸';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.resolution IS '分辨率';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.model IS '型号';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.sbu_name IS 'SBU名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.bu_name IS 'BU名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.product_group IS '产品组';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.display_mode IS '显示模式';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.narrow_border_borderless IS '窄边框/Borderless';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 TO ur_uapp_data;
