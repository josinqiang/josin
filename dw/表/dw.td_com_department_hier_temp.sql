-- Drop table

-- DROP TABLE dw.td_com_department_hier_temp;

CREATE TABLE dw.td_com_department_hier_temp (
	dept_code varchar NULL,
	parent_dept_code varchar NULL,
	parent_dept_name varchar NULL,
	parent_org_level varchar NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (dept_code);

-- Permissions

ALTER TABLE dw.td_com_department_hier_temp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_department_hier_temp TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_department_hier_temp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_department_hier_temp TO gr_uqry_data;
