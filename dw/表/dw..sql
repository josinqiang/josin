-- Drop table

-- DROP TABLE dw.td_com_factory_location_erp;

CREATE TABLE dw.td_com_factory_location_erp (
	row_wid int8 NOT NULL, -- 代理键
	client_code varchar(9) NULL, -- 客户端
	factory_code varchar(12) NULL, -- 工厂
	factory_location varchar(12) NULL, -- 库存地点
	location_description varchar(48) NULL, -- 仓储地点的描述
	division varchar(6) NULL, -- 产品组
	xlong varchar(3) NULL, -- 在储存地中允许负的库存
	xbufx varchar(3) NULL, -- 允许冻结仓储地点的薄记库存余额
	diskz varchar(3) NULL, -- MRP标识: 仓储地点
	xblgo varchar(3) NULL, -- 货物移动存储地点授权活跃
	xress varchar(3) NULL, -- 库存地点分配到资源（存储资源）
	xhupf varchar(3) NULL, -- 处理单位需求
	parlg varchar(12) NULL, -- 处理单位的伙伴存储地点
	vkorg varchar(12) NULL, -- 销售组织
	vtweg varchar(6) NULL, -- 分销渠道
	vstel varchar(12) NULL, -- 装运点/接收点
	lifnr varchar(30) NULL, -- 供应商帐户号
	kunnr varchar(30) NULL, -- 客户的帐户号
	oih_licno varchar(45) NULL, -- 未完税库存的许可证编号
	oig_itrfl varchar(3) NULL, -- 运输和分配在途标记
	oib_tnkassign varchar(3) NULL, -- 井管理: 油罐分配标识符
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
COMMENT ON TABLE dw.td_com_factory_location_erp IS '公共维度-工厂地点';

-- Column comments

COMMENT ON COLUMN dw.td_com_factory_location_erp.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_com_factory_location_erp.client_code IS '客户端';
COMMENT ON COLUMN dw.td_com_factory_location_erp.factory_code IS '工厂';
COMMENT ON COLUMN dw.td_com_factory_location_erp.factory_location IS '库存地点';
COMMENT ON COLUMN dw.td_com_factory_location_erp.location_description IS '仓储地点的描述';
COMMENT ON COLUMN dw.td_com_factory_location_erp.division IS '产品组';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xlong IS '在储存地中允许负的库存';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xbufx IS '允许冻结仓储地点的薄记库存余额';
COMMENT ON COLUMN dw.td_com_factory_location_erp.diskz IS 'MRP标识: 仓储地点';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xblgo IS '货物移动存储地点授权活跃';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xress IS '库存地点分配到资源（存储资源）';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xhupf IS '处理单位需求';
COMMENT ON COLUMN dw.td_com_factory_location_erp.parlg IS '处理单位的伙伴存储地点';
COMMENT ON COLUMN dw.td_com_factory_location_erp.vkorg IS '销售组织';
COMMENT ON COLUMN dw.td_com_factory_location_erp.vtweg IS '分销渠道';
COMMENT ON COLUMN dw.td_com_factory_location_erp.vstel IS '装运点/接收点';
COMMENT ON COLUMN dw.td_com_factory_location_erp.lifnr IS '供应商帐户号';
COMMENT ON COLUMN dw.td_com_factory_location_erp.kunnr IS '客户的帐户号';
COMMENT ON COLUMN dw.td_com_factory_location_erp.oih_licno IS '未完税库存的许可证编号';
COMMENT ON COLUMN dw.td_com_factory_location_erp.oig_itrfl IS '运输和分配在途标记';
COMMENT ON COLUMN dw.td_com_factory_location_erp.oib_tnkassign IS '井管理: 油罐分配标识符';

-- Permissions

ALTER TABLE dw.td_com_factory_location_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_location_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_location_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_factory_location_erp TO gr_uqry_data;
