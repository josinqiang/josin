-- Drop table

-- DROP TABLE dw.tf_sd_contract_bcp;

CREATE TABLE dw.tf_sd_contract_bcp (
	contract_id varchar(150) NULL, -- 主键
	contract_num varchar(300) NULL, -- 合同号
	customer_wid int8 NULL, -- 客户编码代理键
	internal_company_code varchar(150) NULL, -- 内部公司
	folder_unsign varchar(6000) NULL, -- 未签文件路径
	files_unsign varchar(6000) NULL, -- 未签文件名
	folder_single varchar(6000) NULL, -- 单签文件路径
	files_single varchar(6000) NULL, -- 单签文件名
	folder_double varchar(6000) NULL, -- 双签文件路径
	files_double varchar(6000) NULL, -- 双签文件名
	executive_no varchar(150) NULL, -- 业务担当工号
	executive_name varchar(150) NULL, -- 业务担当名称
	c_stamped numeric(3) NULL, -- 客户是否盖章
	c_stamped_dt_wid int8 NULL, -- 内部盖章时间代理键
	s_stamped numeric(3) NULL, -- 内部是否盖章
	s_stamped_dt_wid int8 NULL, -- 客户盖章时间代理键
	contract_status_code numeric(10) NULL, -- 状态编码
	contract_status_name text NULL, -- 状态名称
	create_dt timestamp NULL, -- 创建时间
	withdraw_dt timestamp NULL, -- 撤回时间
	stamped_code varchar(150) NULL, -- 盖章code(uuid)
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
COMMENT ON TABLE dw.tf_sd_contract_bcp IS '客户合同';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_id IS '主键';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_num IS '合同号';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.customer_wid IS '客户编码代理键';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.internal_company_code IS '内部公司';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.folder_unsign IS '未签文件路径';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.files_unsign IS '未签文件名';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.folder_single IS '单签文件路径';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.files_single IS '单签文件名';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.folder_double IS '双签文件路径';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.files_double IS '双签文件名';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.executive_no IS '业务担当工号';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.executive_name IS '业务担当名称';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.c_stamped IS '客户是否盖章';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.c_stamped_dt_wid IS '内部盖章时间代理键';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.s_stamped IS '内部是否盖章';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.s_stamped_dt_wid IS '客户盖章时间代理键';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_status_code IS '状态编码';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_status_name IS '状态名称';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.create_dt IS '创建时间';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.withdraw_dt IS '撤回时间';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.stamped_code IS '盖章code(uuid)';

-- Permissions

ALTER TABLE dw.tf_sd_contract_bcp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_contract_bcp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_contract_bcp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_contract_bcp TO gr_uqry_data;
