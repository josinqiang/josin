-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_z4t_copq_out;

CREATE TABLE dw.tf_business_quota_copq_b4_z4t_copq_out (
	factory varchar(255) NULL, -- ���������ڷ���������
	tech_site varchar(255) NULL, -- ���նΣ����ڷ������նα�
	fg_code varchar(255) NULL, -- FG Code�����ڷ���BU�𼰲�Ʒ�ͺű𣨸���FG code��ӦBU����Ʒ�ͺŹ���
	pnl_qty numeric NULL, -- Panel����
	glass_qty numeric NULL, -- ��������
	data_time varchar(255) NULL, -- ����ʱ�䣬���ڷ���ʱ���
	create_time timestamp NULL, -- ץȡ����ʱ��
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
COMMENT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out IS 'COPQָ�꣺����';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.factory IS '���������ڷ���������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.tech_site IS '���նΣ����ڷ������նα�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.fg_code IS 'FG Code�����ڷ���BU�𼰲�Ʒ�ͺű𣨸���FG code��ӦBU����Ʒ�ͺŹ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.pnl_qty IS 'Panel����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.glass_qty IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.data_time IS '����ʱ�䣬���ڷ���ʱ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_out.create_time IS 'ץȡ����ʱ��';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_z4t_copq_out OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_out TO gr_uqry_data;
