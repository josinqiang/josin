-- Drop table

-- DROP TABLE dw.tf_fin_ibds_sales_production_line_mosbu_overview;

CREATE TABLE dw.tf_fin_ibds_sales_production_line_mosbu_overview (
	project varchar(100) NULL, -- ��Ŀ
	production_line varchar(100) NULL, -- ����
	years int4 NULL, -- ���
	year_round numeric NULL, -- ���ֵ
	month_wid int4 NULL, -- �·�
	value numeric NULL, -- ��ֵ
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
COMMENT ON TABLE dw.tf_fin_ibds_sales_production_line_mosbu_overview IS '����ָ��-mosbu���߱�����';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_mosbu_overview.project IS '��Ŀ';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_mosbu_overview.production_line IS '����';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_mosbu_overview.years IS '���';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_mosbu_overview.year_round IS '���ֵ';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_mosbu_overview.month_wid IS '�·�';
COMMENT ON COLUMN dw.tf_fin_ibds_sales_production_line_mosbu_overview.value IS '��ֵ';

-- Permissions

ALTER TABLE dw.tf_fin_ibds_sales_production_line_mosbu_overview OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_ibds_sales_production_line_mosbu_overview TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_fin_ibds_sales_production_line_mosbu_overview TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_fin_ibds_sales_production_line_mosbu_overview TO gr_uapp_data;
