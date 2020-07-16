-- Drop table

-- DROP TABLE dw.td_hr_lice_cert;

CREATE TABLE dw.td_hr_lice_cert (
	row_wid int8 NOT NULL, -- 代理键
	emplid varchar(44) NULL, -- 员工ID
	seqnbr int8 NULL, -- 序号
	b_lice_cert_type_code varchar(16) NULL, -- 执照证书类型编码
	b_lice_cert_type_name text NULL, -- 执照证书类型名称
	b_lice_cert_code varchar(16) NULL, -- 执照证书名称编码
	b_lice_cert_name text NULL, -- 执照证书名称
	b_cert_nbr varchar(120) NULL, -- 证书编号
	b_obtain_dt timestamp NULL, -- 获取日期
	b_lice_cert_effdt timestamp NULL, -- 有效截止日期
	b_cert_authority varchar(160) NULL, -- 证书颁发机构
	b_cert_verifice_code varchar(4) NULL, -- 是否验证编码
	b_cert_verifice_name text NULL, -- 是否验证名称
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
COMMENT ON TABLE dw.td_hr_lice_cert IS '执照与证书信息公共维度表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_lice_cert.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_lice_cert.emplid IS '员工ID';
COMMENT ON COLUMN dw.td_hr_lice_cert.seqnbr IS '序号';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_type_code IS '执照证书类型编码';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_type_name IS '执照证书类型名称';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_code IS '执照证书名称编码';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_name IS '执照证书名称';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_nbr IS '证书编号';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_obtain_dt IS '获取日期';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_lice_cert_effdt IS '有效截止日期';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_authority IS '证书颁发机构';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_verifice_code IS '是否验证编码';
COMMENT ON COLUMN dw.td_hr_lice_cert.b_cert_verifice_name IS '是否验证名称';

-- Permissions

ALTER TABLE dw.td_hr_lice_cert OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_lice_cert TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_lice_cert TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_lice_cert TO gr_uqry_data;
