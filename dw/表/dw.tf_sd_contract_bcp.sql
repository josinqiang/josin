-- Drop table

-- DROP TABLE dw.tf_sd_contract_bcp;

CREATE TABLE dw.tf_sd_contract_bcp (
	contract_id varchar(150) NULL, -- ����
	contract_num varchar(300) NULL, -- ��ͬ��
	customer_wid int8 NULL, -- �ͻ���������
	internal_company_code varchar(150) NULL, -- �ڲ���˾
	folder_unsign varchar(6000) NULL, -- δǩ�ļ�·��
	files_unsign varchar(6000) NULL, -- δǩ�ļ���
	folder_single varchar(6000) NULL, -- ��ǩ�ļ�·��
	files_single varchar(6000) NULL, -- ��ǩ�ļ���
	folder_double varchar(6000) NULL, -- ˫ǩ�ļ�·��
	files_double varchar(6000) NULL, -- ˫ǩ�ļ���
	executive_no varchar(150) NULL, -- ҵ�񵣵�����
	executive_name varchar(150) NULL, -- ҵ�񵣵�����
	c_stamped numeric(3) NULL, -- �ͻ��Ƿ����
	c_stamped_dt_wid int8 NULL, -- �ڲ�����ʱ������
	s_stamped numeric(3) NULL, -- �ڲ��Ƿ����
	s_stamped_dt_wid int8 NULL, -- �ͻ�����ʱ������
	contract_status_code numeric(10) NULL, -- ״̬����
	contract_status_name text NULL, -- ״̬����
	create_dt timestamp NULL, -- ����ʱ��
	withdraw_dt timestamp NULL, -- ����ʱ��
	stamped_code varchar(150) NULL, -- ����code(uuid)
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
COMMENT ON TABLE dw.tf_sd_contract_bcp IS '�ͻ���ͬ';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_id IS '����';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_num IS '��ͬ��';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.customer_wid IS '�ͻ���������';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.internal_company_code IS '�ڲ���˾';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.folder_unsign IS 'δǩ�ļ�·��';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.files_unsign IS 'δǩ�ļ���';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.folder_single IS '��ǩ�ļ�·��';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.files_single IS '��ǩ�ļ���';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.folder_double IS '˫ǩ�ļ�·��';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.files_double IS '˫ǩ�ļ���';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.executive_no IS 'ҵ�񵣵�����';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.executive_name IS 'ҵ�񵣵�����';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.c_stamped IS '�ͻ��Ƿ����';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.c_stamped_dt_wid IS '�ڲ�����ʱ������';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.s_stamped IS '�ڲ��Ƿ����';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.s_stamped_dt_wid IS '�ͻ�����ʱ������';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_status_code IS '״̬����';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.contract_status_name IS '״̬����';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.create_dt IS '����ʱ��';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.withdraw_dt IS '����ʱ��';
COMMENT ON COLUMN dw.tf_sd_contract_bcp.stamped_code IS '����code(uuid)';

-- Permissions

ALTER TABLE dw.tf_sd_contract_bcp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_contract_bcp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_contract_bcp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_contract_bcp TO gr_uqry_data;
