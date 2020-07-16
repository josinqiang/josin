-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap;

CREATE TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap (
	line_no numeric(20) NULL, -- 行号
	factory varchar(300) NULL, -- 工厂
	product_id varchar(300) NULL, -- 产品ID
	item_no varchar(300) NULL, -- 物料号
	sction varchar(300) NULL, -- 工段
	no_good_code varchar(300) NULL, -- 不良code
	no_good_name varchar(300) NULL, -- 不良名称
	pnl_type varchar(300) NULL, -- PNL类型
	pnl_grade varchar(300) NULL, -- PNL等级
	"_date" date NULL, -- 日期
	creat_time timestamp NULL, -- 抓取数据时间
	unit varchar(300) NULL, -- 单位
	quantity numeric NULL, -- 数量
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap IS 'COPQ主题MES';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.line_no IS '行号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.factory IS '工厂';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.product_id IS '产品ID';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.item_no IS '物料号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.sction IS '工段';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.no_good_code IS '不良code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.no_good_name IS '不良名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.pnl_type IS 'PNL类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.pnl_grade IS 'PNL等级';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap."_date" IS '日期';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.creat_time IS '抓取数据时间';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.unit IS '单位';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.quantity IS '数量';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap TO gr_uqry_data;
