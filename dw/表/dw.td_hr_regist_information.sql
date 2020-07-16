-- Drop table

-- DROP TABLE dw.td_hr_regist_information;

CREATE TABLE dw.td_hr_regist_information (
	row_wid int8 NOT NULL, -- 代理键
	emplid varchar(44) NULL, -- 员工ID
	b_train_nbr varchar(40) NULL, -- 序号
	b_regist_name varchar(80) NULL, -- 落户人员姓名
	b_regist_relation_code varchar(16) NULL, -- 与本人关系编码
	b_regist_relation_name text NULL, -- 与本人关系名称
	b_regist_idnbr varchar(120) NULL, -- 身份证号
	b_regist_type_code varchar(16) NULL, -- 落户方式编码
	b_regist_type_name text NULL, -- 落户方式名称
	b_regist_place_code varchar(40) NULL, -- 户口所在地编码
	b_regist_place_name text NULL, -- 户口所在地名称
	b_regist_i_date timestamp NULL, -- 生效时间
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
COMMENT ON TABLE dw.td_hr_regist_information IS '集体户口信息公共维度表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_regist_information.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_regist_information.emplid IS '员工ID';
COMMENT ON COLUMN dw.td_hr_regist_information.b_train_nbr IS '序号';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_name IS '落户人员姓名';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_relation_code IS '与本人关系编码';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_relation_name IS '与本人关系名称';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_idnbr IS '身份证号';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_type_code IS '落户方式编码';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_type_name IS '落户方式名称';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_place_code IS '户口所在地编码';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_place_name IS '户口所在地名称';
COMMENT ON COLUMN dw.td_hr_regist_information.b_regist_i_date IS '生效时间';

-- Permissions

ALTER TABLE dw.td_hr_regist_information OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_regist_information TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_regist_information TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_regist_information TO gr_uqry_data;
