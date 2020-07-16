-- Drop table

-- DROP TABLE dw.tf_pp_inv_onhand_day;

CREATE TABLE dw.tf_pp_inv_onhand_day (
	snap_day_wid int8 NULL, -- 日期主键代理键
	client varchar(9) NULL, -- 客户端
	item_wid int8 NULL, -- 物料号代理键
	factory_wid int8 NULL, -- 工厂代理键
	org_code varchar(12) NULL, -- 公司
	inv_loc_code varchar(12) NULL, -- 库存地点编码
	inv_loc_name varchar(48) NULL, -- 库存地点名称
	inv_price numeric(11,2) NULL, -- 库存价格
	inv_qty numeric(13,3) NULL, -- 库存数量
	inv_amt numeric NULL, -- 库存金额
	pstat varchar(45) NULL, -- 维护状态
	lvorm varchar(3) NULL, -- 在库存地点级标记要删除的物料
	lfgja varchar(12) NULL, -- 当前期间的会计年度
	lfmon varchar(6) NULL, -- 当前期间 (记帐期间)
	sperr varchar(3) NULL, -- 实际盘点冻结标识
	umlme numeric(13,3) NULL, -- 在运库存 (从一库存地到另一库存地)
	insme numeric(13,3) NULL, -- 质量检验中的库存
	einme numeric(13,3) NULL, -- 全部限制批次的总计库存
	speme numeric(13,3) NULL, -- 冻结的库存
	retme numeric(13,3) NULL, -- 返回冻结的库存
	vmlab numeric(13,3) NULL, -- 上期的估价的非限制使用库存
	vmuml numeric(13,3) NULL, -- 前一期间的中转库存
	vmins numeric(13,3) NULL, -- 前一期间的质量检验库存
	vmein numeric(13,3) NULL, -- 上期限制使用的库存
	vmspe numeric(13,3) NULL, -- 前期的冻结库存
	vmret numeric(13,3) NULL, -- 前一期间冻结的退回存货
	kzill varchar(9) NULL, -- 当年的库存的实际盘点标识
	kzilq varchar(9) NULL, -- 实际盘点标识,当年的质检库存
	kzile varchar(9) NULL, -- 限制使用库存的实际盘点标识
	kzils varchar(9) NULL, -- 冻结库存的实际盘点标识
	kzvll varchar(9) NULL, -- 上一年度仓库库存实际盘点标志
	kzvlq varchar(9) NULL, -- 前期质检库存的前期实际盘点标识
	kzvle varchar(9) NULL, -- 限制使用库存的实际盘点标识, 前一期间
	kzvls varchar(9) NULL, -- 前期冻结库存的实际盘点标识
	diskz varchar(3) NULL, -- MRP标识: 仓储地点
	lsobs varchar(6) NULL, -- 在存储场所层的特定采购类型
	lminb numeric(13,3) NULL, -- 库存地点MRP的重订购点
	lbstf numeric(13,3) NULL, -- 库存地点MRP的补充数量
	herkl varchar(9) NULL, -- 物料原产地国家
	exppg varchar(3) NULL, -- 优先标识(非激活的)
	exver varchar(6) NULL, -- 出口标识(未激活)
	lgpbe varchar(30) NULL, -- 库存仓位
	klabs numeric(13,3) NULL, -- 非限制使用的寄售库存
	kinsm numeric(13,3) NULL, -- 处于质量检查中的寄存库存
	keinm numeric(13,3) NULL, -- 限制使用的寄售库存
	kspem numeric(13,3) NULL, -- 冻结的寄售库存
	dlinl varchar(24) NULL, -- 非限制使用的库存中最新实际盘点的日期
	prctl varchar(30) NULL, -- 利润中心
	ersda varchar(24) NULL, -- 创建日期
	vklab numeric(13,2) NULL, -- 销售价格的单值物料的库存价值
	vkuml numeric(13,2) NULL, -- 转库的销售价值(存储地点到存储地点)
	lwmkb varchar(9) NULL, -- 贫乏的WM的领货范围
	bskrf numeric(38,32) NULL, -- 库存校正因子
	mdrue varchar(3) NULL, -- 最后的MARD 期间之前，MARDH 记录已经存在
	mdjin varchar(12) NULL, -- 当前实际库存指示的财政年度
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
COMMENT ON TABLE dw.tf_pp_inv_onhand_day IS '每日库存';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.snap_day_wid IS '日期主键代理键';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.client IS '客户端';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.item_wid IS '物料号代理键';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.org_code IS '公司';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_loc_code IS '库存地点编码';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_loc_name IS '库存地点名称';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_price IS '库存价格';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_qty IS '库存数量';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_amt IS '库存金额';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.pstat IS '维护状态';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lvorm IS '在库存地点级标记要删除的物料';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lfgja IS '当前期间的会计年度';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lfmon IS '当前期间 (记帐期间)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.sperr IS '实际盘点冻结标识';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.umlme IS '在运库存 (从一库存地到另一库存地)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.insme IS '质量检验中的库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.einme IS '全部限制批次的总计库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.speme IS '冻结的库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.retme IS '返回冻结的库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmlab IS '上期的估价的非限制使用库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmuml IS '前一期间的中转库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmins IS '前一期间的质量检验库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmein IS '上期限制使用的库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmspe IS '前期的冻结库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmret IS '前一期间冻结的退回存货';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzill IS '当年的库存的实际盘点标识';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzilq IS '实际盘点标识,当年的质检库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzile IS '限制使用库存的实际盘点标识';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzils IS '冻结库存的实际盘点标识';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvll IS '上一年度仓库库存实际盘点标志';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvlq IS '前期质检库存的前期实际盘点标识';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvle IS '限制使用库存的实际盘点标识, 前一期间';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvls IS '前期冻结库存的实际盘点标识';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.diskz IS 'MRP标识: 仓储地点';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lsobs IS '在存储场所层的特定采购类型';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lminb IS '库存地点MRP的重订购点';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lbstf IS '库存地点MRP的补充数量';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.herkl IS '物料原产地国家';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.exppg IS '优先标识(非激活的)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.exver IS '出口标识(未激活)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lgpbe IS '库存仓位';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.klabs IS '非限制使用的寄售库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kinsm IS '处于质量检查中的寄存库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.keinm IS '限制使用的寄售库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kspem IS '冻结的寄售库存';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.dlinl IS '非限制使用的库存中最新实际盘点的日期';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.prctl IS '利润中心';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.ersda IS '创建日期';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vklab IS '销售价格的单值物料的库存价值';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vkuml IS '转库的销售价值(存储地点到存储地点)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lwmkb IS '贫乏的WM的领货范围';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.bskrf IS '库存校正因子';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.mdrue IS '最后的MARD 期间之前，MARDH 记录已经存在';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.mdjin IS '当前实际库存指示的财政年度';

-- Permissions

ALTER TABLE dw.tf_pp_inv_onhand_day OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_inv_onhand_day TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_inv_onhand_day TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_inv_onhand_day TO gr_uqry_data;
