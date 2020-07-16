-- Drop table

-- DROP TABLE dw.tf_pp_bom_list_copy1;

CREATE TABLE dw.tf_pp_bom_list_copy1 (
	days date NULL, -- ����
	client varchar(300) NULL, -- �ͻ���
	material_code varchar(300) NULL, -- ���Ϻ�
	factory_code varchar(300) NULL, -- ����
	bom_no varchar(300) NULL, -- bom��
	node_num varchar(300) NULL, -- �ڵ���
	effective_start_date varchar(300) NULL, -- ��Ч��ֹ����
	modified_no varchar(300) NULL, -- ���ı��
	delete_flag varchar(300) NULL, -- ɾ��id�����ڶ�Ӧ�ڵ���Ϻ��ڶ�Ӧ�ĸ��ı�����Ƿ�ɾ��
	component varchar(300) NULL, -- bom���
	uom varchar(300) NULL, -- ��λ
	quantity numeric NULL, -- ����
	std_quantity numeric NULL, -- ��������
	per_used numeric NULL, -- ʹ�ÿ����԰�%(��ѡ��Ŀ)
	group_code varchar(300) NULL, -- ��
	std_used_quantity numeric NULL, -- bom��׼����
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_upd_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del bpchar(1) NULL,
	effective_end_date varchar(300) NULL -- ��Ч��ֹ����
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (days);
COMMENT ON TABLE dw.tf_pp_bom_list_copy1 IS 'PP BOM�嵥';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.days IS '����';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.material_code IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.factory_code IS '����';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.bom_no IS 'bom��';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.node_num IS '�ڵ���';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.effective_start_date IS '��Ч��ֹ����';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.modified_no IS '���ı��';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.delete_flag IS 'ɾ��id�����ڶ�Ӧ�ڵ���Ϻ��ڶ�Ӧ�ĸ��ı�����Ƿ�ɾ��';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.component IS 'bom���';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.uom IS '��λ';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.quantity IS '����';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.std_quantity IS '��������';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.per_used IS 'ʹ�ÿ����԰�%(��ѡ��Ŀ)';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.group_code IS '��';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.std_used_quantity IS 'bom��׼����';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.effective_end_date IS '��Ч��ֹ����';

-- Permissions

ALTER TABLE dw.tf_pp_bom_list_copy1 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_bom_list_copy1 TO ur_uown_edw;
