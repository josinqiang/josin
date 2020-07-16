-- Drop table

-- DROP TABLE dw.tf_sd_fgms_sale_info;

CREATE TABLE dw.tf_sd_fgms_sale_info (
	dn varchar(40) NULL, -- DN
	posnr varchar(40) NULL, -- 行项目
	matnr varchar(40) NULL, -- 物料
	stockouttime varchar(40) NULL, -- 出库时间
	updatetime timestamp NULL, -- 最新更新时间
	moduleid varchar(100) NULL, -- Module ID
	palletid varchar(40) NULL, -- PalletID
	boxid varchar(40) NULL, -- BoxID
	source_table_name varchar(100) NULL, -- 该表是各现地FGMS中不同表的合并，标记源表名称
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
COMMENT ON TABLE dw.tf_sd_fgms_sale_info IS '详细的成品实物出货信息';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.dn IS 'DN';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.posnr IS '行项目';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.matnr IS '物料';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.stockouttime IS '出库时间';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.updatetime IS '最新更新时间';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.moduleid IS 'Module ID';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.palletid IS 'PalletID';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.boxid IS 'BoxID';
COMMENT ON COLUMN dw.tf_sd_fgms_sale_info.source_table_name IS '该表是各现地FGMS中不同表的合并，标记源表名称';

-- Permissions

ALTER TABLE dw.tf_sd_fgms_sale_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_fgms_sale_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_fgms_sale_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_fgms_sale_info TO gr_uqry_data;
GRANT SELECT ON TABLE dw.tf_sd_fgms_sale_info TO "109752";
