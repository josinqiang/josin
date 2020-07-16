-- Drop table

-- DROP TABLE dw.td_com_company;

CREATE TABLE dw.td_com_company (
	row_wid int8 NULL, -- 代理键
	client_code varchar(9) NULL, -- 客户端
	company_code varchar(12) NULL, -- 公司编码
	company_name varchar(75) NULL, -- 公司名称
	city varchar(75) NULL, -- 城市
	country varchar(9) NULL, -- 国家
	currency varchar(15) NULL, -- 币种
	language_type varchar(3) NULL, -- 语言
	chart_accounts varchar(12) NULL, -- 帐目表
	max_change_rate_deviation_percent varchar(6) NULL, -- 最大汇率偏差幅度百分比
	fiscal_year_variant varchar(6) NULL, -- 会计年度变式
	allocation_flag varchar(3) NULL, -- 分配标识符
	company_long_code varchar(18) NULL, -- 公司
	address_code varchar(30) NULL, -- 地址编码
	vat_registration_num varchar(60) NULL, -- 税务登记号
	fin_manage_area varchar(12) NULL, -- 财务管理范围
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
COMMENT ON TABLE dw.td_com_company IS '公司主数据';

-- Column comments

COMMENT ON COLUMN dw.td_com_company.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_com_company.client_code IS '客户端';
COMMENT ON COLUMN dw.td_com_company.company_code IS '公司编码';
COMMENT ON COLUMN dw.td_com_company.company_name IS '公司名称';
COMMENT ON COLUMN dw.td_com_company.city IS '城市';
COMMENT ON COLUMN dw.td_com_company.country IS '国家';
COMMENT ON COLUMN dw.td_com_company.currency IS '币种';
COMMENT ON COLUMN dw.td_com_company.language_type IS '语言';
COMMENT ON COLUMN dw.td_com_company.chart_accounts IS '帐目表';
COMMENT ON COLUMN dw.td_com_company.max_change_rate_deviation_percent IS '最大汇率偏差幅度百分比';
COMMENT ON COLUMN dw.td_com_company.fiscal_year_variant IS '会计年度变式';
COMMENT ON COLUMN dw.td_com_company.allocation_flag IS '分配标识符';
COMMENT ON COLUMN dw.td_com_company.company_long_code IS '公司';
COMMENT ON COLUMN dw.td_com_company.address_code IS '地址编码';
COMMENT ON COLUMN dw.td_com_company.vat_registration_num IS '税务登记号';
COMMENT ON COLUMN dw.td_com_company.fin_manage_area IS '财务管理范围';

-- Permissions

ALTER TABLE dw.td_com_company OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_company TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_company TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_company TO gr_uqry_data;
