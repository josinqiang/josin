-- Drop table

-- DROP TABLE ods_dfp.lgidb_transfer_data;

CREATE TABLE ods_dfp.lgidb_transfer_data (
	id varchar(255) NULL, -- id
	account varchar(255) NULL, -- 数量
	actual_month varchar(255) NULL, -- so1创建月份
	arrial_cd varchar(255) NULL, -- 送达方简称
	arrial_port varchar(255) NULL, -- 到达港
	bl_no varchar(255) NULL, -- 提单号
	box_id varchar(255) NULL, -- box id
	buyer_cd varchar(255) NULL, -- 售达方简称
	eta_date varchar(255) NULL, -- 预计到达时间
	etd_date varchar(255) NULL, -- 预计离开时间
	inv_no varchar(255) NULL, -- 客户发票号
	lge_part_no varchar(255) NULL, -- 暂无取值
	lgi_po_no varchar(255) NULL, -- 客户po号
	loading_port varchar(255) NULL, -- 起运港
	matnr_customer_invoice varchar(255) NULL, -- 物料号
	model_no varchar(255) NULL, -- 产品名
	pallet_id varchar(255) NULL, -- Pallet ID
	posnr varchar(255) NULL, -- 交货项目
	product_type varchar(255) NULL, -- 产品类型
	qty varchar(255) NULL, -- Panel数量或者BOX里面数量
	reason varchar(255) NULL, -- 原因
	sales_date varchar(255) NULL, -- 销售时间
	sales_price varchar(255) NULL, -- SO1净价
	serial_no varchar(255) NULL, -- Module ID
	status numeric(11) NULL, -- 状态
	supplier_cd varchar(255) NULL, -- 供应商
	vbeln varchar(255) NULL, -- 销售凭证
	zcjfs_ztie_yd_hd varchar(255) NULL, -- 成交方式
	zxmldocno timestamp NULL, -- 时间
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
COMMENT ON TABLE ods_dfp.lgidb_transfer_data IS '销售LGI物料详细信息';

-- Column comments

COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.id IS 'id';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.account IS '数量';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.actual_month IS 'so1创建月份';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.arrial_cd IS '送达方简称';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.arrial_port IS '到达港';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.bl_no IS '提单号';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.box_id IS 'box id';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.buyer_cd IS '售达方简称';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.eta_date IS '预计到达时间';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.etd_date IS '预计离开时间';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.inv_no IS '客户发票号';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.lge_part_no IS '暂无取值';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.lgi_po_no IS '客户po号';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.loading_port IS '起运港';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.matnr_customer_invoice IS '物料号';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.model_no IS '产品名';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.pallet_id IS 'Pallet ID';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.posnr IS '交货项目';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.product_type IS '产品类型';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.qty IS 'Panel数量或者BOX里面数量';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.reason IS '原因';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.sales_date IS '销售时间';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.sales_price IS 'SO1净价';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.serial_no IS 'Module ID';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.status IS '状态';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.supplier_cd IS '供应商';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.vbeln IS '销售凭证';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.zcjfs_ztie_yd_hd IS '成交方式';
COMMENT ON COLUMN ods_dfp.lgidb_transfer_data.zxmldocno IS '时间';

-- Permissions

ALTER TABLE ods_dfp.lgidb_transfer_data OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.lgidb_transfer_data TO ur_uown_ods;
GRANT SELECT ON TABLE ods_dfp.lgidb_transfer_data TO gr_uqry_data;
GRANT ALL ON TABLE ods_dfp.lgidb_transfer_data TO gr_uapp_data;
