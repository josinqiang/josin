-- Drop table

-- DROP TABLE dw.tf_qm_oqc_fpoq_data_ledger;

CREATE TABLE dw.tf_qm_oqc_fpoq_data_ledger (
	fpoq_data_id numeric(19) NULL,
	lot_detail_id numeric(19) NULL,
	bed_detail_id numeric(19) NULL,
	bed_product_detail_id numeric(19) NULL,
	factory varchar(510) NULL, -- 工厂
	is_submit varchar(510) NULL, -- 是否提交
	sponsor_date_wid int8 NULL, -- 发起日期代理键
	check_date_wid int8 NULL, -- 检验日期代理键
	total_week numeric(10) NULL, -- 周别
	team varchar(510) NULL, -- 班组
	fg_code_wid int8 NULL, -- fg-code代理键
	sam_size numeric NULL, -- 尺寸
	product_type varchar(510) NULL, -- 产品类别
	product_state varchar(510) NULL, -- 产品形态
	resolving_power varchar(510) NULL, -- 分辨率
	show_mode varchar(510) NULL, -- 显示模式
	customer varchar(510) NULL, -- 客户
	touch_category varchar(510) NULL, -- touch类别
	product_facade_category varchar(510) NULL, -- 产品外观类别
	lot_id varchar(255) NULL, -- lotid
	pallet_id varchar(510) NULL, -- palletid
	lot_detail_rev_code varchar(510) NULL, -- lot详情的code
	lot_detail_grade varchar(510) NULL, -- lot详情的grade
	lot_detail_box_amount numeric NULL, -- lot详情box数量(pal内)
	lot_detail_panel_amount numeric NULL, -- lot详情的panel数量(pal内)
	panel_amount numeric NULL, -- panel数量
	box_amount numeric NULL, -- box数量
	check_box_amount numeric NULL, -- 抽检box数量
	practical_amount numeric NULL, -- 实际抽检数量
	checkout_result varchar(510) NULL, -- 抽检结果
	check_type varchar(510) NULL, -- 抽检类型
	badness_amount numeric NULL, -- 不良总数
	bad_item_name varchar(510) NULL, -- 不良名称
	bed_detail_badness_amount numeric NULL, -- bed详情不良数量
	badness_rate numeric NULL, -- 不良率(%)
	module_id varchar(510) NULL, -- moduleid
	in_pallet_id varchar(510) NULL, -- 所在palletid
	in_boxt_id varchar(510) NULL, -- 所在boxid
	product_detail_rev_code varchar(510) NULL, -- product详情的code
	product_detail_grade varchar(510) NULL, -- product详情的grade
	product_detail_bad_item_code varchar(510) NULL, -- 详细产品不良代码
	product_detail_bad_item_name varchar(510) NULL, -- 详细产品不良名称
	inspector varchar(510) NULL, -- 检查人员
	system_integration_time timestamp NULL, -- 检查人员
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
COMMENT ON TABLE dw.tf_qm_oqc_fpoq_data_ledger IS '事实表-FPOQ数据台账';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.factory IS '工厂';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.is_submit IS '是否提交';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.sponsor_date_wid IS '发起日期代理键';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.check_date_wid IS '检验日期代理键';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.total_week IS '周别';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.team IS '班组';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.fg_code_wid IS 'fg-code代理键';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.sam_size IS '尺寸';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_type IS '产品类别';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_state IS '产品形态';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.resolving_power IS '分辨率';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.show_mode IS '显示模式';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.customer IS '客户';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.touch_category IS 'touch类别';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_facade_category IS '产品外观类别';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_id IS 'lotid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.pallet_id IS 'palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_rev_code IS 'lot详情的code';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_grade IS 'lot详情的grade';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_box_amount IS 'lot详情box数量(pal内)';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_panel_amount IS 'lot详情的panel数量(pal内)';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.panel_amount IS 'panel数量';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.box_amount IS 'box数量';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.check_box_amount IS '抽检box数量';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.practical_amount IS '实际抽检数量';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.checkout_result IS '抽检结果';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.check_type IS '抽检类型';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.badness_amount IS '不良总数';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.bad_item_name IS '不良名称';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.bed_detail_badness_amount IS 'bed详情不良数量';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.badness_rate IS '不良率(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.module_id IS 'moduleid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.in_pallet_id IS '所在palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.in_boxt_id IS '所在boxid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_rev_code IS 'product详情的code';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_grade IS 'product详情的grade';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_bad_item_code IS '详细产品不良代码';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_bad_item_name IS '详细产品不良名称';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.inspector IS '检查人员';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.system_integration_time IS '检查人员';

-- Permissions

ALTER TABLE dw.tf_qm_oqc_fpoq_data_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_fpoq_data_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_fpoq_data_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_oqc_fpoq_data_ledger TO gr_uqry_data;
