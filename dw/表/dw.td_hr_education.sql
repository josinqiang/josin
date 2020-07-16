-- Drop table

-- DROP TABLE dw.td_hr_education;

CREATE TABLE dw.td_hr_education (
	row_wid int8 NULL,
	emplid varchar(44) NULL,
	b_train_nbr varchar(40) NULL, -- 序号
	b_b_date timestamp NULL, -- 开始日期
	b_e_date timestamp NULL, -- 结束日期
	b_sch_country varchar(16) NULL, -- 学校所在国家
	school_code varchar(40) NULL, -- 学校代码
	school varchar(200) NULL, -- 学校名称
	major varchar(200) NULL, -- Major
	b_doctor_bg varchar(4) NULL, -- 是否有医疗背景
	b_eud_type_code varchar(8) NULL, -- 教育形式编码
	b_eud_type_name varchar(40) NULL, -- 教育形式名称
	b_abroad_yn varchar(4) NULL, -- 是否海外留学归国人员
	b_abroad_certed_yn varchar(4) NULL, -- 是否取得教育部留学服务中心学历认证
	b_sch_diploma_code varchar(8) NULL, -- 学历编码
	b_sch_diploma_name varchar(40) NULL, -- 学历名称
	b_dip_nbr varchar(120) NULL, -- 学历证书编号
	b_dip_h_yn varchar(4) NULL, -- 是否最高学历
	b_dip_f_yn varchar(4) NULL, -- 是否第一学历
	b_check_yn varchar(4) NULL, -- 是否验证
	highest_educ_lvl varchar(8) NULL, -- 最高教育程度
	b_degree_highest_code varchar(4) NULL, -- 最高学位编码
	b_degree_highest_name varchar(40) NULL, -- 最高学位名称
	b_deg_nbr varchar(120) NULL, -- 学位证书编号
	b_deg_date timestamp NULL, -- 学位授权时间
	b_deg_unit varchar(120) NULL, -- 学位授权机构
	b_deg_conutry varchar(16) NULL, -- 学位授权国家
	b_graduate_code varchar(4) NULL, -- 毕业情况编码
	b_graduate_name varchar(40) NULL, -- 毕业情况名称
	b_major_sec varchar(120) NULL, -- 第二专业
	b_2_degree_code varchar(4) NULL, -- 学位编码
	b_2_degree_name varchar(40) NULL, -- 学位名称
	b_b2_date timestamp NULL, -- 开始日期
	b_e2_date timestamp NULL, -- 结束日期
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
COMMENT ON TABLE dw.td_hr_education IS '教育经历';

-- Column comments

COMMENT ON COLUMN dw.td_hr_education.b_train_nbr IS '序号';
COMMENT ON COLUMN dw.td_hr_education.b_b_date IS '开始日期';
COMMENT ON COLUMN dw.td_hr_education.b_e_date IS '结束日期';
COMMENT ON COLUMN dw.td_hr_education.b_sch_country IS '学校所在国家';
COMMENT ON COLUMN dw.td_hr_education.school_code IS '学校代码';
COMMENT ON COLUMN dw.td_hr_education.school IS '学校名称';
COMMENT ON COLUMN dw.td_hr_education.major IS 'Major';
COMMENT ON COLUMN dw.td_hr_education.b_doctor_bg IS '是否有医疗背景';
COMMENT ON COLUMN dw.td_hr_education.b_eud_type_code IS '教育形式编码';
COMMENT ON COLUMN dw.td_hr_education.b_eud_type_name IS '教育形式名称';
COMMENT ON COLUMN dw.td_hr_education.b_abroad_yn IS '是否海外留学归国人员';
COMMENT ON COLUMN dw.td_hr_education.b_abroad_certed_yn IS '是否取得教育部留学服务中心学历认证';
COMMENT ON COLUMN dw.td_hr_education.b_sch_diploma_code IS '学历编码';
COMMENT ON COLUMN dw.td_hr_education.b_sch_diploma_name IS '学历名称';
COMMENT ON COLUMN dw.td_hr_education.b_dip_nbr IS '学历证书编号';
COMMENT ON COLUMN dw.td_hr_education.b_dip_h_yn IS '是否最高学历';
COMMENT ON COLUMN dw.td_hr_education.b_dip_f_yn IS '是否第一学历';
COMMENT ON COLUMN dw.td_hr_education.b_check_yn IS '是否验证';
COMMENT ON COLUMN dw.td_hr_education.highest_educ_lvl IS '最高教育程度';
COMMENT ON COLUMN dw.td_hr_education.b_degree_highest_code IS '最高学位编码';
COMMENT ON COLUMN dw.td_hr_education.b_degree_highest_name IS '最高学位名称';
COMMENT ON COLUMN dw.td_hr_education.b_deg_nbr IS '学位证书编号';
COMMENT ON COLUMN dw.td_hr_education.b_deg_date IS '学位授权时间';
COMMENT ON COLUMN dw.td_hr_education.b_deg_unit IS '学位授权机构';
COMMENT ON COLUMN dw.td_hr_education.b_deg_conutry IS '学位授权国家';
COMMENT ON COLUMN dw.td_hr_education.b_graduate_code IS '毕业情况编码';
COMMENT ON COLUMN dw.td_hr_education.b_graduate_name IS '毕业情况名称';
COMMENT ON COLUMN dw.td_hr_education.b_major_sec IS '第二专业';
COMMENT ON COLUMN dw.td_hr_education.b_2_degree_code IS '学位编码';
COMMENT ON COLUMN dw.td_hr_education.b_2_degree_name IS '学位名称';
COMMENT ON COLUMN dw.td_hr_education.b_b2_date IS '开始日期';
COMMENT ON COLUMN dw.td_hr_education.b_e2_date IS '结束日期';

-- Permissions

ALTER TABLE dw.td_hr_education OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_education TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_education TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_education TO gr_uqry_data;
