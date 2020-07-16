-- Drop table

-- DROP TABLE dw.td_business_quota_bx_kpi_cost_center;

CREATE TABLE dw.td_business_quota_bx_kpi_cost_center (
	row_wid int8 NULL,
	cost_center_code varchar(100) NULL DEFAULT NULL::character varying, -- 成本中心CODE
	cost_center_description varchar(1000) NULL DEFAULT NULL::character varying, -- 成本中心描述
	dept_name varchar(1000) NULL DEFAULT NULL::character varying, -- 部门
	dept_common_name varchar(1000) NULL DEFAULT NULL::character varying, -- 部门常用名称
	factory varchar(1000) NULL DEFAULT NULL::character varying, -- 工厂
	bx_type varchar(1000) NULL DEFAULT NULL::character varying, -- 分BX
	tech_bu varchar(1000) NULL DEFAULT NULL::character varying, -- 中心/现地
	expire_date varchar(100) NULL DEFAULT NULL::character varying, -- 失效日期
	kpi_flag varchar(100) NULL DEFAULT NULL::character varying, -- KPI标识
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del varchar(10) NULL DEFAULT NULL::character varying,
	belong varchar(255) NULL -- 归属
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_bx_kpi_cost_center IS 'BX指标：KPI成本中心映射表';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.cost_center_code IS '成本中心CODE';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.cost_center_description IS '成本中心描述';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.dept_name IS '部门';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.dept_common_name IS '部门常用名称';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.factory IS '工厂';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.bx_type IS '分BX';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.tech_bu IS '中心/现地';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.expire_date IS '失效日期';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.kpi_flag IS 'KPI标识';
COMMENT ON COLUMN dw.td_business_quota_bx_kpi_cost_center.belong IS '归属';

-- Permissions

ALTER TABLE dw.td_business_quota_bx_kpi_cost_center OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_kpi_cost_center TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_bx_kpi_cost_center TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_bx_kpi_cost_center TO gr_uqry_data;
