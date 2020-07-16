-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_p9_detail;

CREATE TABLE dw.tf_loss_b4_pr_p9_detail (
	event_time timestamp NULL, -- 时间戳
	fg_code varchar(50) NULL, -- fg_code
	fg_code_desc varchar(200) NULL, -- fg_code描述
	pr_code varchar(30) NULL, -- pr胶编码
	pr_name varchar(100) NULL, -- pr胶名称
	pr_type varchar(50) NULL, -- pr胶型号
	loss_code varchar(100) NULL, -- Loss码
	loss_desc varchar(100) NULL, -- loss名称
	factory varchar(100) NULL, -- 分厂
	operation varchar(100) NULL, -- 工序
	equipment varchar(100) NULL, -- 设备
	loss_qty numeric(19,9) NULL, -- 损耗量
	uom varchar(15) NULL, -- 单位
	price numeric(19,9) NULL, -- 单价
	loss_amt numeric(19,9) NULL, -- 损耗金额
	ppid varchar(150) NULL, -- ppid
	glassid varchar(100) NULL, -- glassid
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
COMMENT ON TABLE dw.tf_loss_b4_pr_p9_detail IS '线上NG损耗量';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.event_time IS '时间戳';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.fg_code IS 'fg_code';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.fg_code_desc IS 'fg_code描述';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.pr_code IS 'pr胶编码';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.pr_name IS 'pr胶名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.pr_type IS 'pr胶型号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_code IS 'Loss码';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_desc IS 'loss名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.factory IS '分厂';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.operation IS '工序';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.equipment IS '设备';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_qty IS '损耗量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.uom IS '单位';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.price IS '单价';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_amt IS '损耗金额';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.ppid IS 'ppid';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.glassid IS 'glassid';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_p9_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p9_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p9_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_p9_detail TO gr_uqry_data;
