-- Drop table

-- DROP TABLE dw.td_com_customer;

CREATE TABLE dw.td_com_customer (
	row_wid int8 NULL,
	row_id varchar(60) NULL, -- �ͻ�����
	x_acc_id varchar(60) NULL, -- �ͻ�id
	ou_num varchar(120) NULL, -- �ͻ�����
	x_eng_name varchar(400) NULL, -- Ӣ������
	"name" varchar(400) NULL, -- ��˾����
	x_abbreviation varchar(400) NULL, -- ���
	x_eng_abb_name varchar(400) NULL, -- Ӣ�ļ��
	x_agree_flag varchar(4) NULL, -- �Ƿ�ǩ���ܺ�ͬ
	x_contract_status varchar(200) NULL, -- ��ͬ״̬
	x_parent_acc varchar(200) NULL, -- ���˻�
	x_owner varchar(200) NULL, -- ������
	x_mob_phone varchar(200) NULL, -- �绰
	pr_con_id varchar(60) NULL, -- ��Ҫ��ϵ��
	x_con_mob_phone varchar(120) NULL, -- ��ϵ�˵绰
	x_con_email varchar(400) NULL, -- ��ϵ�˵����ʼ�
	x_credit_code varchar(400) NULL, -- ͳһ�������֤����
	x_taxpayer varchar(200) NULL, -- ��˰�Ǽ���
	x_taxpayer_type varchar(200) NULL, -- ��˰������
	x_legal_repre varchar(200) NULL, -- ���˴���
	x_set_up_date timestamp NULL, -- ��������
	x_reg_capital varchar(200) NULL, -- ע���ʱ�
	x_bank varchar(400) NULL, -- ��������
	x_householder varchar(800) NULL, -- ����
	x_bank_acc varchar(800) NULL, -- �˺�
	decision_customer varchar(60) NULL, -- ���߷��ͻ�
	x_sales_org varchar(200) NULL, -- ������֯
	x_sales_chan varchar(200) NULL, -- ��������
	x_bu varchar(200) NULL, -- ��Ʒ��
	x_sales_group varchar(200) NULL, -- ������
	x_hq varchar(200) NULL, -- ���߷�
	x_bu_num varchar(200) NULL, -- bu���۹���
	x_bu_name varchar(200) NULL, -- ����
	x_area varchar(200) NULL, -- ���۵���
	x_bsl varchar(200) NULL, -- ���۲���
	x_phone varchar(80) NULL, -- �ֻ�
	x_email varchar(160) NULL, -- ����
	x_country varchar(200) NULL, -- ����
	x_province varchar(200) NULL, -- ʡ
	x_prefecture varchar(400) NULL, -- ����
	x_street_add varchar(800) NULL, -- �ֵ���ַ
	x_postal_code varchar(200) NULL, -- ��������
	x_acc_source varchar(200) NULL, -- �ͻ���Դ
	x_acc_type varchar(200) NULL, -- �ͻ�����
	x_acc_status varchar(200) NULL, -- �ͻ�״̬
	x_industry varchar(200) NULL, -- ��ҵ
	x_partners varchar(200) NULL, -- ��������
	x_coop_products varchar(200) NULL, -- ��������Ʒ
	x_legal_socre varchar(200) NULL, -- ����÷�
	x_per_socre numeric(22,2) NULL, -- ��Ӫ״���÷�
	x_bus_socre numeric(22,2) NULL, -- ҵ��÷�
	x_credit_reason varchar(200) NULL, -- ����ԭ��
	x_credit_type varchar(200) NULL, -- ��������
	x_credit_lim_val timestamp NULL, -- �Ŵ������Ч��
	modify_name varchar(400) NULL, -- ��˾����
	abbreviation varchar(400) NULL, -- ���
	country varchar(200) NULL, -- ����
	province varchar(200) NULL, -- ʡ
	prefecture varchar(400) NULL, -- ����
	street_add varchar(800) NULL, -- �ֵ���ַ
	mob_phone varchar(200) NULL, -- �绰
	postal_code varchar(200) NULL, -- �ʱ�
	credit_code varchar(400) NULL, -- ͳһ�������֤����
	bank varchar(400) NULL, -- ��������
	householder varchar(800) NULL, -- ����
	bank_acc varchar(800) NULL, -- �˺�
	apptoval_status varchar(200) NULL, -- ����״̬
	request_status varchar(60) NULL, -- ����״̬
	boe_department varchar(200) NULL, -- bu
	job_number varchar(200) NULL, -- ����
	sales_org varchar(200) NULL, -- ������֯
	sales_channel varchar(200) NULL, -- ��������
	boe_bu varchar(200) NULL, -- ��Ʒ��
	boe_area varchar(200) NULL, -- ���۵���
	boe_bsl varchar(200) NULL, -- ���۲���
	sales_group varchar(200) NULL, -- ������
	boe_hq varchar(200) NULL, -- ���߷�
	approval_type varchar(200) NULL, -- ��������
	eng_name varchar(400) NULL, -- Ӣ������
	eng_abb_name varchar(400) NULL, -- Ӣ�ļ��
	boe_phone varchar(80) NULL, -- �ֻ�
	boe_email varchar(160) NULL, -- ����
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
COMMENT ON TABLE dw.td_com_customer IS '�ͻ�����ά����Ϣ';

-- Column comments

COMMENT ON COLUMN dw.td_com_customer.row_id IS '�ͻ�����';
COMMENT ON COLUMN dw.td_com_customer.x_acc_id IS '�ͻ�id';
COMMENT ON COLUMN dw.td_com_customer.ou_num IS '�ͻ�����';
COMMENT ON COLUMN dw.td_com_customer.x_eng_name IS 'Ӣ������';
COMMENT ON COLUMN dw.td_com_customer."name" IS '��˾����';
COMMENT ON COLUMN dw.td_com_customer.x_abbreviation IS '���';
COMMENT ON COLUMN dw.td_com_customer.x_eng_abb_name IS 'Ӣ�ļ��';
COMMENT ON COLUMN dw.td_com_customer.x_agree_flag IS '�Ƿ�ǩ���ܺ�ͬ';
COMMENT ON COLUMN dw.td_com_customer.x_contract_status IS '��ͬ״̬';
COMMENT ON COLUMN dw.td_com_customer.x_parent_acc IS '���˻�';
COMMENT ON COLUMN dw.td_com_customer.x_owner IS '������';
COMMENT ON COLUMN dw.td_com_customer.x_mob_phone IS '�绰';
COMMENT ON COLUMN dw.td_com_customer.pr_con_id IS '��Ҫ��ϵ��';
COMMENT ON COLUMN dw.td_com_customer.x_con_mob_phone IS '��ϵ�˵绰';
COMMENT ON COLUMN dw.td_com_customer.x_con_email IS '��ϵ�˵����ʼ�';
COMMENT ON COLUMN dw.td_com_customer.x_credit_code IS 'ͳһ�������֤����';
COMMENT ON COLUMN dw.td_com_customer.x_taxpayer IS '��˰�Ǽ���';
COMMENT ON COLUMN dw.td_com_customer.x_taxpayer_type IS '��˰������';
COMMENT ON COLUMN dw.td_com_customer.x_legal_repre IS '���˴���';
COMMENT ON COLUMN dw.td_com_customer.x_set_up_date IS '��������';
COMMENT ON COLUMN dw.td_com_customer.x_reg_capital IS 'ע���ʱ�';
COMMENT ON COLUMN dw.td_com_customer.x_bank IS '��������';
COMMENT ON COLUMN dw.td_com_customer.x_householder IS '����';
COMMENT ON COLUMN dw.td_com_customer.x_bank_acc IS '�˺�';
COMMENT ON COLUMN dw.td_com_customer.decision_customer IS '���߷��ͻ�';
COMMENT ON COLUMN dw.td_com_customer.x_sales_org IS '������֯';
COMMENT ON COLUMN dw.td_com_customer.x_sales_chan IS '��������';
COMMENT ON COLUMN dw.td_com_customer.x_bu IS '��Ʒ��';
COMMENT ON COLUMN dw.td_com_customer.x_sales_group IS '������';
COMMENT ON COLUMN dw.td_com_customer.x_hq IS '���߷�';
COMMENT ON COLUMN dw.td_com_customer.x_bu_num IS 'bu���۹���';
COMMENT ON COLUMN dw.td_com_customer.x_bu_name IS '����';
COMMENT ON COLUMN dw.td_com_customer.x_area IS '���۵���';
COMMENT ON COLUMN dw.td_com_customer.x_bsl IS '���۲���';
COMMENT ON COLUMN dw.td_com_customer.x_phone IS '�ֻ�';
COMMENT ON COLUMN dw.td_com_customer.x_email IS '����';
COMMENT ON COLUMN dw.td_com_customer.x_country IS '����';
COMMENT ON COLUMN dw.td_com_customer.x_province IS 'ʡ';
COMMENT ON COLUMN dw.td_com_customer.x_prefecture IS '����';
COMMENT ON COLUMN dw.td_com_customer.x_street_add IS '�ֵ���ַ';
COMMENT ON COLUMN dw.td_com_customer.x_postal_code IS '��������';
COMMENT ON COLUMN dw.td_com_customer.x_acc_source IS '�ͻ���Դ';
COMMENT ON COLUMN dw.td_com_customer.x_acc_type IS '�ͻ�����';
COMMENT ON COLUMN dw.td_com_customer.x_acc_status IS '�ͻ�״̬';
COMMENT ON COLUMN dw.td_com_customer.x_industry IS '��ҵ';
COMMENT ON COLUMN dw.td_com_customer.x_partners IS '��������';
COMMENT ON COLUMN dw.td_com_customer.x_coop_products IS '��������Ʒ';
COMMENT ON COLUMN dw.td_com_customer.x_legal_socre IS '����÷�';
COMMENT ON COLUMN dw.td_com_customer.x_per_socre IS '��Ӫ״���÷�';
COMMENT ON COLUMN dw.td_com_customer.x_bus_socre IS 'ҵ��÷�';
COMMENT ON COLUMN dw.td_com_customer.x_credit_reason IS '����ԭ��';
COMMENT ON COLUMN dw.td_com_customer.x_credit_type IS '��������';
COMMENT ON COLUMN dw.td_com_customer.x_credit_lim_val IS '�Ŵ������Ч��';
COMMENT ON COLUMN dw.td_com_customer.modify_name IS '��˾����';
COMMENT ON COLUMN dw.td_com_customer.abbreviation IS '���';
COMMENT ON COLUMN dw.td_com_customer.country IS '����';
COMMENT ON COLUMN dw.td_com_customer.province IS 'ʡ';
COMMENT ON COLUMN dw.td_com_customer.prefecture IS '����';
COMMENT ON COLUMN dw.td_com_customer.street_add IS '�ֵ���ַ';
COMMENT ON COLUMN dw.td_com_customer.mob_phone IS '�绰';
COMMENT ON COLUMN dw.td_com_customer.postal_code IS '�ʱ�';
COMMENT ON COLUMN dw.td_com_customer.credit_code IS 'ͳһ�������֤����';
COMMENT ON COLUMN dw.td_com_customer.bank IS '��������';
COMMENT ON COLUMN dw.td_com_customer.householder IS '����';
COMMENT ON COLUMN dw.td_com_customer.bank_acc IS '�˺�';
COMMENT ON COLUMN dw.td_com_customer.apptoval_status IS '����״̬';
COMMENT ON COLUMN dw.td_com_customer.request_status IS '����״̬';
COMMENT ON COLUMN dw.td_com_customer.boe_department IS 'bu';
COMMENT ON COLUMN dw.td_com_customer.job_number IS '����';
COMMENT ON COLUMN dw.td_com_customer.sales_org IS '������֯';
COMMENT ON COLUMN dw.td_com_customer.sales_channel IS '��������';
COMMENT ON COLUMN dw.td_com_customer.boe_bu IS '��Ʒ��';
COMMENT ON COLUMN dw.td_com_customer.boe_area IS '���۵���';
COMMENT ON COLUMN dw.td_com_customer.boe_bsl IS '���۲���';
COMMENT ON COLUMN dw.td_com_customer.sales_group IS '������';
COMMENT ON COLUMN dw.td_com_customer.boe_hq IS '���߷�';
COMMENT ON COLUMN dw.td_com_customer.approval_type IS '��������';
COMMENT ON COLUMN dw.td_com_customer.eng_name IS 'Ӣ������';
COMMENT ON COLUMN dw.td_com_customer.eng_abb_name IS 'Ӣ�ļ��';
COMMENT ON COLUMN dw.td_com_customer.boe_phone IS '�ֻ�';
COMMENT ON COLUMN dw.td_com_customer.boe_email IS '����';

-- Permissions

ALTER TABLE dw.td_com_customer OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_customer TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_customer TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_customer TO gr_uqry_data;
