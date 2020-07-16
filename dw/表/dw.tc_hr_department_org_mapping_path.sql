-- Drop table

-- DROP TABLE dw.tc_hr_department_org_mapping_path;

CREATE TABLE dw.tc_hr_department_org_mapping_path (
	dept_code varchar(40) NULL, -- 部门编码
	dept_name varchar(120) NULL, -- 部门名称
	b_parent_deptid varchar(40) NULL, -- 父亲节点部门编码
	dept_id_path varchar(240) NULL, -- 部门父子层级关系全链路
	hier_level varchar(150) NULL, -- 当前部门在第几层级
	hier_name text NULL, -- 部门层级名称
	org_level_id text NULL, -- 组织层级编码
	org_level_name text NULL, -- 组织层级名称
	org_level_dept_name text NULL, -- 组织对应的部门名称
	org_level_dept_code text NULL, -- 组织对应的编码
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tc_hr_department_org_mapping_path IS '组织层级与部门关系映射表';

-- Column comments

COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.dept_code IS '部门编码';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.dept_name IS '部门名称';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.b_parent_deptid IS '父亲节点部门编码';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.dept_id_path IS '部门父子层级关系全链路';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.hier_level IS '当前部门在第几层级';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.hier_name IS '部门层级名称';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_id IS '组织层级编码';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_name IS '组织层级名称';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_dept_name IS '组织对应的部门名称';
COMMENT ON COLUMN dw.tc_hr_department_org_mapping_path.org_level_dept_code IS '组织对应的编码';

-- Permissions

ALTER TABLE dw.tc_hr_department_org_mapping_path OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tc_hr_department_org_mapping_path TO ur_uown_edw;
GRANT ALL ON TABLE dw.tc_hr_department_org_mapping_path TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tc_hr_department_org_mapping_path TO gr_uqry_data;
