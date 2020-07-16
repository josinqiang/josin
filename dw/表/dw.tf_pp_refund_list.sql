-- Drop table

-- DROP TABLE dw.tf_pp_refund_list;

CREATE TABLE dw.tf_pp_refund_list (
	backid numeric NULL, -- �˿ⵥ���
	refundid numeric NULL, -- �˿��嵥����
	applicant_id varchar(15) NULL, -- ������ID
	applicant_name varchar(20) NULL, -- ������
	corporation_code varchar(20) NULL, -- ������λ����
	corporation_name varchar(40) NULL, -- ������λ����
	apply_date_wid int8 NULL, -- ����ʱ������
	audit_flag varchar(3) NULL, -- ���״̬
	auditflag_name text NULL, -- ��˱�־(0 δ�ύ 1 ����� 2 ���ͨ�� 3��ͣ���)
	auditor_id varchar(20) NULL, -- �����id
	auditor_name varchar(20) NULL, -- �����
	cost_center_code varchar(20) NULL, -- �ɱ����ı���
	title varchar(200) NULL, -- �������
	spare_code varchar(40) NULL, -- ��������
	spare_description varchar(200) NULL, -- ��������
	work_order_record varchar(2000) NULL, -- ������������
	wait_for_return_quantity numeric NULL, -- ���˻�����
	right_quantity numeric(13) NULL, -- ��Ʒ����
	right_factory_code varchar(4) NULL, -- �˿⹤��
	right_inv_location varchar(4) NULL, -- �˿��λ
	right_move_type varchar(3) NULL, -- �˿��ƶ�����
	ng_factory_code varchar(4) NULL, -- ���Ϲ�������
	ng_quantity numeric(13) NULL, -- ��������
	ng_inv_location varchar(4) NULL, -- ���Ͽ�λ
	ng_move_type varchar(3) NULL, -- �����ƶ�����
	other_instruction varchar(200) NULL, -- ˵��
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
COMMENT ON TABLE dw.tf_pp_refund_list IS '�˿ⵥ����';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_refund_list.backid IS '�˿ⵥ���';
COMMENT ON COLUMN dw.tf_pp_refund_list.refundid IS '�˿��嵥����';
COMMENT ON COLUMN dw.tf_pp_refund_list.applicant_id IS '������ID';
COMMENT ON COLUMN dw.tf_pp_refund_list.applicant_name IS '������';
COMMENT ON COLUMN dw.tf_pp_refund_list.corporation_code IS '������λ����';
COMMENT ON COLUMN dw.tf_pp_refund_list.corporation_name IS '������λ����';
COMMENT ON COLUMN dw.tf_pp_refund_list.apply_date_wid IS '����ʱ������';
COMMENT ON COLUMN dw.tf_pp_refund_list.audit_flag IS '���״̬';
COMMENT ON COLUMN dw.tf_pp_refund_list.auditflag_name IS '��˱�־(0 δ�ύ 1 ����� 2 ���ͨ�� 3��ͣ���)';
COMMENT ON COLUMN dw.tf_pp_refund_list.auditor_id IS '�����id';
COMMENT ON COLUMN dw.tf_pp_refund_list.auditor_name IS '�����';
COMMENT ON COLUMN dw.tf_pp_refund_list.cost_center_code IS '�ɱ����ı���';
COMMENT ON COLUMN dw.tf_pp_refund_list.title IS '�������';
COMMENT ON COLUMN dw.tf_pp_refund_list.spare_code IS '��������';
COMMENT ON COLUMN dw.tf_pp_refund_list.spare_description IS '��������';
COMMENT ON COLUMN dw.tf_pp_refund_list.work_order_record IS '������������';
COMMENT ON COLUMN dw.tf_pp_refund_list.wait_for_return_quantity IS '���˻�����';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_quantity IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_factory_code IS '�˿⹤��';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_inv_location IS '�˿��λ';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_move_type IS '�˿��ƶ�����';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_factory_code IS '���Ϲ�������';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_quantity IS '��������';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_inv_location IS '���Ͽ�λ';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_move_type IS '�����ƶ�����';
COMMENT ON COLUMN dw.tf_pp_refund_list.other_instruction IS '˵��';

-- Permissions

ALTER TABLE dw.tf_pp_refund_list OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_refund_list TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_refund_list TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_refund_list TO gr_uqry_data;
