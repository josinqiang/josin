-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_oem_claim_fee;

CREATE TABLE dw.tf_business_quota_copq_oem_claim_fee (
	id numeric(19) NULL, -- id
	status_now varchar(510) NULL, -- ��ǰ״̬
	opening_date timestamp NULL, -- ��������
	supplier varchar(510) NULL, -- ���ҷ�����Ӧ��
	happen_date timestamp NULL, -- ����ʱ��
	opening_area varchar(510) NULL, -- �����ֵأ������ֵر�
	bad_and_calim_reason varchar(510) NULL, -- ����&����ԭ��
	compensation_way varchar(510) NULL, -- �⸶��ʽ
	product_category varchar(510) NULL, -- ��Ʒ���
	tax_inclusive_all numeric(15) NULL, -- ��˰����ܼ�
	heppen_stage varchar(510) NULL, -- �����׶�
	bad_detail varchar(510) NULL, -- ������ϸ
	portal_date timestamp NULL, -- ��������
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
COMMENT ON TABLE dw.tf_business_quota_copq_oem_claim_fee IS 'COPQָ��-OEM�����';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.id IS 'id';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.status_now IS '��ǰ״̬';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.opening_date IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.supplier IS '���ҷ�����Ӧ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.happen_date IS '����ʱ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.opening_area IS '�����ֵأ������ֵر�';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.bad_and_calim_reason IS '����&����ԭ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.compensation_way IS '�⸶��ʽ';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.product_category IS '��Ʒ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.tax_inclusive_all IS '��˰����ܼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.heppen_stage IS '�����׶�';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.bad_detail IS '������ϸ';
COMMENT ON COLUMN dw.tf_business_quota_copq_oem_claim_fee.portal_date IS '��������';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_oem_claim_fee OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_oem_claim_fee TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_oem_claim_fee TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_oem_claim_fee TO gr_uqry_data;
