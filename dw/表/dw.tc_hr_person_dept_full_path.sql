-- Drop table

-- DROP TABLE dw.tc_hr_person_dept_full_path;

CREATE TABLE dw.tc_hr_person_dept_full_path (
	emplid varchar(200) NOT NULL, -- 工号
	"name" varchar(200) NULL, -- 姓名
	deptid varchar(200) NULL, -- 部门编号
	dept_name varchar(200) NULL, -- 部门名称
	b_parent_deptid varchar(200) NULL, -- 上级部门
	dept_id_path varchar(200) NULL, -- 组织全路径
	dept_code_lv10 varchar(200) NULL, -- 一级组织编号
	dept_name_lv10 varchar(200) NULL, -- 一级组织名称
	dept_code_lv20 varchar(200) NULL, -- 二级组织编号
	dept_name_lv20 varchar(200) NULL, -- 二级组织名称
	dept_code_lv30 varchar(200) NULL, -- 三级组织编号
	dept_name_lv30 varchar(200) NULL, -- 三级组织名称
	dept_code_lv40 varchar(200) NULL, -- 四级组织编号
	dept_name_lv40 varchar(200) NULL, -- 四级组织名称
	dept_code_lv50 varchar(200) NULL, -- 五级组织编号
	dept_name_lv50 varchar(200) NULL, -- 五级组织名称
	dept_code_lv60 varchar(200) NULL, -- 六级组织编号
	dept_name_lv60 varchar(200) NULL, -- 六级组织名称
	dept_code_lv70 varchar(200) NULL, -- 七级组织编号
	dept_name_lv70 varchar(200) NULL, -- 七级组织名称
	dept_code_lv80 varchar(200) NULL, -- 八级组织编号
	dept_name_lv80 varchar(200) NULL, -- 八级组织名称
	dept_code_lv90 varchar(200) NULL, -- 九级组织编号
	dept_name_lv90 varchar(200) NULL, -- 九级组织名称
	dept_code_lv95 varchar(200) NULL, -- 十级组织编号
	dept_name_lv95 varchar(200) NULL, -- 十级组织名称
	dept_code_lv98 varchar(200) NULL, -- 十一级组织名称
	dept_name_lv98 varchar(200) NULL, -- 十一级组织名称
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
COMMENT ON TABLE dw.tc_hr_person_dept_full_path IS '人员组织全路径';

-- Column comments

COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.emplid IS '工号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path."name" IS '姓名';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.deptid IS '部门编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name IS '部门名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.b_parent_deptid IS '上级部门';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_id_path IS '组织全路径';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv10 IS '一级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv10 IS '一级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv20 IS '二级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv20 IS '二级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv30 IS '三级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv30 IS '三级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv40 IS '四级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv40 IS '四级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv50 IS '五级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv50 IS '五级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv60 IS '六级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv60 IS '六级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv70 IS '七级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv70 IS '七级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv80 IS '八级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv80 IS '八级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv90 IS '九级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv90 IS '九级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv95 IS '十级组织编号';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv95 IS '十级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_code_lv98 IS '十一级组织名称';
COMMENT ON COLUMN dw.tc_hr_person_dept_full_path.dept_name_lv98 IS '十一级组织名称';

-- Permissions

ALTER TABLE dw.tc_hr_person_dept_full_path OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tc_hr_person_dept_full_path TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tc_hr_person_dept_full_path TO gr_uqry_data;
GRANT ALL ON TABLE dw.tc_hr_person_dept_full_path TO gr_uapp_data;
