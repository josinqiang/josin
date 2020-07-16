-- Drop table

-- DROP TABLE dw.tf_sd_stock_fgms;

CREATE TABLE dw.tf_sd_stock_fgms (
	erp_werks varchar(8) NULL, -- ERP工厂
	erp_lgort varchar(8) NULL, -- ERP库位
	matnr varchar(36) NULL, -- FGCode
	charg varchar(20) NULL, -- 等级
	vbeln_dn varchar(20) NULL, -- Delivery
	holding varchar(10) NULL, -- 是否Hold
	hold_type varchar(10) NULL, -- Hold类型
	hold_reason varchar(205) NULL, -- Hold原因
	hold_date timestamp NULL, -- Hold日期（最后一次）
	zlfimg_single numeric(13,3) NULL, -- Singel数量（pcs）
	clabs numeric(13,3) NULL, -- Panel数量（pcs） ID
	rk_date date NULL, -- 入库日期
	rk_time varchar(10) NULL, -- 入库时间
	data_source varchar(10) NULL, -- 数据源
	pallet_id varchar(100) NULL, -- Pallet ID
	source_table_name varchar(20) NULL, -- 来源表
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
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
COMMENT ON TABLE dw.tf_sd_stock_fgms IS 'fgms实时库存数据';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_stock_fgms.erp_werks IS 'ERP工厂';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.erp_lgort IS 'ERP库位';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.matnr IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.charg IS '等级';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.vbeln_dn IS 'Delivery';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.holding IS '是否Hold';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.hold_type IS 'Hold类型';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.hold_reason IS 'Hold原因';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.hold_date IS 'Hold日期（最后一次）';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.zlfimg_single IS 'Singel数量（pcs）';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.clabs IS 'Panel数量（pcs） ID';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.rk_date IS '入库日期';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.rk_time IS '入库时间';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.data_source IS '数据源';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.pallet_id IS 'Pallet ID';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.source_table_name IS '来源表';

-- Permissions

ALTER TABLE dw.tf_sd_stock_fgms OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_stock_fgms TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_stock_fgms TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_stock_fgms TO gr_uqry_data;
