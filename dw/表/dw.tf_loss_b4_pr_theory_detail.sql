-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_theory_detail;

CREATE TABLE dw.tf_loss_b4_pr_theory_detail (
	loss_date timestamp NULL, -- 日期
	fg_code varchar(50) NULL, -- 产品型号
	fg_code_desc varchar(200) NULL, -- 描述
	pr_code varchar(30) NULL, -- PR胶编码
	pr_name varchar(100) NULL, -- PR胶名称
	pr_type varchar(50) NULL, -- PR胶型号
	price numeric(19,9) NULL, -- PR胶单价
	target_per_amount numeric(23,14) NULL, -- 目标单耗
	"output" numeric(13,3) NULL, -- 基板产量
	factory varchar(50) NULL, -- 分厂
	"input" numeric(14,5) NULL, -- 基板投入量
	initial_wip_amount numeric(14,5) NULL, -- 基板期初WIP量
	final_wip_amount numeric(14,5) NULL, -- 基板期末WIP量
	loss_amt numeric(19,9) NULL, -- 实际消耗量
	loss_qty numeric(19,9) NULL, -- 实际金额
	target_total_amt numeric(19,9) NULL, -- 总目标消耗量
	target_total_qty numeric(19,9) NULL, -- 总目标消耗金额
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
COMMENT ON TABLE dw.tf_loss_b4_pr_theory_detail IS '理论计算法详情表，dw层';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.loss_date IS '日期';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.fg_code IS '产品型号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.fg_code_desc IS '描述';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.pr_code IS 'PR胶编码';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.pr_name IS 'PR胶名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.pr_type IS 'PR胶型号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.price IS 'PR胶单价';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.target_per_amount IS '目标单耗';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail."output" IS '基板产量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.factory IS '分厂';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail."input" IS '基板投入量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.initial_wip_amount IS '基板期初WIP量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.final_wip_amount IS '基板期末WIP量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.loss_amt IS '实际消耗量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.loss_qty IS '实际金额';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.target_total_amt IS '总目标消耗量';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.target_total_qty IS '总目标消耗金额';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_theory_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_theory_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_theory_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_theory_detail TO gr_uqry_data;
