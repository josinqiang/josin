-- Drop table

-- DROP TABLE dw.td_business_quota_copq_cost_items;

CREATE TABLE dw.td_business_quota_copq_cost_items (
	row_wid int8 NOT NULL, -- 代理键
	code varchar(100) NOT NULL,
	basis_index varchar(100) NOT NULL DEFAULT NULL::character varying, -- 基础指标
	org_code varchar(1000) NULL DEFAULT NULL::character varying, -- 公司代码
	cost_item varchar(1000) NULL DEFAULT NULL::character varying, -- 成本要素
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_upd_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar,
	id int8 NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_copq_cost_items IS 'COPQ成本要素映射表';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_cost_items.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_business_quota_copq_cost_items.basis_index IS '基础指标';
COMMENT ON COLUMN dw.td_business_quota_copq_cost_items.org_code IS '公司代码';
COMMENT ON COLUMN dw.td_business_quota_copq_cost_items.cost_item IS '成本要素';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_cost_items OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_cost_items TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_cost_items TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_cost_items TO gr_uqry_data;
