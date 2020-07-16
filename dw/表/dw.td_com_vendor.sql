-- Drop table

-- DROP TABLE dw.td_com_vendor;

CREATE TABLE dw.td_com_vendor (
	row_wid int8 NULL, -- �����
	vendor_no varchar(30) NULL, -- ��Ӧ����ʽ���
	mdm_no varchar(60) NULL, -- ����������
	vendor_no_temp varchar(30) NULL, -- ��Ӧ����ʱ����
	ven_type_code varchar(12) NULL, -- �˻���
	ven_type_name varchar(24) NULL, -- �˻�������
	ven_property_code varchar(12) NULL, -- ��Ӧ�����Ա���
	ven_property_name varchar(24) NULL, -- ��Ӧ����������
	direct_deal_code varchar(3) NULL, -- �Ƿ�ֱ�ӽ��ױ�ʶ��
	direct_deal_name varchar(45) NULL, -- �Ƿ�ֱ�ӽ���
	e_nature_code varchar(6) NULL, -- ��ҵ����
	e_nature_name varchar(45) NULL, -- ��ҵ��������
	ipo_type_code varchar(3) NULL, -- �������ͱ���
	ipo_type_name varchar(45) NULL, -- ������������
	name_zh varchar(240) NULL, -- ����1(����)
	name_en varchar(240) NULL, -- ����2(Ӣ��)
	lanu_code varchar(9) NULL, -- ���Ա���
	lanu_name varchar(96) NULL, -- ��������
	country_code varchar(9) NULL, -- ���ұ���
	country_name varchar(54) NULL, -- ��������
	city_code varchar(9) NULL, -- ����
	cityp_code varchar(54) NULL, -- ��
	capital_addr varchar(150) NULL, -- ���ʹ�����
	post_code1 varchar(30) NULL, -- �ʱ�
	staff_sum numeric(10) NULL, -- Ա������
	regtime varchar(24) NULL, -- ��������
	credit_code varchar(60) NULL, -- ͳһ������ô���
	address varchar(765) NULL, -- ��ַ
	protal_url varchar(300) NULL, -- ��ַ
	pro_capacity varchar(150) NULL, -- ��������
	reg_money numeric(13,2) NULL, -- ע���ʽ�
	currency varchar(15) NULL, -- ����
	annual_sales numeric(13,2) NULL, -- �����۶�
	business_scope varchar(150) NULL, -- ��Ӫ��Χ
	products varchar(150) NULL, -- ��Ӧ��Ʒ
	main_customer varchar(300) NULL, -- ��Ҫ�ͻ�
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL,
	client_code varchar(20) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_com_vendor IS '��Ӧ�̻�����Ϣ';

-- Column comments

COMMENT ON COLUMN dw.td_com_vendor.row_wid IS '�����';
COMMENT ON COLUMN dw.td_com_vendor.vendor_no IS '��Ӧ����ʽ���';
COMMENT ON COLUMN dw.td_com_vendor.mdm_no IS '����������';
COMMENT ON COLUMN dw.td_com_vendor.vendor_no_temp IS '��Ӧ����ʱ����';
COMMENT ON COLUMN dw.td_com_vendor.ven_type_code IS '�˻���';
COMMENT ON COLUMN dw.td_com_vendor.ven_type_name IS '�˻�������';
COMMENT ON COLUMN dw.td_com_vendor.ven_property_code IS '��Ӧ�����Ա���';
COMMENT ON COLUMN dw.td_com_vendor.ven_property_name IS '��Ӧ����������';
COMMENT ON COLUMN dw.td_com_vendor.direct_deal_code IS '�Ƿ�ֱ�ӽ��ױ�ʶ��';
COMMENT ON COLUMN dw.td_com_vendor.direct_deal_name IS '�Ƿ�ֱ�ӽ���';
COMMENT ON COLUMN dw.td_com_vendor.e_nature_code IS '��ҵ����';
COMMENT ON COLUMN dw.td_com_vendor.e_nature_name IS '��ҵ��������';
COMMENT ON COLUMN dw.td_com_vendor.ipo_type_code IS '�������ͱ���';
COMMENT ON COLUMN dw.td_com_vendor.ipo_type_name IS '������������';
COMMENT ON COLUMN dw.td_com_vendor.name_zh IS '����1(����)';
COMMENT ON COLUMN dw.td_com_vendor.name_en IS '����2(Ӣ��)';
COMMENT ON COLUMN dw.td_com_vendor.lanu_code IS '���Ա���';
COMMENT ON COLUMN dw.td_com_vendor.lanu_name IS '��������';
COMMENT ON COLUMN dw.td_com_vendor.country_code IS '���ұ���';
COMMENT ON COLUMN dw.td_com_vendor.country_name IS '��������';
COMMENT ON COLUMN dw.td_com_vendor.city_code IS '����';
COMMENT ON COLUMN dw.td_com_vendor.cityp_code IS '��';
COMMENT ON COLUMN dw.td_com_vendor.capital_addr IS '���ʹ�����';
COMMENT ON COLUMN dw.td_com_vendor.post_code1 IS '�ʱ�';
COMMENT ON COLUMN dw.td_com_vendor.staff_sum IS 'Ա������';
COMMENT ON COLUMN dw.td_com_vendor.regtime IS '��������';
COMMENT ON COLUMN dw.td_com_vendor.credit_code IS 'ͳһ������ô���';
COMMENT ON COLUMN dw.td_com_vendor.address IS '��ַ';
COMMENT ON COLUMN dw.td_com_vendor.protal_url IS '��ַ';
COMMENT ON COLUMN dw.td_com_vendor.pro_capacity IS '��������';
COMMENT ON COLUMN dw.td_com_vendor.reg_money IS 'ע���ʽ�';
COMMENT ON COLUMN dw.td_com_vendor.currency IS '����';
COMMENT ON COLUMN dw.td_com_vendor.annual_sales IS '�����۶�';
COMMENT ON COLUMN dw.td_com_vendor.business_scope IS '��Ӫ��Χ';
COMMENT ON COLUMN dw.td_com_vendor.products IS '��Ӧ��Ʒ';
COMMENT ON COLUMN dw.td_com_vendor.main_customer IS '��Ҫ�ͻ�';

-- Permissions

ALTER TABLE dw.td_com_vendor OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_vendor TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_vendor TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_vendor TO gr_uqry_data;
