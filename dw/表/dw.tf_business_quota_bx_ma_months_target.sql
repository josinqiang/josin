-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_ma_months_target;

CREATE TABLE dw.tf_business_quota_bx_ma_months_target (
	factory varchar(100) NULL, -- ����
	ccid_type varchar(100) NULL, -- ��������
	years varchar(10) NULL, -- ���
	quarter varchar(10) NULL, -- ����
	months varchar(10) NULL, -- �·�
	amount numeric NULL, -- ���
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
COMMENT ON TABLE dw.tf_business_quota_bx_ma_months_target IS 'BX(�ܻ�ھ�)�¶�Ŀ��ֵ';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.factory IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.ccid_type IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.years IS '���';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.quarter IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.months IS '�·�';
COMMENT ON COLUMN dw.tf_business_quota_bx_ma_months_target.amount IS '���';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_ma_months_target OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_ma_months_target TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_ma_months_target TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_ma_months_target TO gr_uqry_data;
