-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_co_external_total_cost;

CREATE TABLE dw.tf_business_quota_copq_co_external_total_cost (
	client varchar(9) NULL, -- �ͻ���
	control_object_ledger varchar(6) NULL, -- ���ƶ���ķ�����
	object_number varchar(66) NULL, -- �����
	accounting_year varchar(12) NULL, -- ������
	value_type varchar(6) NULL, -- ֵ����
	"version" varchar(9) NULL, -- �汾
	cost_elements varchar(30) NULL, -- �ɱ�Ҫ��
	co_code_number varchar(42) NULL, -- CO ��μ����
	co_business_affacharacter varchar(12) NULL, -- CO ҵ������
	credit_debit_flag varchar(10) NULL, -- ������
	total_transaction_value_01 numeric(15,2) NULL, -- 1�½��׻����е���ֵ
	total_transaction_value_02 numeric(15,2) NULL, -- 2�½��׻����е���ֵ
	total_transaction_value_03 numeric(15,2) NULL, -- 3�½��׻����е���ֵ
	total_transaction_value_04 numeric(15,2) NULL, -- 4�½��׻����е���ֵ
	total_transaction_value_05 numeric(15,2) NULL, -- 5�½��׻����е���ֵ
	total_transaction_value_06 numeric(15,2) NULL, -- 6�½��׻����е���ֵ
	total_transaction_value_07 numeric(15,2) NULL, -- 7�½��׻����е���ֵ
	total_transaction_value_08 numeric(15,2) NULL, -- 8�½��׻����е���ֵ
	total_transaction_value_09 numeric(15,2) NULL, -- 9�½��׻����е���ֵ
	total_transaction_value_10 numeric(15,2) NULL, -- 10�½��׻����е���ֵ
	total_transaction_value_11 numeric(15,2) NULL, -- 11�½��׻����е���ֵ
	total_transaction_value_12 numeric(15,2) NULL, -- 12�½��׻����е���ֵ
	factory varchar(12) NULL, -- ����
	currency varchar(9) NULL, -- ���׻���
	period_freeze varchar(9) NULL, -- �ڼ䶳��
	business_partner_code varchar(100) NULL, -- ó�׻��Ĺ�˾��ʶ
	business_partner_scope varchar(100) NULL, -- ó�׻���ҵ��Χ
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
COMMENT ON TABLE dw.tf_business_quota_copq_co_external_total_cost IS 'CO �����ⲿ���ʵĳɱ��ܼ�';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.control_object_ledger IS '���ƶ���ķ�����';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.object_number IS '�����';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.accounting_year IS '������';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.value_type IS 'ֵ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost."version" IS '�汾';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.cost_elements IS '�ɱ�Ҫ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.co_code_number IS 'CO ��μ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.co_business_affacharacter IS 'CO ҵ������';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.credit_debit_flag IS '������';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_01 IS '1�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_02 IS '2�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_03 IS '3�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_04 IS '4�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_05 IS '5�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_06 IS '6�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_07 IS '7�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_08 IS '8�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_09 IS '9�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_10 IS '10�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_11 IS '11�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.total_transaction_value_12 IS '12�½��׻����е���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.factory IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.currency IS '���׻���';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.period_freeze IS '�ڼ䶳��';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.business_partner_code IS 'ó�׻��Ĺ�˾��ʶ';
COMMENT ON COLUMN dw.tf_business_quota_copq_co_external_total_cost.business_partner_scope IS 'ó�׻���ҵ��Χ';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_co_external_total_cost OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_co_external_total_cost TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_co_external_total_cost TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_co_external_total_cost TO gr_uqry_data;
