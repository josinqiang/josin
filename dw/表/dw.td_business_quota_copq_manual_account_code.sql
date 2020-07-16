-- Drop table

-- DROP TABLE dw.td_business_quota_copq_manual_account_code;

CREATE TABLE dw.td_business_quota_copq_manual_account_code (
	row_wid int8 NULL, -- 代理键
	codeid int8 NULL, -- 主键
	code varchar(100) NULL, -- 编码
	basis_index varchar(255) NULL, -- 基础指标
	company_code varchar(255) NULL, -- 公司代码
	account_code varchar(255) NULL, -- 会计科目
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_copq_manual_account_code IS 'COPQ指标:手工账科目配置表';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.codeid IS '主键';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.code IS '编码';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.basis_index IS '基础指标';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.company_code IS '公司代码';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.account_code IS '会计科目';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_manual_account_code OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_manual_account_code TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_manual_account_code TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_manual_account_code TO gr_uqry_data;
