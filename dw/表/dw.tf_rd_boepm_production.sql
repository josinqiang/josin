-- Drop table

-- DROP TABLE dw.tf_rd_boepm_production;

CREATE TABLE dw.tf_rd_boepm_production (
	fgcode_id varchar(50) NULL, -- Fgcode id
	fgcode_name varchar(1500) NULL, -- Fgcode名称
	project_id_boepm varchar(50) NULL, -- Boepm系统项目ID
	project_name varchar(1500) NULL, -- 项目名称
	fgcode_edition varchar(10) NULL, -- Fgcode版本
	fgcode_status varchar(30) NULL, -- FG-code当前状态
	create_time timestamp NULL, -- FG-code预发布时间
	receive_time timestamp NULL, -- FG-code当前状态时间
	rp_time timestamp NULL, -- FG-code RP时间
	mp_time timestamp NULL, -- FG-code MP时间
	factory_bom varchar(100) NULL, -- BOM发布工厂
	array_no varchar(100) NULL, -- Array NO.
	cf_no varchar(100) NULL, -- CF NO.
	cell_no varchar(100) NULL, -- Cell NO.
	sensor_no varchar(100) NULL, -- Sensor No.
	factory varchar(4000) NULL, -- 现地
	product_name varchar(4000) NULL, -- 产品名
	dimensions varchar(4000) NULL, -- 尺寸
	mdm_project_name varchar(4000) NULL, -- MDM系统项目名称
	shipment_mode varchar(4000) NULL, -- 出货模式
	project_id_mdm varchar(4000) NULL, -- MDM系统项目ID
	product_type varchar(4000) NULL, -- 产品别
	fgcode_creater varchar(60) NULL, -- FGcode创建人
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
COMMENT ON TABLE dw.tf_rd_boepm_production IS 'boepm系统，产品信息表';

-- Column comments

COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_id IS 'Fgcode id';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_name IS 'Fgcode名称';
COMMENT ON COLUMN dw.tf_rd_boepm_production.project_id_boepm IS 'Boepm系统项目ID';
COMMENT ON COLUMN dw.tf_rd_boepm_production.project_name IS '项目名称';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_edition IS 'Fgcode版本';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_status IS 'FG-code当前状态';
COMMENT ON COLUMN dw.tf_rd_boepm_production.create_time IS 'FG-code预发布时间';
COMMENT ON COLUMN dw.tf_rd_boepm_production.receive_time IS 'FG-code当前状态时间';
COMMENT ON COLUMN dw.tf_rd_boepm_production.rp_time IS 'FG-code RP时间';
COMMENT ON COLUMN dw.tf_rd_boepm_production.mp_time IS 'FG-code MP时间';
COMMENT ON COLUMN dw.tf_rd_boepm_production.factory_bom IS 'BOM发布工厂';
COMMENT ON COLUMN dw.tf_rd_boepm_production.array_no IS 'Array NO.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.cf_no IS 'CF NO.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.cell_no IS 'Cell NO.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.sensor_no IS 'Sensor No.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.factory IS '现地';
COMMENT ON COLUMN dw.tf_rd_boepm_production.product_name IS '产品名';
COMMENT ON COLUMN dw.tf_rd_boepm_production.dimensions IS '尺寸';
COMMENT ON COLUMN dw.tf_rd_boepm_production.mdm_project_name IS 'MDM系统项目名称';
COMMENT ON COLUMN dw.tf_rd_boepm_production.shipment_mode IS '出货模式';
COMMENT ON COLUMN dw.tf_rd_boepm_production.project_id_mdm IS 'MDM系统项目ID';
COMMENT ON COLUMN dw.tf_rd_boepm_production.product_type IS '产品别';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_creater IS 'FGcode创建人';

-- Permissions

ALTER TABLE dw.tf_rd_boepm_production OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_rd_boepm_production TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_rd_boepm_production TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_rd_boepm_production TO gr_uqry_data;
