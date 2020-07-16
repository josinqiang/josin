-- Drop table

-- DROP TABLE dw.td_hr_familymembers;

CREATE TABLE dw.td_hr_familymembers (
	row_wid int8 NOT NULL, -- 代理键
	emplid varchar(44) NULL, -- 员工ID
	seqnbr numeric NULL, -- 序号
	b_relation_type varchar(16) NULL, -- 与员工关系
	b_name varchar(200) NULL, -- 姓名
	sex varchar(4) NULL, -- 性别
	b_phone varchar(80) NULL, -- 联系电话
	addresslong text NULL, -- 地址
	b_comp varchar(120) NULL, -- 所在单位
	b_major varchar(120) NULL, -- 亲属职业
	b_time timestamp NULL, -- 实际结束日期
	b_jinji varchar(4) NULL, -- 是否紧急联系人
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
COMMENT ON TABLE dw.td_hr_familymembers IS '家庭成员信息表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_familymembers.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_familymembers.emplid IS '员工ID';
COMMENT ON COLUMN dw.td_hr_familymembers.seqnbr IS '序号';
COMMENT ON COLUMN dw.td_hr_familymembers.b_relation_type IS '与员工关系';
COMMENT ON COLUMN dw.td_hr_familymembers.b_name IS '姓名';
COMMENT ON COLUMN dw.td_hr_familymembers.sex IS '性别';
COMMENT ON COLUMN dw.td_hr_familymembers.b_phone IS '联系电话';
COMMENT ON COLUMN dw.td_hr_familymembers.addresslong IS '地址';
COMMENT ON COLUMN dw.td_hr_familymembers.b_comp IS '所在单位';
COMMENT ON COLUMN dw.td_hr_familymembers.b_major IS '亲属职业';
COMMENT ON COLUMN dw.td_hr_familymembers.b_time IS '实际结束日期';
COMMENT ON COLUMN dw.td_hr_familymembers.b_jinji IS '是否紧急联系人';

-- Permissions

ALTER TABLE dw.td_hr_familymembers OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_familymembers TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_familymembers TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_familymembers TO gr_uqry_data;
