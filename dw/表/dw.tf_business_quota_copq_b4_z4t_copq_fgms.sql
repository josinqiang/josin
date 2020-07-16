-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms;

CREATE TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms (
	tech_site varchar(255) NULL, -- 工艺段别
	fg_code varchar(255) NULL, -- FG Code，用于分析BU别及产品型号别（根据FG code对应BU及产品型号规则）
	check_in_code varchar(255) NULL, -- check in
	product_grade varchar(255) NULL, -- 产品等级
	qty numeric NULL, -- 数量
	data_time varchar(255) NULL, -- 数据时间
	create_time timestamp NULL, -- 数据抓取时间
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
COMMENT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms IS 'COPQ指标：RMA挽回数量（内部RMA）';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.tech_site IS '工艺段别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.fg_code IS 'FG Code，用于分析BU别及产品型号别（根据FG code对应BU及产品型号规则）';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.check_in_code IS 'check in';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.product_grade IS '产品等级';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.qty IS '数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.data_time IS '数据时间';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.create_time IS '数据抓取时间';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms TO gr_uqry_data;
