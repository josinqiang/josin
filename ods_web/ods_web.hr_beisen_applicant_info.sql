-- Drop table

-- DROP TABLE ods_web.hr_beisen_applicant_info;

CREATE TABLE ods_web.hr_beisen_applicant_info (
	applicant_id varchar(32) NULL, -- 应聘者ID
	"name" varchar(32) NULL, -- 应聘者姓名
	mobile varchar(32) NULL, -- 应聘者手机号
	email varchar(128) NULL, -- 应聘者邮箱
	gender varchar(32) NULL, -- 应聘者性别
	birthday varchar(32) NULL, -- 应聘者出生日期
	educationlevel varchar(128) NULL, -- 最高学历
	r_lastschool varchar(256) NULL, -- 毕业学校
	graduationdate varchar(32) NULL, -- 毕业时间
	r_lastdiscipline varchar(256) NULL, -- 专业名称
	yearsofwork varchar(32) NULL,
	r_lastcompany varchar(256) NULL,
	certificatenumber varchar(32) NULL, -- 证件号码
	nativeplace varchar(512) NULL, -- 应聘者籍贯
	studentfrom varchar(512) NULL, -- 生源地
	r_expectworkcity varchar(512) NULL, -- 意向工作城市
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
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_web.hr_beisen_applicant_info IS '北森HR数据，应聘者详细信息';

-- Column comments

COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.applicant_id IS '应聘者ID';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info."name" IS '应聘者姓名';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.mobile IS '应聘者手机号';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.email IS '应聘者邮箱';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.gender IS '应聘者性别';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.birthday IS '应聘者出生日期';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.educationlevel IS '最高学历';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.r_lastschool IS '毕业学校';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.graduationdate IS '毕业时间';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.r_lastdiscipline IS '专业名称';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.certificatenumber IS '证件号码';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.nativeplace IS '应聘者籍贯';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.studentfrom IS '生源地';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.r_expectworkcity IS '意向工作城市';

-- Permissions

ALTER TABLE ods_web.hr_beisen_applicant_info OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.hr_beisen_applicant_info TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.hr_beisen_applicant_info TO gr_uapp_data;
GRANT SELECT ON TABLE ods_web.hr_beisen_applicant_info TO gr_uqry_data;
