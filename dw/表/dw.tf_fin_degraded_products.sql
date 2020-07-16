-- Drop table

-- DROP TABLE dw.tf_fin_degraded_products;

CREATE TABLE dw.tf_fin_degraded_products (
	ohrequid numeric(10) NULL,
	datapakid numeric(10) NULL,
	record numeric(10) NULL,
	"_bic_zspnum" varchar(36) NULL,
	storehouse varchar(6) NULL, -- 库位
	factory varchar(12) NULL, -- 工厂
	"_bic_zmdmprdde" varchar(180) NULL,
	"_bic_zmonth" varchar(18) NULL,
	"_bic_zjjppcs" numeric(17,3) NULL,
	"_bic_zjjpsh" numeric(17,3) NULL,
	"_bic_zjjppfm" numeric(17,3) NULL,
	"_bic_zsales" numeric(17,3) NULL,
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
COMMENT ON TABLE dw.tf_fin_degraded_products IS 'BPC降级品数据回传表';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_degraded_products.storehouse IS '库位';
COMMENT ON COLUMN dw.tf_fin_degraded_products.factory IS '工厂';

-- Permissions

ALTER TABLE dw.tf_fin_degraded_products OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_degraded_products TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_fin_degraded_products TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_fin_degraded_products TO gr_uapp_data;
