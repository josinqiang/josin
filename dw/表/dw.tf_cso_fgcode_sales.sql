-- Drop table

-- DROP TABLE dw.tf_cso_fgcode_sales;

CREATE TABLE dw.tf_cso_fgcode_sales (
	matnr varchar(54) NULL,
	yjbu varchar(60) NULL,
	yjke varchar(30) NULL,
	khmc varchar(300) NULL,
	yjgc varchar(12) NULL,
	yjxl numeric(13,3) NULL,
	zsrcny numeric(15,2) NULL,
	fkdat varchar(24) NULL,
	fkdat_wid int8 NULL,
	sfdx varchar(6) NULL,
	zzscc varchar(96) NULL,
	zfbl varchar(96) NULL,
	zmdmprd varchar(96) NULL,
	zmdmprdde varchar(180) NULL,
	mstae varchar(6) NULL,
	ztext varchar(764) NULL,
	zmdmdelflg varchar(6) NULL,
	augru varchar(9) NULL,
	zyshj varchar(96) NULL,
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

DISTRIBUTED BY (matnr);

-- Permissions

ALTER TABLE dw.tf_cso_fgcode_sales OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_cso_fgcode_sales TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_cso_fgcode_sales TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_cso_fgcode_sales TO gr_uqry_data;
