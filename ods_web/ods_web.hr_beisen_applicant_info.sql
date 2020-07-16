-- Drop table

-- DROP TABLE ods_web.hr_beisen_applicant_info;

CREATE TABLE ods_web.hr_beisen_applicant_info (
	applicant_id varchar(32) NULL, -- ӦƸ��ID
	"name" varchar(32) NULL, -- ӦƸ������
	mobile varchar(32) NULL, -- ӦƸ���ֻ���
	email varchar(128) NULL, -- ӦƸ������
	gender varchar(32) NULL, -- ӦƸ���Ա�
	birthday varchar(32) NULL, -- ӦƸ�߳�������
	educationlevel varchar(128) NULL, -- ���ѧ��
	r_lastschool varchar(256) NULL, -- ��ҵѧУ
	graduationdate varchar(32) NULL, -- ��ҵʱ��
	r_lastdiscipline varchar(256) NULL, -- רҵ����
	yearsofwork varchar(32) NULL,
	r_lastcompany varchar(256) NULL,
	certificatenumber varchar(32) NULL, -- ֤������
	nativeplace varchar(512) NULL, -- ӦƸ�߼���
	studentfrom varchar(512) NULL, -- ��Դ��
	r_expectworkcity varchar(512) NULL, -- ����������
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
COMMENT ON TABLE ods_web.hr_beisen_applicant_info IS '��ɭHR���ݣ�ӦƸ����ϸ��Ϣ';

-- Column comments

COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.applicant_id IS 'ӦƸ��ID';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info."name" IS 'ӦƸ������';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.mobile IS 'ӦƸ���ֻ���';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.email IS 'ӦƸ������';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.gender IS 'ӦƸ���Ա�';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.birthday IS 'ӦƸ�߳�������';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.educationlevel IS '���ѧ��';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.r_lastschool IS '��ҵѧУ';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.graduationdate IS '��ҵʱ��';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.r_lastdiscipline IS 'רҵ����';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.certificatenumber IS '֤������';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.nativeplace IS 'ӦƸ�߼���';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.studentfrom IS '��Դ��';
COMMENT ON COLUMN ods_web.hr_beisen_applicant_info.r_expectworkcity IS '����������';

-- Permissions

ALTER TABLE ods_web.hr_beisen_applicant_info OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.hr_beisen_applicant_info TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.hr_beisen_applicant_info TO gr_uapp_data;
GRANT SELECT ON TABLE ods_web.hr_beisen_applicant_info TO gr_uqry_data;
