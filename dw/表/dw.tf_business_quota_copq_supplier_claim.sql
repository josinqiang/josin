-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_supplier_claim;

CREATE TABLE dw.tf_business_quota_copq_supplier_claim (
	id numeric(19) NULL,
	company_id numeric(19) NULL, -- ��˾ID
	department_id numeric(19) NULL, -- ����ID
	opening_area varchar(510) NULL, -- �����ֵ�
	claim_type varchar(510) NULL, -- ����������ֳ��棩
	product_bu varchar(510) NULL, -- ��ƷBU
	product_category varchar(510) NULL, -- ��Ʒ��
	current_activity_name varchar(510) NULL, -- ��ǰ��������
	supply_chain_date timestamp NULL, -- �ɹ��⸶��ʽȷ������
	pay_amount numeric NULL, -- �⸶���
	currency varchar(510) NULL, -- ����
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
COMMENT ON TABLE dw.tf_business_quota_copq_supplier_claim IS 'COPQ����TQMS��Ӧ������';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.company_id IS '��˾ID';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.department_id IS '����ID';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.opening_area IS '�����ֵ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.claim_type IS '����������ֳ��棩';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.product_bu IS '��ƷBU';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.product_category IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.current_activity_name IS '��ǰ��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.supply_chain_date IS '�ɹ��⸶��ʽȷ������';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.pay_amount IS '�⸶���';
COMMENT ON COLUMN dw.tf_business_quota_copq_supplier_claim.currency IS '����';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_supplier_claim OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_supplier_claim TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_supplier_claim TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_supplier_claim TO gr_uqry_data;
