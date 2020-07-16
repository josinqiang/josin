-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account;

CREATE TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account (
	date_wid int8 NULL,
	client varchar(9) NULL, -- 客户端
	factory varchar(12) NULL, -- 公司代码
	object_number varchar(66) NULL, -- 对象号
	cost_center varchar(30) NULL, -- 成本中心
	general_name varchar NULL, -- 一般姓名
	cost_elements varchar(30) NULL, -- 成本要素
	co_code_number varchar(42) NULL, -- CO 码次级编号
	debit_or_credit_mark varchar(3) NULL, -- 借/贷标记
	general_ledger_account_name varchar(60) NULL, -- 总帐科目名称
	"version" varchar(9) NULL, -- 版本
	co_business_affacharacter varchar(12) NULL, -- CO 业务事务
	value_type varchar(6) NULL, -- 值类型
	function_range varchar(48) NULL, -- 功能范围
	years varchar(9) NULL, -- 会计年度
	months varchar(9) NULL, -- 月份
	plan_actual varchar(200) NULL, -- 计划/实际
	amount numeric(15,2) NULL, -- 金额
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
COMMENT ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account IS 'BX指标：按部门的预算实际数';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.client IS '客户端';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.factory IS '公司代码';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.object_number IS '对象号';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.cost_center IS '成本中心';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.general_name IS '一般姓名';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.cost_elements IS '成本要素';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.co_code_number IS 'CO 码次级编号';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.debit_or_credit_mark IS '借/贷标记';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.general_ledger_account_name IS '总帐科目名称';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account."version" IS '版本';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.co_business_affacharacter IS 'CO 业务事务';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.value_type IS '值类型';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.function_range IS '功能范围';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.years IS '会计年度';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.months IS '月份';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.plan_actual IS '计划/实际';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.amount IS '金额';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account TO gr_uqry_data;
