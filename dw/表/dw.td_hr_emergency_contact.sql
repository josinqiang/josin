-- Drop table

-- DROP TABLE dw.td_hr_emergency_contact;

CREATE TABLE dw.td_hr_emergency_contact (
	row_wid int8 NULL, -- 代理键
	emplid varchar(44) NULL, -- 员工ID
	seqnbr numeric NULL, -- 序号
	contact_name varchar(200) NULL, -- 联系人姓名
	b_relation_type_code varchar(16) NULL, -- 与员工关系编码
	b_relation_type_name varchar(60) NULL, -- 与员工关系名称
	b_phone varchar(80) NULL, -- 联系电话
	b_addresslong varchar(320) NULL, -- 地址
	primary_contact varchar(40) NULL, -- 主要联系人
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
COMMENT ON TABLE dw.td_hr_emergency_contact IS '紧急联系人信息';

-- Column comments

COMMENT ON COLUMN dw.td_hr_emergency_contact.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_emergency_contact.emplid IS '员工ID';
COMMENT ON COLUMN dw.td_hr_emergency_contact.seqnbr IS '序号';
COMMENT ON COLUMN dw.td_hr_emergency_contact.contact_name IS '联系人姓名';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_relation_type_code IS '与员工关系编码';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_relation_type_name IS '与员工关系名称';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_phone IS '联系电话';
COMMENT ON COLUMN dw.td_hr_emergency_contact.b_addresslong IS '地址';
COMMENT ON COLUMN dw.td_hr_emergency_contact.primary_contact IS '主要联系人';

-- Permissions

ALTER TABLE dw.td_hr_emergency_contact OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_emergency_contact TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_emergency_contact TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_emergency_contact TO gr_uqry_data;
