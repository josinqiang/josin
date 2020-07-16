-- Drop table

-- DROP TABLE dw.td_business_quota_copq_semi_finished_product_group_bu;

CREATE TABLE dw.td_business_quota_copq_semi_finished_product_group_bu (
	row_wid int8 NULL,
	semi_finished_product_code varchar(54) NULL, -- ���Ʒ����
	client varchar(9) NULL, -- �ͻ���
	maintain_all_materiel_state varchar(45) NULL, -- ά��ȫ������״̬
	maintain_state varchar(45) NULL, -- ά��״̬
	mark_deletion_materiel varchar(3) NULL, -- �ڿͻ������Ҫɾ��������
	material_type varchar(12) NULL, -- ��������
	industry_field varchar(3) NULL, -- ��ҵ����
	material_group varchar(27) NULL, -- ������
	old_material_code varchar(54) NULL, -- �����Ϻ�
	measurement_unit varchar(9) NULL, -- ����������λ
	product_group varchar(6) NULL, -- ��Ʒ��
	bu_name varchar(60) NULL, -- bu����
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
COMMENT ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu IS 'COPQָ��-���Ʒ-��Ʒ��-BU';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.semi_finished_product_code IS '���Ʒ����';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.client IS '�ͻ���';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.maintain_all_materiel_state IS 'ά��ȫ������״̬';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.maintain_state IS 'ά��״̬';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.mark_deletion_materiel IS '�ڿͻ������Ҫɾ��������';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.material_type IS '��������';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.industry_field IS '��ҵ����';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.material_group IS '������';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.old_material_code IS '�����Ϻ�';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.measurement_unit IS '����������λ';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.product_group IS '��Ʒ��';
COMMENT ON COLUMN dw.td_business_quota_copq_semi_finished_product_group_bu.bu_name IS 'bu����';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_semi_finished_product_group_bu OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_semi_finished_product_group_bu TO gr_uqry_data;
