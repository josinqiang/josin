-- Drop table

-- DROP TABLE dw.tf_pp_bom_list;

CREATE TABLE dw.tf_pp_bom_list (
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
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_pp_bom_list IS 'PP BOM�嵥';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_bom_list.days IS '����';
COMMENT ON COLUMN dw.tf_pp_bom_list.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_bom_list.material_code IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_pp_bom_list.factory_code IS '����';
COMMENT ON COLUMN dw.tf_pp_bom_list.bom_no IS 'bom��';
COMMENT ON COLUMN dw.tf_pp_bom_list.node_num IS '�ڵ���';
COMMENT ON COLUMN dw.tf_pp_bom_list.effective_start_date IS '��Ч��ֹ����';
COMMENT ON COLUMN dw.tf_pp_bom_list.modified_no IS '���ı��';
COMMENT ON COLUMN dw.tf_pp_bom_list.delete_flag IS 'ɾ��id�����ڶ�Ӧ�ڵ���Ϻ��ڶ�Ӧ�ĸ��ı�����Ƿ�ɾ��';
COMMENT ON COLUMN dw.tf_pp_bom_list.component IS 'bom���';
COMMENT ON COLUMN dw.tf_pp_bom_list.uom IS '��λ';
COMMENT ON COLUMN dw.tf_pp_bom_list.quantity IS '����';
COMMENT ON COLUMN dw.tf_pp_bom_list.std_quantity IS '��������';
COMMENT ON COLUMN dw.tf_pp_bom_list.per_used IS 'ʹ�ÿ����԰�%(��ѡ��Ŀ)';
COMMENT ON COLUMN dw.tf_pp_bom_list.group_code IS '��';
COMMENT ON COLUMN dw.tf_pp_bom_list.std_used_quantity IS 'bom��׼����';
COMMENT ON COLUMN dw.tf_pp_bom_list.effective_end_date IS '��Ч��ֹ����';

-- Permissions

ALTER TABLE dw.tf_pp_bom_list OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_bom_list TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_bom_list TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_bom_list TO gr_uqry_data;
