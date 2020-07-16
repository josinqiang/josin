-- Drop table

-- DROP TABLE dw.tf_pp_feed_plan_info;

CREATE TABLE dw.tf_pp_feed_plan_info (
	client_code varchar(9) NULL, -- �ͻ���
	factory_wid int8 NULL, -- ���������
	version_number varchar(30) NULL, -- �汾��
	bom_component varchar(54) NULL, -- BOM ���
	dates_wid int8 NULL, -- ���ڴ����
	zmenge numeric(13,3) NULL,
	wipsl numeric(13,3) NULL,
	openpo numeric(13,3) NULL,
	aqkc numeric(13,3) NULL,
	compoment_desc varchar(120) NULL, -- �������
	base_unit varchar(9) NULL, -- ����������λ
	demand_plan_quantity numeric(13) NULL, -- �ƻ�����
	recommend_quantity numeric(13) NULL, -- ���鵽��
	adjust_quantity numeric(13) NULL, -- ��������
	feedback_quantity numeric(13) NULL, -- ���Ϸ���
	actual_quantity numeric(13,3) NULL, -- ʵ�ʵ���
	inv_total_quantity numeric(13,3) NULL, -- �������
	inv_quantity numeric(13,3) NULL, -- �ֿ���
	edge_inv_quantity numeric(13,3) NULL, -- �ֿ߲߱��
	o_inv_quantity numeric(13,3) NULL, -- O���
	oem_inv_quantity numeric(13,3) NULL, -- �������
	dates2 varchar(24) NULL, -- ����
	times varchar(18) NULL, -- ʱ��
	delete_flag varchar(3) NULL, -- ɾ����ʶ
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
COMMENT ON TABLE dw.tf_pp_feed_plan_info IS '��ʵ��-���ϼƻ���ѯ��';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_feed_plan_info.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.version_number IS '�汾��';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.bom_component IS 'BOM ���';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.dates_wid IS '���ڴ����';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.compoment_desc IS '�������';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.base_unit IS '����������λ';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.demand_plan_quantity IS '�ƻ�����';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.recommend_quantity IS '���鵽��';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.adjust_quantity IS '��������';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.feedback_quantity IS '���Ϸ���';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.actual_quantity IS 'ʵ�ʵ���';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.inv_total_quantity IS '�������';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.inv_quantity IS '�ֿ���';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.edge_inv_quantity IS '�ֿ߲߱��';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.o_inv_quantity IS 'O���';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.oem_inv_quantity IS '�������';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.dates2 IS '����';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.times IS 'ʱ��';
COMMENT ON COLUMN dw.tf_pp_feed_plan_info.delete_flag IS 'ɾ����ʶ';

-- Permissions

ALTER TABLE dw.tf_pp_feed_plan_info OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_feed_plan_info TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_feed_plan_info TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_feed_plan_info TO gr_uqry_data;
