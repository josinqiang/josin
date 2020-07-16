-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_b4_root_bj_inter_borrowing;

CREATE TABLE dw.tf_business_quota_bx_b4_root_bj_inter_borrowing (
	years varchar(255) NULL, -- ���
	months varchar(255) NULL, -- �·�
	root_bj numeric NULL, -- ��������
	inter_borrowing numeric NULL, -- �����ڲ������Ϣ
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL,
	factory varchar(100) NULL -- ����
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_bx_b4_root_bj_inter_borrowing IS 'bxָ��:��������&�����ڲ������Ϣ';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_b4_root_bj_inter_borrowing.years IS '���';
COMMENT ON COLUMN dw.tf_business_quota_bx_b4_root_bj_inter_borrowing.months IS '�·�';
COMMENT ON COLUMN dw.tf_business_quota_bx_b4_root_bj_inter_borrowing.root_bj IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_bx_b4_root_bj_inter_borrowing.inter_borrowing IS '�����ڲ������Ϣ';
COMMENT ON COLUMN dw.tf_business_quota_bx_b4_root_bj_inter_borrowing.factory IS '����';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_b4_root_bj_inter_borrowing OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_b4_root_bj_inter_borrowing TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_b4_root_bj_inter_borrowing TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_b4_root_bj_inter_borrowing TO gr_uqry_data;
