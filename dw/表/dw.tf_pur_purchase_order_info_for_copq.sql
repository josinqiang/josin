-- Drop table

-- DROP TABLE dw.tf_pur_purchase_order_info_for_copq;

CREATE TABLE dw.tf_pur_purchase_order_info_for_copq (
	year_month varchar(6) NULL, -- 年月
	real_month varchar(6) NULL, -- 实际数据的所在月份
	material_number varchar(100) NULL, -- 物料号
	currency varchar(20) NULL, -- 币种
	rate numeric(20,10) NULL, -- 系数
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

COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.year_month IS '年月';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.real_month IS '实际数据的所在月份';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.material_number IS '物料号';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.currency IS '币种';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.rate IS '系数';

-- Permissions

ALTER TABLE dw.tf_pur_purchase_order_info_for_copq OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info_for_copq TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_pur_purchase_order_info_for_copq TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info_for_copq TO gr_uapp_data;
