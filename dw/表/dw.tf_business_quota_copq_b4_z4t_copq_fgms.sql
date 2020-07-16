-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms;

CREATE TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms (
	tech_site varchar(255) NULL, -- ���նα�
	fg_code varchar(255) NULL, -- FG Code�����ڷ���BU�𼰲�Ʒ�ͺű𣨸���FG code��ӦBU����Ʒ�ͺŹ���
	check_in_code varchar(255) NULL, -- check in
	product_grade varchar(255) NULL, -- ��Ʒ�ȼ�
	qty numeric NULL, -- ����
	data_time varchar(255) NULL, -- ����ʱ��
	create_time timestamp NULL, -- ����ץȡʱ��
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
COMMENT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms IS 'COPQָ�꣺RMA����������ڲ�RMA��';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.tech_site IS '���նα�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.fg_code IS 'FG Code�����ڷ���BU�𼰲�Ʒ�ͺű𣨸���FG code��ӦBU����Ʒ�ͺŹ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.check_in_code IS 'check in';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.product_grade IS '��Ʒ�ȼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.qty IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.data_time IS '����ʱ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_fgms.create_time IS '����ץȡʱ��';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_fgms TO gr_uqry_data;
