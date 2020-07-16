-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem;

CREATE TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem (
	data_time varchar(255) NULL, -- 数据时间，用于分析时间别
	factory varchar(255) NULL, -- 代工厂，用于分析代工厂别
	fg_code varchar(255) NULL, -- FG Code，用于分析BU别及产品型号别（根据FG code对应BU及产品型号规则）
	scrap_qty numeric NULL, -- 报废数量，用于分析报废别
	class_a_qty numeric NULL, -- A级品数量
	class_q_qty numeric NULL, -- Q级品数量，用于分析降级品别
	class_f_qty numeric NULL, -- F级数量，用于分析降级品别
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
COMMENT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem IS 'COPQ指标：内部OEM';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.data_time IS '数据时间，用于分析时间别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.factory IS '代工厂，用于分析代工厂别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.fg_code IS 'FG Code，用于分析BU别及产品型号别（根据FG code对应BU及产品型号规则）';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.scrap_qty IS '报废数量，用于分析报废别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.class_a_qty IS 'A级品数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.class_q_qty IS 'Q级品数量，用于分析降级品别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.class_f_qty IS 'F级数量，用于分析降级品别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.create_time IS '抓取数据时间';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem TO gr_uqry_data;
