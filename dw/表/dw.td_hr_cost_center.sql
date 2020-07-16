-- Drop table

-- DROP TABLE dw.td_hr_cost_center;

CREATE TABLE dw.td_hr_cost_center (
	row_wid int8 NULL,
	setid varchar(20) NOT NULL DEFAULT NULL::character varying, -- 集合 ID
	b_cost_center_id varchar(40) NULL, -- 成本中心ID
	effdt timestamp NULL, -- 生效日期
	eff_status_code varchar(4) NULL, -- 生效日期状态名称
	eff_status_name varchar(40) NULL,
	b_cost_center varchar(200) NULL, -- 成本中心名称
	descrshort varchar(40) NULL, -- 简短描述
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
COMMENT ON TABLE dw.td_hr_cost_center IS '成本中心';

-- Column comments

COMMENT ON COLUMN dw.td_hr_cost_center.setid IS '集合 ID';
COMMENT ON COLUMN dw.td_hr_cost_center.b_cost_center_id IS '成本中心ID';
COMMENT ON COLUMN dw.td_hr_cost_center.effdt IS '生效日期';
COMMENT ON COLUMN dw.td_hr_cost_center.eff_status_code IS '生效日期状态名称';
COMMENT ON COLUMN dw.td_hr_cost_center.b_cost_center IS '成本中心名称';
COMMENT ON COLUMN dw.td_hr_cost_center.descrshort IS '简短描述';

-- Permissions

ALTER TABLE dw.td_hr_cost_center OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_cost_center TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_cost_center TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_cost_center TO gr_uqry_data;
