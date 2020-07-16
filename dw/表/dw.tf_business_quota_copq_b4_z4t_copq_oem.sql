-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem;

CREATE TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem (
	data_time varchar(255) NULL, -- ����ʱ�䣬���ڷ���ʱ���
	factory varchar(255) NULL, -- �����������ڷ�����������
	fg_code varchar(255) NULL, -- FG Code�����ڷ���BU�𼰲�Ʒ�ͺű𣨸���FG code��ӦBU����Ʒ�ͺŹ���
	scrap_qty numeric NULL, -- �������������ڷ������ϱ�
	class_a_qty numeric NULL, -- A��Ʒ����
	class_q_qty numeric NULL, -- Q��Ʒ���������ڷ�������Ʒ��
	class_f_qty numeric NULL, -- F�����������ڷ�������Ʒ��
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
COMMENT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem IS 'COPQָ�꣺�ڲ�OEM';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.data_time IS '����ʱ�䣬���ڷ���ʱ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.factory IS '�����������ڷ�����������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.fg_code IS 'FG Code�����ڷ���BU�𼰲�Ʒ�ͺű𣨸���FG code��ӦBU����Ʒ�ͺŹ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.scrap_qty IS '�������������ڷ������ϱ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.class_a_qty IS 'A��Ʒ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.class_q_qty IS 'Q��Ʒ���������ڷ�������Ʒ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.class_f_qty IS 'F�����������ڷ�������Ʒ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_z4t_copq_oem.create_time IS 'ץȡ����ʱ��';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_z4t_copq_oem TO gr_uqry_data;
