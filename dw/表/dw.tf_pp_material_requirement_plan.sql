-- Drop table

-- DROP TABLE dw.tf_pp_material_requirement_plan;

CREATE TABLE dw.tf_pp_material_requirement_plan (
	client varchar(9) NULL, -- �ͻ���
	requirement_number varchar(36) NULL, -- ����������
	item_wid int8 NULL, -- ���ϺŴ����
	factory_wid int8 NULL, -- ���������
	requirement_type varchar(12) NULL, -- ��������
	independent_requirement_version_num varchar(6) NULL, -- ��������İ汾��
	requirements_plan_number varchar(30) NULL, -- ����ƻ����
	base_unit varchar(9) NULL, -- ����������λ
	production_version varchar(12) NULL, -- �����汾
	mrp_type varchar(6) NULL, -- ��������ƻ�����
	mrp_group varchar(12) NULL, -- ��������ƻ���
	mrp_controller varchar(9) NULL, -- mrp �����ߣ����ϼƻ��ˣ�
	mrp_area_exist_flag varchar(3) NULL, -- ָʾ��mrp  ��Χ����
	delivery_order_finish_date_wid int8 NULL, -- ����/����������ڴ����
	planned_quantity numeric(13,3) NULL, -- �ƻ�����
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
COMMENT ON TABLE dw.tf_pp_material_requirement_plan IS '��ʵ��-��������ƻ�';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.requirement_number IS '����������';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.item_wid IS '���ϺŴ����';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.requirement_type IS '��������';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.independent_requirement_version_num IS '��������İ汾��';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.requirements_plan_number IS '����ƻ����';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.base_unit IS '����������λ';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.production_version IS '�����汾';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_type IS '��������ƻ�����';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_group IS '��������ƻ���';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_controller IS 'mrp �����ߣ����ϼƻ��ˣ�';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.mrp_area_exist_flag IS 'ָʾ��mrp  ��Χ����';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.delivery_order_finish_date_wid IS '����/����������ڴ����';
COMMENT ON COLUMN dw.tf_pp_material_requirement_plan.planned_quantity IS '�ƻ�����';

-- Permissions

ALTER TABLE dw.tf_pp_material_requirement_plan OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_material_requirement_plan TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_material_requirement_plan TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_material_requirement_plan TO gr_uqry_data;
