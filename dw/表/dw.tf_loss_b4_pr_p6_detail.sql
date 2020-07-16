-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_p6_detail;

CREATE TABLE dw.tf_loss_b4_pr_p6_detail (
	event_time timestamp NULL DEFAULT NULL::timestamp without time zone, -- 时间戳
	fg_code varchar(50) NULL DEFAULT NULL::character varying, -- fg_code
	fg_code_desc varchar(200) NULL DEFAULT NULL::character varying, -- fg_code描述
	pr_code varchar(30) NULL DEFAULT NULL::character varying, -- pr胶编码
	pr_name varchar(100) NULL DEFAULT NULL::character varying, -- pr胶名称
	pr_type varchar(50) NULL DEFAULT NULL::character varying, -- pr胶型号
	loss_code varchar(15) NULL DEFAULT NULL::character varying, -- Loss码
	loss_desc varchar(100) NULL DEFAULT NULL::character varying, -- loss名称
	factory varchar(15) NULL DEFAULT NULL::character varying, -- 分厂
	operation varchar(15) NULL DEFAULT NULL::character varying, -- 工序
	equipment varchar(15) NULL DEFAULT NULL::character varying, -- 设备
	loss_qty numeric(19,9) NULL DEFAULT NULL::numeric, -- 损耗量，YMS系统单位为ul
	uom varchar(15) NULL DEFAULT NULL::character varying, -- 单位
	price numeric(19,9) NULL DEFAULT NULL::numeric, -- 单价
	loss_amt numeric(19,9) NULL DEFAULT NULL::numeric, -- 损耗金额
	ppid_last varchar(150) NULL DEFAULT NULL::character varying, -- ppid_last
	volume_part1 numeric(19,9) NULL, -- 第一部分吐胶量
	volume_part2 numeric(19,9) NULL, -- 第二部分吐胶量
	volume_part3 numeric(19,9) NULL, -- 第三部分吐胶量
	volume_part4 numeric(19,9) NULL, -- 第四部分吐胶量
	volume_part5 numeric(19,9) NULL, -- 第五部分吐胶量
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_loss_b4_pr_p6_detail IS 'pr胶idle吐出量详情表';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.event_time IS '时间戳';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.fg_code IS 'fg_code';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.fg_code_desc IS 'fg_code描述';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.pr_code IS 'pr胶编码';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.pr_name IS 'pr胶名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.pr_type IS 'pr胶型号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.loss_code IS 'Loss码';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.loss_desc IS 'loss名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.factory IS '分厂';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.operation IS '工序';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.equipment IS '设备';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.loss_qty IS '损耗量，YMS系统单位为ul';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.uom IS '单位';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.price IS '单价';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.loss_amt IS '损耗金额';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.ppid_last IS 'ppid_last';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.volume_part1 IS '第一部分吐胶量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.volume_part2 IS '第二部分吐胶量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.volume_part3 IS '第三部分吐胶量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.volume_part4 IS '第四部分吐胶量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p6_detail.volume_part5 IS '第五部分吐胶量';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_p6_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p6_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p6_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_p6_detail TO gr_uqry_data;
