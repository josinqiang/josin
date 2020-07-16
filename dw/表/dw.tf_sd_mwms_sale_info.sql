-- Drop table

-- DROP TABLE dw.tf_sd_mwms_sale_info;

CREATE TABLE dw.tf_sd_mwms_sale_info (
	dn varchar(40) NULL, -- DN
	posnr varchar(40) NULL, -- 行项目
	matnr varchar(40) NULL, -- 物料
	stockouttime varchar(40) NULL, -- 出库时间
	updatetime timestamp NULL, -- 最新更新时间
	boxid varchar(40) NULL, -- BoxID
	quantity numeric(22) NULL, -- 每个Box中Tcon的数量
	source_table_name varchar(100) NULL,
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
COMMENT ON TABLE dw.tf_sd_mwms_sale_info IS '详细的材料实物出货信息';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.dn IS 'DN';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.posnr IS '行项目';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.matnr IS '物料';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.stockouttime IS '出库时间';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.updatetime IS '最新更新时间';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.boxid IS 'BoxID';
COMMENT ON COLUMN dw.tf_sd_mwms_sale_info.quantity IS '每个Box中Tcon的数量';

-- Permissions

ALTER TABLE dw.tf_sd_mwms_sale_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_mwms_sale_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_mwms_sale_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_mwms_sale_info TO gr_uqry_data;
GRANT SELECT ON TABLE dw.tf_sd_mwms_sale_info TO "109752";
