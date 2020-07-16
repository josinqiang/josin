-- Drop table

-- DROP TABLE dw.td_hr_org;

CREATE TABLE dw.td_hr_org (
	id serial NOT NULL,
	deptid varchar(40) NULL,
	b_parent_deptid varchar(40) NULL,
	effdt date NULL,
	eff_status varchar(4) NULL,
	dept_name varchar(120) NULL,
	dept_name_short varchar(40) NULL,
	org_level varchar(8) NULL,
	org_change_type varchar(16) NULL,
	dept_head varchar(32) NULL,
	dept_path _varchar NULL,
	level_path _varchar NULL,
	dept_name_path _varchar NULL,
	dept_depth int4 NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (id);

-- Permissions

ALTER TABLE dw.td_hr_org OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_org TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_org TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_org TO gr_uqry_data;
