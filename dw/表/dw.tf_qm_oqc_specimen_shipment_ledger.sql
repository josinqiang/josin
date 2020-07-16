-- Drop table

-- DROP TABLE dw.tf_qm_oqc_specimen_shipment_ledger;

CREATE TABLE dw.tf_qm_oqc_specimen_shipment_ledger (
	data_id numeric(19) NULL,
	lot_detail_id numeric(19) NULL,
	baditem_record_id numeric(19) NULL,
	bed_product_detail_id numeric(19) NULL,
	factory varchar(510) NULL, -- 工厂
	is_submit varchar(510) NULL, -- 是否提交
	receive_date_wid int8 NULL, -- 接收日期代理键
	check_date_wid int8 NULL, -- 检验日期代理键
	total_week numeric(10) NULL, -- 周别
	team varchar(510) NULL, -- 班组
	fg_code_wid int8 NULL, -- fgcode代理键
	pro_size numeric NULL, -- 尺寸
	product_type varchar(510) NULL, -- 产品类别
	product_state varchar(510) NULL, -- 产品形态
	resolving_power varchar(510) NULL, -- 分辨率
	show_mode varchar(510) NULL, -- 显示模式
	customer varchar(510) NULL, -- 客户
	specimen_stage varchar(510) NULL, -- 样品阶段
	attestation_obj varchar(510) NULL, -- 认证项目
	consignor varchar(510) NULL, -- 委托人
	inspect_method varchar(510) NULL, -- 检验方法
	lot_id varchar(510) NULL, -- lotid
	pallet_id varchar(510) NULL, -- lot详情-palletid
	lot_detail_rev_code varchar(510) NULL, -- lot详情-code
	lot_detail_grade varchar(510) NULL, -- lot详情-grade
	box_amount numeric NULL, -- lot详情-box数量(pal内)
	panel_amount numeric NULL, -- lot详情-panel数量(pal内)
	need_amount numeric NULL, -- 需求数量
	entrust_amount numeric NULL, -- 委托数量
	inspect_amount numeric NULL, -- 检查数量
	qualified_amount numeric NULL, -- ok数量
	qualified_rate numeric NULL, -- ok率(%)
	badness_amount numeric NULL, -- 不良数量
	badness_rate numeric NULL, -- 不良率(%)
	baditem_record_bad_item_name varchar(510) NULL, -- 不良详情-不良名称
	baditem_record_badness_amount numeric NULL, -- 不良详情-不良数量
	baditem_record_badness_rate numeric NULL, -- 不良详情-不良率(%)
	module_id varchar(510) NULL, -- 不良产品详情-moduleid
	in_pallet_id varchar(510) NULL, -- 不良产品详情-所在palletid
	in_boxt_id varchar(510) NULL, -- 不良产品详情-所在boxid
	product_detail_rev_code varchar(510) NULL, -- 不良产品详情-code
	product_detail_grade varchar(510) NULL, -- 不良产品详情-grade
	bad_item_code varchar(510) NULL, -- 不良产品详情-不良代码
	product_detail_bad_item_name varchar(510) NULL, -- 不良产品详情-不良名称
	inspector varchar(510) NULL, -- 检查人员
	system_integration_time timestamp NULL, -- 系统集成时间
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
COMMENT ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger IS '事实表-样品出货数据台账';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.factory IS '工厂';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.is_submit IS '是否提交';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.receive_date_wid IS '接收日期代理键';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.check_date_wid IS '检验日期代理键';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.total_week IS '周别';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.team IS '班组';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.fg_code_wid IS 'fgcode代理键';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.pro_size IS '尺寸';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_type IS '产品类别';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_state IS '产品形态';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.resolving_power IS '分辨率';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.show_mode IS '显示模式';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.customer IS '客户';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.specimen_stage IS '样品阶段';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.attestation_obj IS '认证项目';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.consignor IS '委托人';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.inspect_method IS '检验方法';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.lot_id IS 'lotid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.pallet_id IS 'lot详情-palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.lot_detail_rev_code IS 'lot详情-code';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.lot_detail_grade IS 'lot详情-grade';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.box_amount IS 'lot详情-box数量(pal内)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.panel_amount IS 'lot详情-panel数量(pal内)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.need_amount IS '需求数量';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.entrust_amount IS '委托数量';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.inspect_amount IS '检查数量';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.qualified_amount IS 'ok数量';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.qualified_rate IS 'ok率(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.badness_amount IS '不良数量';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.badness_rate IS '不良率(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.baditem_record_bad_item_name IS '不良详情-不良名称';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.baditem_record_badness_amount IS '不良详情-不良数量';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.baditem_record_badness_rate IS '不良详情-不良率(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.module_id IS '不良产品详情-moduleid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.in_pallet_id IS '不良产品详情-所在palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.in_boxt_id IS '不良产品详情-所在boxid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_detail_rev_code IS '不良产品详情-code';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_detail_grade IS '不良产品详情-grade';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.bad_item_code IS '不良产品详情-不良代码';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_detail_bad_item_name IS '不良产品详情-不良名称';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.inspector IS '检查人员';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.system_integration_time IS '系统集成时间';

-- Permissions

ALTER TABLE dw.tf_qm_oqc_specimen_shipment_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger TO gr_uqry_data;
