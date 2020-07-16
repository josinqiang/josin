-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity;

CREATE TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity (
	id varchar(64) NULL, -- 主键
	prim_code varchar(128) NULL, -- 凭证单号
	warehouse_time timestamp NULL, -- 创建时间
	update_date timestamp NULL, -- 提交时间
	oem_factory_code varchar(128) NULL, -- oem工厂代码
	oem_factory_name varchar(200) NULL, -- oem工厂名称
	right_fac varchar(128) NULL, -- 物权工厂
	row_prim_code varchar(128) NULL, -- 行数据单号
	fgcode varchar(128) NULL, -- fgcode
	meterial_no varchar(128) NULL, -- 物料编码
	tax varchar(128) NULL, -- 税别（1-保税，2-非保税）
	duty varchar(128) NULL, -- 责别
	bad_type varchar(128) NULL, -- 不良类别（1-材损，2-制损）
	odd_numbers varchar(128) NULL, -- 五联单号
	entity_sattus varchar(128) NULL, -- 实物状态（1-单材，2-pola...）
	num varchar(128) NULL, -- 数量
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL,
	remark varchar(2000) NULL -- 备注
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity IS 'COPQ指标-外部OEM报废品数量';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.id IS '主键';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.prim_code IS '凭证单号';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.warehouse_time IS '创建时间';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.update_date IS '提交时间';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.oem_factory_code IS 'oem工厂代码';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.oem_factory_name IS 'oem工厂名称';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.right_fac IS '物权工厂';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.row_prim_code IS '行数据单号';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.fgcode IS 'fgcode';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.meterial_no IS '物料编码';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.tax IS '税别（1-保税，2-非保税）';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.duty IS '责别';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.bad_type IS '不良类别（1-材损，2-制损）';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.odd_numbers IS '五联单号';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.entity_sattus IS '实物状态（1-单材，2-pola...）';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.num IS '数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.remark IS '备注';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity TO gr_uqry_data;
