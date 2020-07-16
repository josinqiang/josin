-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity;

CREATE TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity (
	id varchar(64) NULL, -- ����
	prim_code varchar(128) NULL, -- ƾ֤����
	warehouse_time timestamp NULL, -- ����ʱ��
	update_date timestamp NULL, -- �ύʱ��
	oem_factory_code varchar(128) NULL, -- oem��������
	oem_factory_name varchar(200) NULL, -- oem��������
	right_fac varchar(128) NULL, -- ��Ȩ����
	row_prim_code varchar(128) NULL, -- �����ݵ���
	fgcode varchar(128) NULL, -- fgcode
	meterial_no varchar(128) NULL, -- ���ϱ���
	tax varchar(128) NULL, -- ˰��1-��˰��2-�Ǳ�˰��
	duty varchar(128) NULL, -- ���
	bad_type varchar(128) NULL, -- �������1-����2-����
	odd_numbers varchar(128) NULL, -- ��������
	entity_sattus varchar(128) NULL, -- ʵ��״̬��1-���ģ�2-pola...��
	num varchar(128) NULL, -- ����
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL,
	remark varchar(2000) NULL -- ��ע
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity IS 'COPQָ��-�ⲿOEM����Ʒ����';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.id IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.prim_code IS 'ƾ֤����';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.warehouse_time IS '����ʱ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.update_date IS '�ύʱ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.oem_factory_code IS 'oem��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.oem_factory_name IS 'oem��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.right_fac IS '��Ȩ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.row_prim_code IS '�����ݵ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.fgcode IS 'fgcode';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.meterial_no IS '���ϱ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.tax IS '˰��1-��˰��2-�Ǳ�˰��';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.duty IS '���';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.bad_type IS '�������1-����2-����';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.odd_numbers IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.entity_sattus IS 'ʵ��״̬��1-���ģ�2-pola...��';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.num IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_external_oem_scrap_quantity.remark IS '��ע';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_external_oem_scrap_quantity TO gr_uqry_data;
