-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_cost;

CREATE TABLE dw.tf_loss_b4_pr_cost (
	month_wid numeric(19,7) NULL, -- 月份编号
	month_end_day numeric(19,7) NULL, -- 月末日期编号
	month_end_date date NULL, -- 月末日期
	next_month_wid numeric(19,7) NULL, -- 下月编号
	next_month_day varchar(50) NULL, -- 下月名称
	material_number varchar(30) NULL, -- 物料组件
	material_name varchar(100) NULL, -- 物料描述
	pr_type varchar(50) NULL, -- PR胶型号
	price numeric(19,9) NULL, -- 单价
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
COMMENT ON TABLE dw.tf_loss_b4_pr_cost IS 'PR胶成本表';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.month_wid IS '月份编号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.month_end_day IS '月末日期编号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.month_end_date IS '月末日期';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.next_month_wid IS '下月编号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.next_month_day IS '下月名称';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.material_number IS '物料组件';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.material_name IS '物料描述';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.pr_type IS 'PR胶型号';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.price IS '单价';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_cost OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_cost TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_cost TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_cost TO gr_uqry_data;
