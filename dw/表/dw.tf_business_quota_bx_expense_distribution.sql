-- Drop table

-- DROP TABLE dw.tf_business_quota_bx_expense_distribution;

CREATE TABLE dw.tf_business_quota_bx_expense_distribution (
	distribute_coefficient numeric(18,8) NULL, -- ��̯ϵ��
	amount numeric(18,2) NULL, -- ������
	currency varchar(15) NULL, -- ����
	cal_year text NULL, -- ��
	cal_month text NULL, -- ��
	year_month varchar(18) NULL, -- ������/��
	company_code varchar(12) NULL, -- ��˾����
	secondary_org varchar(30) NULL, -- ������֯
	business_index varchar(6) NULL, -- ҵ��ָ��
	expense_belong varchar(6) NULL, -- ���ù���
	expense_category varchar(6) NULL, -- �������
	cost_center_group varchar(30) NULL, -- �ɱ�������
	tertiary_org varchar(30) NULL, -- ������֯
	distinguish_bx12 varchar(54) NULL, -- ����BX1 BX2
	customer varchar(30) NULL, -- �ͻ�
	cost_element varchar(30) NULL, -- �ɱ�Ҫ��
	func_area varchar(48) NULL, -- ���ܷ�Χ
	order_num varchar(36) NULL, -- ����
	trns varchar(12) NULL, -- ����
	business varchar(9) NULL, -- BU(��ҵ��)
	line_body varchar(96) NULL, -- ����
	product_type varchar(96) NULL, -- ��Ʒ����
	manufacture_expense numeric(18,2) NULL, -- �������
	account_chart varchar(12) NULL, -- ��Ŀ��
	account varchar(30) NULL, -- ���ʿ�Ŀ
	capital_flag varchar(3) NULL, -- �ʱ�����ʶ
	primary_org varchar(30) NULL, -- һ����֯
	opa_prd varchar(180) NULL, -- OPA����
	material varchar(96) NULL, -- ����
	year_month1 varchar(18) NULL, -- ������/��1
	opa_flag1 varchar(6) NULL, -- OPA������ñ�ʶ1
	opa_flag2 varchar(6) NULL, -- OPA������ñ�ʶ2
	opa_src varchar(6) NULL, -- OPA�ھ�
	cost_center varchar(30) NULL, -- �ɱ�����
	partner_company_code varchar(12) NULL, -- ������鹫˾����
	is_cen varchar(3) NULL, -- �Ƿ�JCEN
	data_source varchar(6) NULL, -- ������Դ
	control_area varchar(12) NULL, -- ���Ʒ�Χ
	factory varchar(12) NULL, -- ����
	info_provider varchar(90) NULL, -- ��Ϣ�ṩ��
	b4_already_charged numeric(18,2) NULL, -- B4�ѳе�
	b4_should_charged numeric(18,2) NULL, -- B4Ӧ�е�
	b4_distribute_coefficient numeric(18,8) NULL, -- B4��̯ϵ��
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(300) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_bx_expense_distribution IS '���÷�̯012����';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.distribute_coefficient IS '��̯ϵ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.amount IS '������';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.currency IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cal_year IS '��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cal_month IS '��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.year_month IS '������/��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.company_code IS '��˾����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.secondary_org IS '������֯';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.business_index IS 'ҵ��ָ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.expense_belong IS '���ù���';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.expense_category IS '�������';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cost_center_group IS '�ɱ�������';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.tertiary_org IS '������֯';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.distinguish_bx12 IS '����BX1 BX2';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.customer IS '�ͻ�';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cost_element IS '�ɱ�Ҫ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.func_area IS '���ܷ�Χ';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.order_num IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.trns IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.business IS 'BU(��ҵ��)';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.line_body IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.product_type IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.manufacture_expense IS '�������';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.account_chart IS '��Ŀ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.account IS '���ʿ�Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.capital_flag IS '�ʱ�����ʶ';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.primary_org IS 'һ����֯';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_prd IS 'OPA����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.material IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.year_month1 IS '������/��1';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_flag1 IS 'OPA������ñ�ʶ1';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_flag2 IS 'OPA������ñ�ʶ2';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.opa_src IS 'OPA�ھ�';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.cost_center IS '�ɱ�����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.partner_company_code IS '������鹫˾����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.is_cen IS '�Ƿ�JCEN';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.data_source IS '������Դ';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.control_area IS '���Ʒ�Χ';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.factory IS '����';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.info_provider IS '��Ϣ�ṩ��';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.b4_already_charged IS 'B4�ѳе�';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.b4_should_charged IS 'B4Ӧ�е�';
COMMENT ON COLUMN dw.tf_business_quota_bx_expense_distribution.b4_distribute_coefficient IS 'B4��̯ϵ��';

-- Permissions

ALTER TABLE dw.tf_business_quota_bx_expense_distribution OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_expense_distribution TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_bx_expense_distribution TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_bx_expense_distribution TO gr_uqry_data;
