-- Drop table

-- DROP TABLE dw.td_business_quota_copq_manual_account_code;

CREATE TABLE dw.td_business_quota_copq_manual_account_code (
	row_wid int8 NULL, -- �����
	codeid int8 NULL, -- ����
	code varchar(100) NULL, -- ����
	basis_index varchar(255) NULL, -- ����ָ��
	company_code varchar(255) NULL, -- ��˾����
	account_code varchar(255) NULL, -- ��ƿ�Ŀ
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
COMMENT ON TABLE dw.td_business_quota_copq_manual_account_code IS 'COPQָ��:�ֹ��˿�Ŀ���ñ�';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.row_wid IS '�����';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.codeid IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.code IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.basis_index IS '����ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.company_code IS '��˾����';
COMMENT ON COLUMN dw.td_business_quota_copq_manual_account_code.account_code IS '��ƿ�Ŀ';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_manual_account_code OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_manual_account_code TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_manual_account_code TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_manual_account_code TO gr_uqry_data;
