-- Drop table

-- DROP TABLE ods_dfp.lgidb_sony_transfer_data;

CREATE TABLE ods_dfp.lgidb_sony_transfer_data (
	id varchar(255) NULL, -- id
	account varchar(20) NULL, -- 数量
	atd_date varchar(20) NULL, -- 实际起运日期（起运港或机场）
	bl_no varchar(255) NULL, -- 提单号
	box_id varchar(255) NULL, -- box id
	container varchar(600) NULL, -- 集装箱号
	erdat_likp varchar(24) NULL, -- 记录的创建日期
	eta_date varchar(255) NULL, -- 预计到达时间
	inv_no varchar(255) NULL, -- 客户发票号
	matnr_customer_invoice varchar(255) NULL, -- 物料号
	"method" varchar(255) NULL, -- 运输方式
	pallet_id varchar(255) NULL, -- Pallet ID
	po_no varchar(90) NULL, -- HF：No & Date P/O
	posnr varchar(255) NULL, -- 交货项目
	product varchar(255) NULL, -- 产品
	reason varchar(255) NULL, -- 原因
	serial_no varchar(255) NULL, -- Module ID
	site varchar(32) NULL, -- 送达方站点
	status numeric(11) NULL, -- 状态
	supplier_cd varchar(255) NULL, -- 供应商
	transfer_time timestamp NULL, -- 传输时间
	vbeln varchar(255) NULL, -- 销售凭证
	zcjfs_ztie_yd_hd varchar(255) NULL, -- 成交方式
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
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_dfp.lgidb_sony_transfer_data IS '销售LGI物料详细信息';

-- Column comments

COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.id IS 'id';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.account IS '数量';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.atd_date IS '实际起运日期（起运港或机场）';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.bl_no IS '提单号';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.box_id IS 'box id';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.container IS '集装箱号';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.erdat_likp IS '记录的创建日期';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.eta_date IS '预计到达时间';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.inv_no IS '客户发票号';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.matnr_customer_invoice IS '物料号';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data."method" IS '运输方式';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.pallet_id IS 'Pallet ID';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.po_no IS 'HF：No & Date P/O';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.posnr IS '交货项目';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.product IS '产品';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.reason IS '原因';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.serial_no IS 'Module ID';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.site IS '送达方站点';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.status IS '状态';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.supplier_cd IS '供应商';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.transfer_time IS '传输时间';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.vbeln IS '销售凭证';
COMMENT ON COLUMN ods_dfp.lgidb_sony_transfer_data.zcjfs_ztie_yd_hd IS '成交方式';

-- Permissions

ALTER TABLE ods_dfp.lgidb_sony_transfer_data OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.lgidb_sony_transfer_data TO ur_uown_ods;
GRANT SELECT ON TABLE ods_dfp.lgidb_sony_transfer_data TO gr_uqry_data;
GRANT ALL ON TABLE ods_dfp.lgidb_sony_transfer_data TO gr_uapp_data;
