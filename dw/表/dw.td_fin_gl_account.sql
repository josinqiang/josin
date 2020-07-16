-- Drop table

-- DROP TABLE dw.td_fin_gl_account;

CREATE TABLE dw.td_fin_gl_account (
	row_wid int8 NULL, -- 代理键
	client_code varchar(9) NULL, -- 客户端代码
	company_code varchar(12) NULL, -- 公司代码
	account_charts varchar(12) NULL, -- 科目账目
	gl_account_code varchar(30) NULL, -- 总账科目代码
	gl_account_short_name varchar(60) NULL, -- 总账科目段短描述
	gl_account_name varchar(150) NULL, -- 总账科目描述
	gl_account_group_code varchar(12) NULL, -- 科目组编码
	gl_account_group_name varchar(10) NULL, -- 科目组名称(与表T077Z关联，获得科目组名称)
	pl_account_flag varchar(6) NULL, -- 损益科目表标识
	pl_acct_func_area varchar(48) NULL, -- 损益科目表控制范围
	bs_account_flag varchar(3) NULL, -- 资产负债表标识
	trading_partner_compamy_code varchar(18) NULL, -- 贸易伙伴公司编码
	currency varchar(15) NULL, -- 货币
	balances_in_loc_currency_flag varchar(3) NULL, -- 仅以本位币及余额标识符
	tax_category varchar(6) NULL, -- 税务类型
	tax_code_require_flag varchar(3) NULL, -- 允许含/不含税过账
	open_item_manage_flag varchar(3) NULL, -- 未清项目管理
	line_item_display_flag varchar(3) NULL, -- 行项目是否显示标识符
	sorting_assign_number varchar(9) NULL, -- 排序码
	field_status_group_code varchar(12) NULL, -- 字段状态组
	field_status_group_name varchar(40) NULL, -- 字段状态组名称（与T004G表关联，获取字段状态组名称）
	account_post_auto_flag varchar(3) NULL, -- 科目只能自动记账标识
	supplement_post_auto_flag varchar(3) NULL, -- 自动记账补充处理
	commitment_item varchar(42) NULL, -- 承诺项目
	account_create_block_flag varchar(3) NULL, -- 冻结建立
	account_create_dt varchar(24) NULL, -- 科目信息创建日期
	account_create_by varchar(36) NULL, -- 科目信息创建人
	account_company_create_dt varchar(24) NULL, -- 科目信息创建日期(按公司代码)
	account_company_create_by varchar(36) NULL, -- 科目信息创建人(按公司代码)
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
COMMENT ON TABLE dw.td_fin_gl_account IS '会计科目主数据';

-- Column comments

COMMENT ON COLUMN dw.td_fin_gl_account.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_fin_gl_account.client_code IS '客户端代码';
COMMENT ON COLUMN dw.td_fin_gl_account.company_code IS '公司代码';
COMMENT ON COLUMN dw.td_fin_gl_account.account_charts IS '科目账目';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_code IS '总账科目代码';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_short_name IS '总账科目段短描述';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_name IS '总账科目描述';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_group_code IS '科目组编码';
COMMENT ON COLUMN dw.td_fin_gl_account.gl_account_group_name IS '科目组名称(与表T077Z关联，获得科目组名称)';
COMMENT ON COLUMN dw.td_fin_gl_account.pl_account_flag IS '损益科目表标识';
COMMENT ON COLUMN dw.td_fin_gl_account.pl_acct_func_area IS '损益科目表控制范围';
COMMENT ON COLUMN dw.td_fin_gl_account.bs_account_flag IS '资产负债表标识';
COMMENT ON COLUMN dw.td_fin_gl_account.trading_partner_compamy_code IS '贸易伙伴公司编码';
COMMENT ON COLUMN dw.td_fin_gl_account.currency IS '货币';
COMMENT ON COLUMN dw.td_fin_gl_account.balances_in_loc_currency_flag IS '仅以本位币及余额标识符';
COMMENT ON COLUMN dw.td_fin_gl_account.tax_category IS '税务类型';
COMMENT ON COLUMN dw.td_fin_gl_account.tax_code_require_flag IS '允许含/不含税过账';
COMMENT ON COLUMN dw.td_fin_gl_account.open_item_manage_flag IS '未清项目管理';
COMMENT ON COLUMN dw.td_fin_gl_account.line_item_display_flag IS '行项目是否显示标识符';
COMMENT ON COLUMN dw.td_fin_gl_account.sorting_assign_number IS '排序码';
COMMENT ON COLUMN dw.td_fin_gl_account.field_status_group_code IS '字段状态组';
COMMENT ON COLUMN dw.td_fin_gl_account.field_status_group_name IS '字段状态组名称（与T004G表关联，获取字段状态组名称）';
COMMENT ON COLUMN dw.td_fin_gl_account.account_post_auto_flag IS '科目只能自动记账标识';
COMMENT ON COLUMN dw.td_fin_gl_account.supplement_post_auto_flag IS '自动记账补充处理';
COMMENT ON COLUMN dw.td_fin_gl_account.commitment_item IS '承诺项目';
COMMENT ON COLUMN dw.td_fin_gl_account.account_create_block_flag IS '冻结建立';
COMMENT ON COLUMN dw.td_fin_gl_account.account_create_dt IS '科目信息创建日期';
COMMENT ON COLUMN dw.td_fin_gl_account.account_create_by IS '科目信息创建人';
COMMENT ON COLUMN dw.td_fin_gl_account.account_company_create_dt IS '科目信息创建日期(按公司代码)';
COMMENT ON COLUMN dw.td_fin_gl_account.account_company_create_by IS '科目信息创建人(按公司代码)';

-- Permissions

ALTER TABLE dw.td_fin_gl_account OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_gl_account TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_gl_account TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_fin_gl_account TO gr_uqry_data;
