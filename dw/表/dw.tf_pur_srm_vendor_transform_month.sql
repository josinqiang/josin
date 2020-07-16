-- Drop table

-- DROP TABLE dw.tf_pur_srm_vendor_transform_month;

CREATE TABLE dw.tf_pur_srm_vendor_transform_month (
	supplier_no varchar(30) NULL,
	vendor_no varchar(30) NULL,
	created_by varchar(36) NULL,
	created_at varchar(24) NULL,
	submit_date varchar(24) NULL,
	app_date varchar(24) NULL,
	changed_by varchar(36) NULL,
	status varchar(6) NULL,
	doc_type varchar(6) NULL,
	is_master varchar(3) NULL,
	name_zh varchar(240) NULL,
	name_en varchar(240) NULL,
	sfreeze varchar(3) NULL,
	address varchar(1000) NULL,
	property varchar(6) NULL,
	type_id varchar(6) NULL,
	prd_no varchar(30) NULL,
	prd_type varchar(60) NULL,
	special_type_created_at varchar(24) NULL,
	special_type varchar(6) NULL,
	factory varchar(32) NULL,
	business_month varchar(32) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(128) NULL,
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

-- Permissions

ALTER TABLE dw.tf_pur_srm_vendor_transform_month OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_srm_vendor_transform_month TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_srm_vendor_transform_month TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pur_srm_vendor_transform_month TO gr_uqry_data;
