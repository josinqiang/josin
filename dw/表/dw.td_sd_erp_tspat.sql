-- Drop table

-- DROP TABLE dw.td_sd_erp_tspat;

CREATE TABLE dw.td_sd_erp_tspat (
	row_wid int8 NOT NULL, -- 维表代理键
	mandt varchar(9) NOT NULL, -- 客户端
	spras varchar(3) NOT NULL, -- 语言代码
	spart varchar(6) NOT NULL, -- 产品组
	vtext varchar(60) NOT NULL, -- 名称
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

COMMENT ON COLUMN dw.td_sd_erp_tspat.row_wid IS '维表代理键';
COMMENT ON COLUMN dw.td_sd_erp_tspat.mandt IS '客户端';
COMMENT ON COLUMN dw.td_sd_erp_tspat.spras IS '语言代码';
COMMENT ON COLUMN dw.td_sd_erp_tspat.spart IS '产品组';
COMMENT ON COLUMN dw.td_sd_erp_tspat.vtext IS '名称';

-- Permissions

ALTER TABLE dw.td_sd_erp_tspat OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_erp_tspat TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_sd_erp_tspat TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_sd_erp_tspat TO gr_uqry_data;
