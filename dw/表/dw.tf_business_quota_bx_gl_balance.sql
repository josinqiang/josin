-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_gl_balance;

CREATE TABLE dw.tf_business_quota_bx_gl_balance (
	client_code varchar(9) NOT NULL, -- 客户端编码
	fiscal_year varchar(12) NULL, -- 会计年度
	fiscal_period text NULL, -- 会计期间
	ytd_pre_year_flag text NULL, -- 结转余额标识
	object_num_table_group00 numeric(10) NULL, -- 表格组的对象号码00
	object_num_table_group01 numeric(10) NULL, -- 表格组的对象号码01
	object_num_table_group02 numeric(10) NULL, -- 表格组的对象号码02
	object_num_table_group03 numeric(10) NULL, -- 表格组的对象号码03
	object_num_table_group04 numeric(10) NULL, -- 表格组的对象号码04
	object_num_table_group05 numeric(10) NULL, -- 表格组的对象号码05
	object_num_table_group06 numeric(10) NULL, -- 表格组的对象号码06
	object_num_table_group07 numeric(10) NULL, -- 表格组的对象号码07
	object_num_table_group08 numeric(10) NULL, -- 表格组的对象号码08
	debit_credit_flag varchar(3) NULL, -- 借方/贷方标识
	period_max varchar(9) NULL, -- 最大期间
	"version" varchar(9) NULL, -- 版本
	account_number varchar(30) NULL, -- 科目编码
	cost_element varchar(30) NULL, -- 成本要素
	company_code varchar(12) NULL, -- 公司代码
	cost_center_code varchar(30) NULL, -- 成本中心编码
	profit_center_code varchar(30) NULL, -- 利润中心编码
	controlling_area varchar(12) NULL, -- 控制范围
	currency_type text NULL, -- 货币类型
	months varchar(30) NULL, -- 月份
	amount numeric NULL, -- 金额
	"timestamp" numeric(15) NULL,
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
COMMENT ON TABLE dw.tf_business_quota_bx_gl_balance IS 'Bx指标-总账余额表-计算税金及商标使用费';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.client_code IS '客户端编码';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.fiscal_year IS '会计年度';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.fiscal_period IS '会计期间';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.ytd_pre_year_flag IS '结转余额标识';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group00 IS '表格组的对象号码00';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group01 IS '表格组的对象号码01';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group02 IS '表格组的对象号码02';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group03 IS '表格组的对象号码03';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group04 IS '表格组的对象号码04';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group05 IS '表格组的对象号码05';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group06 IS '表格组的对象号码06';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group07 IS '表格组的对象号码07';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.object_num_table_group08 IS '表格组的对象号码08';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.debit_credit_flag IS '借方/贷方标识';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.period_max IS '最大期间';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance."version" IS '版本';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.account_number IS '科目编码';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.cost_element IS '成本要素';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.company_code IS '公司代码';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.cost_center_code IS '成本中心编码';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.profit_center_code IS '利润中心编码';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.controlling_area IS '控制范围';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.currency_type IS '货币类型';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.months IS '月份';
COMMENT ON COLUMN dw.tf_business_quota_bx_gl_balance.amount IS '金额';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_gl_balance OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_gl_balance TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_gl_balance TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_gl_balance TO gr_uqry_data;
