-- Drop table

-- DROP TABLE dw.tf_fin_ibds_sales_production_line_overview;

CREATE TABLE dw.tf_fin_ibds_sales_production_line_overview (
	project varchar(100) NULL, -- 项目
	production_line varchar(100) NULL, -- 产线
	years int4 NULL, -- 年份
	year_round numeric NULL, -- 年度值
	month_wid int4 NULL, -- 月份
	value numeric NULL, -- 数值
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
COMMENT ON TABLE dw.tf_fin_ibds_sales_production_line_overview IS '财务指标-产线别总览';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_overview.project IS '项目';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_overview.production_line IS '产线';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_overview.years IS '年份';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_overview.year_round IS '年度值';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_overview.month_wid IS '月份';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_overview.value IS '数值';

-- Permissions

ALTER TABLE dw.tf_fin_ibds_sales_production_line_overview OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ibds_sales_production_line_overview TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_fin_ibds_sales_production_line_overview TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_fin_ibds_sales_production_line_overview TO gr_uapp_data;
