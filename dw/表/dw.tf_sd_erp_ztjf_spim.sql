-- Drop table

-- DROP TABLE dw.tf_sd_erp_ztjf_spim;

CREATE TABLE dw.tf_sd_erp_ztjf_spim (
	dfp_factory_wid int8 NULL, -- 工厂维度表代理键
	month_wid int8 NULL, -- 日期维度表代理键
	zspnum varchar(64) NULL, -- 销售计划版本
	werks varchar(12) NULL, -- 工厂代码
	spart varchar(6) NULL, -- BU编码
	zmdmprdde varchar(180) NULL, -- FGCode
	kunnr varchar(30) NULL, -- 客户编码
	zplqty numeric(15,3) NULL, -- 预测数量
	zmonth varchar(18) NULL, -- 预测日期
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

COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.dfp_factory_wid IS '工厂维度表代理键';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.month_wid IS '日期维度表代理键';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zspnum IS '销售计划版本';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.werks IS '工厂代码';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.spart IS 'BU编码';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zmdmprdde IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.kunnr IS '客户编码';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zplqty IS '预测数量';
COMMENT ON COLUMN dw.tf_sd_erp_ztjf_spim.zmonth IS '预测日期';

-- Permissions

ALTER TABLE dw.tf_sd_erp_ztjf_spim OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_ztjf_spim TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_ztjf_spim TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_ztjf_spim TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_sd_erp_ztjf_spim TO gr_uown_edw;
