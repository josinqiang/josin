-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_z4t_copq_out;

CREATE TABLE dw.tf_business_quota_copq_b4_z4t_copq_out (
	factory varchar(255) NULL, -- 工厂，用于分析工厂别
	tech_site varchar(255) NULL, -- 工艺段，用于分析工艺段别
	fg_code varchar(255) NULL, -- FG Code，用于分析BU别及产品型号别（根据FG code对应BU及产品型号规则）
	pnl_qty numeric NULL, -- Panel数量
	glass_qty numeric NULL, -- 基板数量
	data_time varchar(255) NULL, -- 数据时间，用于分析时间别
	create_time timestamp NULL, -- 抓取数据时间
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out IS 'COPQ指标：产出';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.factory IS '工厂，用于分析工厂别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.tech_site IS '工艺段，用于分析工艺段别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.fg_code IS 'FG Code，用于分析BU别及产品型号别（根据FG code对应BU及产品型号规则）';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.pnl_qty IS 'Panel数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.glass_qty IS '基板数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.data_time IS '数据时间，用于分析时间别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.create_time IS '抓取数据时间';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_z4t_copq_out OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out TO gr_uqry_data;
