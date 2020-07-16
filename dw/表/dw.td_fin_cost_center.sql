-- Drop table

-- DROP TABLE dw.td_fin_cost_center;

CREATE TABLE dw.td_fin_cost_center (
	row_wid int8 NULL, -- 代理键
	client_code varchar(9) NULL, -- 客户端代码
	company_code varchar(12) NULL, -- 公司代码
	controlling_area varchar(12) NULL, -- 控制范围
	cost_center_code varchar(30) NULL, -- 成本中心
	cost_center_name varchar(60) NULL, -- 名称
	cost_center_description varchar(120) NULL, -- 描述
	valid_from_date varchar(24) NULL, -- 有效起始日
	valid_to_date varchar(24) NULL, -- 有效截至日
	person_responsible varchar(60) NULL, -- 负责人
	department_name varchar(36) NULL, -- 部门名称
	cost_center_category_code varchar(3) NULL, -- 成本中心类型编码
	cost_center_category_name varchar(60) NULL, -- 成本中心类型名称
	cost_center_group_code varchar(36) NULL, -- 层次结构范围
	cost_center_group_name varchar(120) NULL, -- 层次结构名
	function_area_code varchar(48) NULL, -- 功能范围编码
	function_area_name varchar(75) NULL, -- 功能范围名称
	currency varchar(15) NULL, -- 货币
	profit_center_code varchar(30) NULL, -- 利润中心编码
	profit_center_name varchar(60) NULL, -- 利润中心名称
	create_by varchar(36) NULL, -- 创建者
	create_dt varchar(24) NULL, -- 创建日期
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
COMMENT ON TABLE dw.td_fin_cost_center IS '成本中心维度表';

-- Column comments

COMMENT ON COLUMN dw.td_fin_cost_center.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_fin_cost_center.client_code IS '客户端代码';
COMMENT ON COLUMN dw.td_fin_cost_center.company_code IS '公司代码';
COMMENT ON COLUMN dw.td_fin_cost_center.controlling_area IS '控制范围';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_code IS '成本中心';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_name IS '名称';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_description IS '描述';
COMMENT ON COLUMN dw.td_fin_cost_center.valid_from_date IS '有效起始日';
COMMENT ON COLUMN dw.td_fin_cost_center.valid_to_date IS '有效截至日';
COMMENT ON COLUMN dw.td_fin_cost_center.person_responsible IS '负责人';
COMMENT ON COLUMN dw.td_fin_cost_center.department_name IS '部门名称';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_category_code IS '成本中心类型编码';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_category_name IS '成本中心类型名称';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_group_code IS '层次结构范围';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_group_name IS '层次结构名';
COMMENT ON COLUMN dw.td_fin_cost_center.function_area_code IS '功能范围编码';
COMMENT ON COLUMN dw.td_fin_cost_center.function_area_name IS '功能范围名称';
COMMENT ON COLUMN dw.td_fin_cost_center.currency IS '货币';
COMMENT ON COLUMN dw.td_fin_cost_center.profit_center_code IS '利润中心编码';
COMMENT ON COLUMN dw.td_fin_cost_center.profit_center_name IS '利润中心名称';
COMMENT ON COLUMN dw.td_fin_cost_center.create_by IS '创建者';
COMMENT ON COLUMN dw.td_fin_cost_center.create_dt IS '创建日期';

-- Permissions

ALTER TABLE dw.td_fin_cost_center OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_cost_center TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_cost_center TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_fin_cost_center TO gr_uqry_data;
