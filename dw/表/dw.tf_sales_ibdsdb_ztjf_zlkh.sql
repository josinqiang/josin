-- Drop table

-- DROP TABLE dw.tf_sales_ibdsdb_ztjf_zlkh;

CREATE TABLE dw.tf_sales_ibdsdb_ztjf_zlkh (
	kunnr varchar(764) NULL, -- 战略客户代码
	zmflag varchar(764) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_sales_ibdsdb_ztjf_zlkh IS '销售指标展示客户序';

-- Column comments

COMMENT ON COLUMN dw.tf_sales_ibdsdb_ztjf_zlkh.kunnr IS '战略客户代码';

-- Permissions

ALTER TABLE dw.tf_sales_ibdsdb_ztjf_zlkh OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sales_ibdsdb_ztjf_zlkh TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_sales_ibdsdb_ztjf_zlkh TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_sales_ibdsdb_ztjf_zlkh TO gr_uapp_data;
