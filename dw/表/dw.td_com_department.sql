-- Drop table

-- DROP TABLE dw.td_com_department;

CREATE TABLE dw.td_com_department (
	row_wid int8 NOT NULL, -- 代理键
	setid varchar(20) NULL, -- 集合id
	effdt timestamp NULL, -- 生效日期
	eff_status varchar(4) NULL, -- 生效日期状态
	dept_code varchar(40) NULL, -- 部门编码
	dept_name varchar(120) NULL, -- 部门名称
	dept_short_name varchar(40) NULL, -- 部门简称
	b_issued varchar(120) NULL, -- 发文号
	b_org_level varchar(8) NULL, -- 组织层级
	b_dept_head varchar(32) NULL, -- 部门负责人岗位
	b_charge_leader varchar(32) NULL, -- 分管领导岗位
	b_dept_deputy varchar(32) NULL, -- 部门副职岗位
	b_parent_deptid varchar(40) NULL, -- 上级部门
	b_par_dept_deputy varchar(32) NULL, -- 上级部门岗位
	b_matrix_dept varchar(40) NULL, -- 矩阵式汇报部门
	b_matr_dept_deputy varchar(32) NULL, -- 矩阵式汇报部门岗位
	b_org_invented varchar(4) NULL, -- 是否虚拟组织
	b_org_core varchar(4) NULL, -- 是否中心组织
	b_org_change_type varchar(16) NULL, -- 组织变动类型
	b_move_reason varchar(80) NULL, -- 移动原因
	hier_level varchar(150) NULL, -- 部门所在层级
	dept_id_path varchar(240) NULL, -- 部门编码层级全链路
	hier1_code varchar(255) NULL, -- 1级部门编码
	hier1_name varchar(255) NULL, -- 1级部门名称
	hier1_short_name varchar(255) NULL, -- 1级部门简称
	hier2_code varchar(255) NULL, -- 2级部门编码
	hier2_name varchar(255) NULL, -- 2级部门名称
	hier2_short_name varchar(255) NULL, -- 2级部门简称
	hier3_code varchar(255) NULL, -- 3级部门编码
	hier3_name varchar(255) NULL, -- 3级部门名称
	hier3_short_name varchar(255) NULL, -- 3级部门简称
	hier4_code varchar(255) NULL, -- 4级部门编码
	hier4_name varchar(255) NULL, -- 4级部门名称
	hier4_short_name varchar(255) NULL, -- 4级部门简称
	hier5_code varchar(255) NULL, -- 5级部门编码
	hier5_name varchar(255) NULL, -- 5级部门名称
	hier5_short_name varchar(255) NULL, -- 5级部门简称
	hier6_code varchar(255) NULL, -- 6级部门编码
	hier6_name varchar(255) NULL, -- 6级部门名称
	hier6_short_name varchar(255) NULL, -- 6级部门简称
	hier7_code varchar(255) NULL, -- 7级部门编码
	hier7_name varchar(255) NULL, -- 7级部门名称
	hier7_short_name varchar(255) NULL, -- 7级部门简称
	hier8_code varchar(255) NULL, -- 8级部门编码
	hier8_name varchar(255) NULL, -- 8级部门名称
	hier8_short_name varchar(255) NULL, -- 8级部门简称
	hier9_code varchar(255) NULL, -- 9级部门编码
	hier9_name varchar(255) NULL, -- 9级部门名称
	hier9_short_name varchar(255) NULL, -- 9级部门简称
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
COMMENT ON TABLE dw.td_com_department IS '组织公共维度信息';

-- Column comments

COMMENT ON COLUMN dw.td_com_department.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_com_department.setid IS '集合id';
COMMENT ON COLUMN dw.td_com_department.effdt IS '生效日期';
COMMENT ON COLUMN dw.td_com_department.eff_status IS '生效日期状态';
COMMENT ON COLUMN dw.td_com_department.dept_code IS '部门编码';
COMMENT ON COLUMN dw.td_com_department.dept_name IS '部门名称';
COMMENT ON COLUMN dw.td_com_department.dept_short_name IS '部门简称';
COMMENT ON COLUMN dw.td_com_department.b_issued IS '发文号';
COMMENT ON COLUMN dw.td_com_department.b_org_level IS '组织层级';
COMMENT ON COLUMN dw.td_com_department.b_dept_head IS '部门负责人岗位';
COMMENT ON COLUMN dw.td_com_department.b_charge_leader IS '分管领导岗位';
COMMENT ON COLUMN dw.td_com_department.b_dept_deputy IS '部门副职岗位';
COMMENT ON COLUMN dw.td_com_department.b_parent_deptid IS '上级部门';
COMMENT ON COLUMN dw.td_com_department.b_par_dept_deputy IS '上级部门岗位';
COMMENT ON COLUMN dw.td_com_department.b_matrix_dept IS '矩阵式汇报部门';
COMMENT ON COLUMN dw.td_com_department.b_matr_dept_deputy IS '矩阵式汇报部门岗位';
COMMENT ON COLUMN dw.td_com_department.b_org_invented IS '是否虚拟组织';
COMMENT ON COLUMN dw.td_com_department.b_org_core IS '是否中心组织';
COMMENT ON COLUMN dw.td_com_department.b_org_change_type IS '组织变动类型';
COMMENT ON COLUMN dw.td_com_department.b_move_reason IS '移动原因';
COMMENT ON COLUMN dw.td_com_department.hier_level IS '部门所在层级';
COMMENT ON COLUMN dw.td_com_department.dept_id_path IS '部门编码层级全链路';
COMMENT ON COLUMN dw.td_com_department.hier1_code IS '1级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier1_name IS '1级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier1_short_name IS '1级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier2_code IS '2级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier2_name IS '2级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier2_short_name IS '2级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier3_code IS '3级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier3_name IS '3级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier3_short_name IS '3级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier4_code IS '4级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier4_name IS '4级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier4_short_name IS '4级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier5_code IS '5级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier5_name IS '5级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier5_short_name IS '5级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier6_code IS '6级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier6_name IS '6级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier6_short_name IS '6级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier7_code IS '7级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier7_name IS '7级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier7_short_name IS '7级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier8_code IS '8级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier8_name IS '8级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier8_short_name IS '8级部门简称';
COMMENT ON COLUMN dw.td_com_department.hier9_code IS '9级部门编码';
COMMENT ON COLUMN dw.td_com_department.hier9_name IS '9级部门名称';
COMMENT ON COLUMN dw.td_com_department.hier9_short_name IS '9级部门简称';

-- Permissions

ALTER TABLE dw.td_com_department OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_department TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_department TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_department TO gr_uqry_data;
