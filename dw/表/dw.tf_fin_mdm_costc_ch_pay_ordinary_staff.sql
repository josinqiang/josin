-- Drop table

-- DROP TABLE dw.tf_fin_mdm_costc_ch_pay_ordinary_staff;

CREATE TABLE dw.tf_fin_mdm_costc_ch_pay_ordinary_staff (
	row_wid int8 NULL,
	emplid varchar(44) NULL,
	deptid varchar(40) NULL,
	b_payp_id varchar(120) NULL,
	b_band_id varchar(40) NULL,
	b_workplace_id varchar(120) NULL,
	job_sub_func varchar(12) NULL,
	effdt date NULL,
	mdm_deptid varchar(4000) NULL,
	mdm_costc_code varchar(4000) NULL,
	mdm_costc_desc varchar(4000) NULL,
	mdm_company_code varchar(4000) NULL,
	mdm_costc_type varchar(4000) NULL,
	mdm_effdt varchar(4000) NULL,
	mdm_effdt_end varchar(4000) NULL,
	mdm_related_reasons varchar(4000) NULL,
	mdm_paypid_payp_id varchar(4000) NULL,
	mdm_paypid_company_code varchar(4000) NULL,
	business_date date NULL,
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

-- Permissions

ALTER TABLE dw.tf_fin_mdm_costc_ch_pay_ordinary_staff OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_mdm_costc_ch_pay_ordinary_staff TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_mdm_costc_ch_pay_ordinary_staff TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_mdm_costc_ch_pay_ordinary_staff TO gr_uqry_data;
