-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_fact_detail;

CREATE TABLE dw.tf_loss_b4_pr_fact_detail (
	loss_date timestamp NULL, -- 日期
	fg_code varchar(50) NULL, -- 产品型号
	fg_code_desc varchar(200) NULL, -- 描述
	pr_code varchar(30) NULL, -- PR胶编码
	pr_name varchar(100) NULL, -- PR胶名称
	pr_type varchar(50) NULL, -- PR胶型号
	loss_code varchar(200) NULL, -- Loss码
	loss_desc varchar(100) NULL, -- Loss名称
	operation varchar(50) NULL, -- 工序
	equipment varchar(50) NULL, -- 设备
	loss_qty numeric(19,9) NULL, -- 实际量
	uom varchar(50) NULL, -- 单位
	price numeric(19,9) NULL, -- 单价
	loss_amt numeric(19,9) NULL, -- 实际金额
	ppid varchar(50) NULL, -- PPID
	glassid varchar(200) NULL, -- glassid
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
COMMENT ON TABLE dw.tf_loss_b4_pr_fact_detail IS '实际测量法详情表,dw层';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_date IS '日期';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.fg_code IS '产品型号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.fg_code_desc IS '描述';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.pr_code IS 'PR胶编码';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.pr_name IS 'PR胶名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.pr_type IS 'PR胶型号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_code IS 'Loss码';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_desc IS 'Loss名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.operation IS '工序';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.equipment IS '设备';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_qty IS '实际量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.uom IS '单位';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.price IS '单价';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_amt IS '实际金额';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.ppid IS 'PPID';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.glassid IS 'glassid';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_fact_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_fact_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_fact_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_fact_detail TO gr_uqry_data;
