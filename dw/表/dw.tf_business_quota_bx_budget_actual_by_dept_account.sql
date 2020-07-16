-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account;

CREATE TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account (
	date_wid int8 NULL,
	client varchar(9) NULL, -- �ͻ���
	factory varchar(12) NULL, -- ��˾����
	object_number varchar(66) NULL, -- �����
	cost_center varchar(30) NULL, -- �ɱ�����
	general_name varchar NULL, -- һ������
	cost_elements varchar(30) NULL, -- �ɱ�Ҫ��
	co_code_number varchar(42) NULL, -- CO ��μ����
	debit_or_credit_mark varchar(3) NULL, -- ��/�����
	general_ledger_account_name varchar(60) NULL, -- ���ʿ�Ŀ����
	"version" varchar(9) NULL, -- �汾
	co_business_affacharacter varchar(12) NULL, -- CO ҵ������
	value_type varchar(6) NULL, -- ֵ����
	function_range varchar(48) NULL, -- ���ܷ�Χ
	years varchar(9) NULL, -- ������
	months varchar(9) NULL, -- �·�
	plan_actual varchar(200) NULL, -- �ƻ�/ʵ��
	amount numeric(15,2) NULL, -- ���
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
COMMENT ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account IS 'BXָ�꣺�����ŵ�Ԥ��ʵ����';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.factory IS '��˾����';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.object_number IS '�����';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.cost_center IS '�ɱ�����';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.general_name IS 'һ������';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.cost_elements IS '�ɱ�Ҫ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.co_code_number IS 'CO ��μ����';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.debit_or_credit_mark IS '��/�����';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.general_ledger_account_name IS '���ʿ�Ŀ����';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account."version" IS '�汾';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.co_business_affacharacter IS 'CO ҵ������';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.value_type IS 'ֵ����';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.function_range IS '���ܷ�Χ';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.years IS '������';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.months IS '�·�';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.plan_actual IS '�ƻ�/ʵ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_budget_actual_by_dept_account.amount IS '���';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_budget_actual_by_dept_account TO gr_uqry_data;
