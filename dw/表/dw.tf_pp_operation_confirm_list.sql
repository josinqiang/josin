-- Drop table

-- DROP TABLE dw.tf_pp_operation_confirm_list;

CREATE TABLE dw.tf_pp_operation_confirm_list (
	client_code varchar(9) NULL, -- �ͻ���
	po_number varchar(36) NULL, -- ������
	operation_confirm_num varchar(30) NULL, -- ����ȷ�Ϻ�
	item_wid int8 NULL, -- ���ϱ�������
	operation_number varchar(12) NULL, -- ����
	sequence_num varchar(18) NULL, -- ����
	factory_wid int8 NULL, -- ���������
	operation_confirm_lin_num varchar(24) NULL, -- ����ȷ���к�
	po_confirm_quantity numeric(13,3) NULL, -- ��������λ����ǰȷ�ϲ���
	to_be_confirmed_quantity numeric(13,3) NULL, -- ��ȷ�ϵĲ���
	to_be_confirmed_scrap numeric(13,3) NULL, -- ��ǰҪȷ�Ϸ�Ʒ
	base_unit varchar(9) NULL, -- ������λ
	confirm_unit varchar(9) NULL, -- ȷ�ϵ�λ
	execute_confirmed_start_date_wid int8 NULL, -- ִ�п�ʼ��ȷ�����ڴ����
	execute_confirmed_start_time varchar(18) NULL, -- ִ�п�ʼ��ȷ��ʱ��
	execute_confirmed_end_date_wid int8 NULL, -- ִ����ɵ�ȷ�����ڴ����
	execute_confirmed_end_time varchar(18) NULL, -- ִ����ɵ�ȷ������
	entry_confirmed_date varchar(24) NULL, -- ȷ������ʱ��
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
COMMENT ON TABLE dw.tf_pp_operation_confirm_list IS '��ʵ��-��������';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.po_number IS '������';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.operation_confirm_num IS '����ȷ�Ϻ�';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.item_wid IS '���ϱ�������';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.operation_number IS '����';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.sequence_num IS '����';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.operation_confirm_lin_num IS '����ȷ���к�';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.po_confirm_quantity IS '��������λ����ǰȷ�ϲ���';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.to_be_confirmed_quantity IS '��ȷ�ϵĲ���';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.to_be_confirmed_scrap IS '��ǰҪȷ�Ϸ�Ʒ';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.base_unit IS '������λ';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.confirm_unit IS 'ȷ�ϵ�λ';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_start_date_wid IS 'ִ�п�ʼ��ȷ�����ڴ����';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_start_time IS 'ִ�п�ʼ��ȷ��ʱ��';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_end_date_wid IS 'ִ����ɵ�ȷ�����ڴ����';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_end_time IS 'ִ����ɵ�ȷ������';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.entry_confirmed_date IS 'ȷ������ʱ��';

-- Permissions

ALTER TABLE dw.tf_pp_operation_confirm_list OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_operation_confirm_list TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_operation_confirm_list TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_operation_confirm_list TO gr_uqry_data;
