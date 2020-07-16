-- Drop table

-- DROP TABLE dw.tf_fin_mdm_costc_ch_emp;

CREATE TABLE dw.tf_fin_mdm_costc_ch_emp (
	emplid varchar(44) NULL,
	deptid varchar(40) NULL,
	b_band_id varchar(40) NULL,
	b_payp_id varchar(120) NULL,
	b_workplace_id varchar(120) NULL,
	hr_status varchar(4) NULL,
	job_indicator varchar(4) NULL,
	job_sub_func varchar(12) NULL,
	"action" varchar(12) NULL,
	action_reason varchar(12) NULL,
	effdt date NULL,
	action_dt date NULL,
	emp_type varchar(120) NULL,
	month_name varchar(120) NULL,
	mdm_effdt varchar(120) NULL,
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

ALTER TABLE dw.tf_fin_mdm_costc_ch_emp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_mdm_costc_ch_emp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_mdm_costc_ch_emp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_mdm_costc_ch_emp TO gr_uqry_data;
