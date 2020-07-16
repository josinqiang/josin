-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_monovalent_copy;

CREATE TABLE dw.tf_business_quota_copq_b4_monovalent_copy (
	client varchar(255) NULL,
	"year" varchar(255) NULL,
	"month" varchar(255) NULL,
	cost_estimate_number varchar(255) NULL,
	valuation_area varchar(255) NULL,
	category varchar(255) NULL,
	material_number varchar(255) NULL,
	total_value numeric(18,2) NULL,
	single_level_price_diff numeric(18,2) NULL,
	single_level_exchange_diff numeric(18,2) NULL,
	multilevel_price_diff numeric(18,2) NULL,
	multilevel_exchange_diff numeric(18,2) NULL,
	total_inventory numeric(18,2) NULL,
	moving_average_price numeric(18,2) NULL,
	price_unit numeric(18,2) NULL,
	cycle_price_unit numeric(18,2) NULL,
	price numeric(18,6) NULL,
	value_structure_type varchar(255) NULL,
	process_category varchar(255) NULL,
	po_alter_process varchar(255) NULL,
	currency_type_valuation_view varchar(255) NULL,
	valuation_type varchar(255) NULL,
	type_price varchar(255) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL,
	price_current numeric(18,6) NULL,
	price_move_avg numeric(18,6) NULL,
	price_close_inv numeric(18,6) NULL,
	price_his numeric(18,6) NULL,
	price_pre_month numeric(18,6) NULL,
	price_same_modle numeric(18,6) NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED RANDOMLY;

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_monovalent_copy OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_monovalent_copy TO ur_uown_edw;
