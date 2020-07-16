-- Drop table

-- DROP TABLE dw.td_fin_cost_center;

CREATE TABLE dw.td_fin_cost_center (
	row_wid int8 NULL, -- �����
	client_code varchar(9) NULL, -- �ͻ��˴���
	company_code varchar(12) NULL, -- ��˾����
	controlling_area varchar(12) NULL, -- ���Ʒ�Χ
	cost_center_code varchar(30) NULL, -- �ɱ�����
	cost_center_name varchar(60) NULL, -- ����
	cost_center_description varchar(120) NULL, -- ����
	valid_from_date varchar(24) NULL, -- ��Ч��ʼ��
	valid_to_date varchar(24) NULL, -- ��Ч������
	person_responsible varchar(60) NULL, -- ������
	department_name varchar(36) NULL, -- ��������
	cost_center_category_code varchar(3) NULL, -- �ɱ��������ͱ���
	cost_center_category_name varchar(60) NULL, -- �ɱ�������������
	cost_center_group_code varchar(36) NULL, -- ��νṹ��Χ
	cost_center_group_name varchar(120) NULL, -- ��νṹ��
	function_area_code varchar(48) NULL, -- ���ܷ�Χ����
	function_area_name varchar(75) NULL, -- ���ܷ�Χ����
	currency varchar(15) NULL, -- ����
	profit_center_code varchar(30) NULL, -- �������ı���
	profit_center_name varchar(60) NULL, -- ������������
	create_by varchar(36) NULL, -- ������
	create_dt varchar(24) NULL, -- ��������
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
COMMENT ON TABLE dw.td_fin_cost_center IS '�ɱ�����ά�ȱ�';

-- Column comments

COMMENT ON COLUMN dw.td_fin_cost_center.row_wid IS '�����';
COMMENT ON COLUMN dw.td_fin_cost_center.client_code IS '�ͻ��˴���';
COMMENT ON COLUMN dw.td_fin_cost_center.company_code IS '��˾����';
COMMENT ON COLUMN dw.td_fin_cost_center.controlling_area IS '���Ʒ�Χ';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_code IS '�ɱ�����';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_name IS '����';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_description IS '����';
COMMENT ON COLUMN dw.td_fin_cost_center.valid_from_date IS '��Ч��ʼ��';
COMMENT ON COLUMN dw.td_fin_cost_center.valid_to_date IS '��Ч������';
COMMENT ON COLUMN dw.td_fin_cost_center.person_responsible IS '������';
COMMENT ON COLUMN dw.td_fin_cost_center.department_name IS '��������';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_category_code IS '�ɱ��������ͱ���';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_category_name IS '�ɱ�������������';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_group_code IS '��νṹ��Χ';
COMMENT ON COLUMN dw.td_fin_cost_center.cost_center_group_name IS '��νṹ��';
COMMENT ON COLUMN dw.td_fin_cost_center.function_area_code IS '���ܷ�Χ����';
COMMENT ON COLUMN dw.td_fin_cost_center.function_area_name IS '���ܷ�Χ����';
COMMENT ON COLUMN dw.td_fin_cost_center.currency IS '����';
COMMENT ON COLUMN dw.td_fin_cost_center.profit_center_code IS '�������ı���';
COMMENT ON COLUMN dw.td_fin_cost_center.profit_center_name IS '������������';
COMMENT ON COLUMN dw.td_fin_cost_center.create_by IS '������';
COMMENT ON COLUMN dw.td_fin_cost_center.create_dt IS '��������';

-- Permissions

ALTER TABLE dw.td_fin_cost_center OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_cost_center TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_cost_center TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_fin_cost_center TO gr_uqry_data;
