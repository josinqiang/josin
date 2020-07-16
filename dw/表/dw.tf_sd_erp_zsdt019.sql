-- Drop table

-- DROP TABLE dw.tf_sd_erp_zsdt019;

CREATE TABLE dw.tf_sd_erp_zsdt019 (
	dfp_factory_wid int8 NULL, -- td_pp_dfp_factory维表代理键
	day_wid int8 NULL, -- 日期维表代理键
	yjgc varchar(12) NULL, -- 工厂编码
	yjbu varchar(60) NULL, -- 应用别
	yjke varchar(30) NULL, -- 业绩客户编码
	khmc varchar(300) NULL, -- 业绩客户名称
	sdbm varchar(30) NULL, -- 售达方编码
	sdmc varchar(300) NULL, -- 售达方客户名称
	matnr varchar(54) NULL, -- FGCode
	sfdx varchar(6) NULL, -- 原材料类型
	zsrusd numeric(15,2) NULL, -- 价格
	yjxl numeric(13,3) NULL, -- 销量
	fkdat varchar(24) NULL, -- 下单日期
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

-- Column comments

COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.dfp_factory_wid IS 'td_pp_dfp_factory维表代理键';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.day_wid IS '日期维表代理键';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjgc IS '工厂编码';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjbu IS '应用别';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjke IS '业绩客户编码';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.khmc IS '业绩客户名称';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.sdbm IS '售达方编码';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.sdmc IS '售达方客户名称';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.matnr IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.sfdx IS '原材料类型';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.zsrusd IS '价格';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.yjxl IS '销量';
COMMENT ON COLUMN dw.tf_sd_erp_zsdt019.fkdat IS '下单日期';

-- Permissions

ALTER TABLE dw.tf_sd_erp_zsdt019 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_zsdt019 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_zsdt019 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_zsdt019 TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_sd_erp_zsdt019 TO gr_uown_edw;
