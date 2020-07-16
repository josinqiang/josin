-- Drop table

-- DROP TABLE dw.td_business_quota_copq_semi_finished_product_group_bu;

CREATE TABLE dw.td_business_quota_copq_semi_finished_product_group_bu (
	row_wid int8 NULL,
	semi_finished_product_code varchar(54) NULL, -- 半成品编码
	client varchar(9) NULL, -- 客户端
	maintain_all_materiel_state varchar(45) NULL, -- 维护全部物料状态
	maintain_state varchar(45) NULL, -- 维护状态
	mark_deletion_materiel varchar(3) NULL, -- 在客户级标记要删除的物料
	material_type varchar(12) NULL, -- 物料类型
	industry_field varchar(3) NULL, -- 行业领域
	material_group varchar(27) NULL, -- 物料组
	old_material_code varchar(54) NULL, -- 旧物料号
	measurement_unit varchar(9) NULL, -- 基本计量单位
	product_group varchar(6) NULL, -- 产品组
	bu_name varchar(60) NULL, -- bu名称
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
COMMENT ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu IS 'COPQ指标-半成品-产品组-BU';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.semi_finished_product_code IS '半成品编码';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.client IS '客户端';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.maintain_all_materiel_state IS '维护全部物料状态';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.maintain_state IS '维护状态';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.mark_deletion_materiel IS '在客户级标记要删除的物料';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.material_type IS '物料类型';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.industry_field IS '行业领域';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.material_group IS '物料组';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.old_material_code IS '旧物料号';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.measurement_unit IS '基本计量单位';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.product_group IS '产品组';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.bu_name IS 'bu名称';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_semi_finished_product_group_bu OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu TO gr_uqry_data;
