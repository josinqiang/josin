-- Drop table

-- DROP TABLE dw.tf_qm_oem_pnlinput_polish_ledger;

CREATE TABLE dw.tf_qm_oem_pnlinput_polish_ledger (
	id numeric(19) NULL, -- ����
	factory varchar(510) NULL, -- ��Ȩ����
	inspection_point_id numeric(19) NULL, -- ¼���
	is_check varchar(510) NULL, -- �Ƿ����
	sampling_date_wid int8 NULL, -- �������ڴ����
	total_week numeric(10) NULL, -- �ܱ�
	oem_temp_wid int8 NULL, -- ��Ӧ��Ǳ�ڱ�������
	oem_factory varchar(510) NULL, -- slimming����
	active_type varchar(510) NULL, -- ҵ������
	thickness varchar(510) NULL, -- ���
	product_size varchar(510) NULL, -- �ߴ�
	fg_code_wid int8 NULL, -- fg-code�����
	po varchar(510) NULL, -- po
	work_order_no varchar(510) NULL, -- ������
	check_num numeric(10) NULL, -- �����
	cf_polish_num numeric(10) NULL, -- cf���׹�����
	cf_polish_ratio numeric NULL, -- cf���׹����(%)
	tf_polish_num numeric(10) NULL, -- tft���׹�����
	tf_polish_ratio numeric NULL, -- tft�����ͱ���(%
	single_polish_num numeric(10) NULL, -- �����׹�����
	single_polish_ratio numeric NULL, -- �����׹����
	double_polish_num numeric(10) NULL, -- ˫���׹�����
	double_polish_ratio numeric NULL, -- ˫���׹����
	remark varchar(510) NULL, -- ��ע
	attachment varchar(510) NULL, -- ����
	inspector varchar(510) NULL, -- ����Ա
	creator_name varchar(200) NULL, -- ¼����
	created_time timestamp NULL, -- ¼��ʱ��
	last_modifier varchar(510) NULL, -- ����޸���
	last_modified_time timestamp NULL, -- ����޸�ʱ��
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
COMMENT ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger IS '��ʵ��-Slimming�׹�̨��';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.id IS '����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.factory IS '��Ȩ����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.inspection_point_id IS '¼���';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.is_check IS '�Ƿ����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.sampling_date_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.total_week IS '�ܱ�';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.oem_temp_wid IS '��Ӧ��Ǳ�ڱ�������';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.oem_factory IS 'slimming����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.active_type IS 'ҵ������';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.thickness IS '���';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.product_size IS '�ߴ�';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.fg_code_wid IS 'fg-code�����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.po IS 'po';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.work_order_no IS '������';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.check_num IS '�����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.cf_polish_num IS 'cf���׹�����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.cf_polish_ratio IS 'cf���׹����(%)';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.tf_polish_num IS 'tft���׹�����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.tf_polish_ratio IS 'tft�����ͱ���(%';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.single_polish_num IS '�����׹�����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.single_polish_ratio IS '�����׹����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.double_polish_num IS '˫���׹�����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.double_polish_ratio IS '˫���׹����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.remark IS '��ע';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.attachment IS '����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.inspector IS '����Ա';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.creator_name IS '¼����';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.created_time IS '¼��ʱ��';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.last_modifier IS '����޸���';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.last_modified_time IS '����޸�ʱ��';

-- Permissions

ALTER TABLE dw.tf_qm_oem_pnlinput_polish_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger TO gr_uqry_data;
