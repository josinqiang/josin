-- Drop table

-- DROP TABLE dw.td_hr_socialtitle;

CREATE TABLE dw.td_hr_socialtitle (
	row_wid int8 NOT NULL, -- 代理键
	emplid varchar(44) NULL, -- 员工ID
	b_train_nbr varchar(40) NULL, -- 序号
	b_socialtitle_code varchar(16) NULL, -- 社会职称编码
	b_socialtitle_name text NULL, -- 社会职称名称
	b_social_type varchar(8) NULL, -- 社会职称类别
	b_qualifiedway_code varchar(16) NULL, -- 取得资格途径编码
	b_qualifiedway_name text NULL, -- 取得资格途径名称
	b_professionlevels_code varchar(16) NULL, -- 专业技术等级编码
	b_professionlevels_name text NULL, -- 专业技术等级名称
	b_qua_examination varchar(120) NULL, -- 资格审批单位
	b_get_qua_date timestamp NULL, -- 取得资格时间
	b_appoint_date timestamp NULL, -- 聘任起始时间
	b_appoint_edate timestamp NULL, -- 聘任结束时间
	b_company varchar(120) NULL, -- 聘任单位
	b_status_code varchar(4) NULL, -- 聘任状态编码
	b_status_name text NULL, -- 聘任状态编码名称
	b_national_e_title varchar(120) NULL, -- 国家聘用职称
	b_specialskills varchar(120) NULL, -- 有何专长
	b_highest_code varchar(4) NULL, -- 是否最高等级编码
	b_highest_name text NULL, -- 是否最高等级
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
COMMENT ON TABLE dw.td_hr_socialtitle IS '社会职称信息公共维度表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_socialtitle.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_socialtitle.emplid IS '员工ID';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_train_nbr IS '序号';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_socialtitle_code IS '社会职称编码';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_socialtitle_name IS '社会职称名称';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_social_type IS '社会职称类别';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_qualifiedway_code IS '取得资格途径编码';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_qualifiedway_name IS '取得资格途径名称';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_professionlevels_code IS '专业技术等级编码';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_professionlevels_name IS '专业技术等级名称';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_qua_examination IS '资格审批单位';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_get_qua_date IS '取得资格时间';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_appoint_date IS '聘任起始时间';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_appoint_edate IS '聘任结束时间';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_company IS '聘任单位';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_status_code IS '聘任状态编码';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_status_name IS '聘任状态编码名称';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_national_e_title IS '国家聘用职称';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_specialskills IS '有何专长';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_highest_code IS '是否最高等级编码';
COMMENT ON COLUMN dw.td_hr_socialtitle.b_highest_name IS '是否最高等级';

-- Permissions

ALTER TABLE dw.td_hr_socialtitle OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_socialtitle TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_socialtitle TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_socialtitle TO gr_uqry_data;
