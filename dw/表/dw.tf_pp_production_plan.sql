-- Drop table

-- DROP TABLE dw.tf_pp_production_plan;

CREATE TABLE dw.tf_pp_production_plan (
	client_code varchar(9) NULL, -- �ͻ���
	verison_number varchar(30) NULL, -- �汾��
	factory_wid int8 NULL, -- ���������
	item_wid int8 NULL, -- ���ϺŴ����
	special_flag varchar(12) NULL, -- �����ʶ
	production_place varchar(60) NULL, -- �����ص�
	classify varchar(30) NULL, -- ����
	chicun varchar(180) NULL,
	plan_date_wid int8 NULL, -- ���ڴ����
	plan_quantity numeric(13,3) NULL, -- �ƻ�����
	delete_flag varchar(3) NULL, -- ɾ����ʶ
	datlp1 varchar(24) NULL,
	datlp2 varchar(24) NULL,
	zrtpf varchar(60) NULL,
	zdover varchar(45) NULL,
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
COMMENT ON TABLE dw.tf_pp_production_plan IS '��������-�����ƻ���Ϣ��';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_production_plan.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_production_plan.verison_number IS '�汾��';
COMMENT ON COLUMN dw.tf_pp_production_plan.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_pp_production_plan.item_wid IS '���ϺŴ����';
COMMENT ON COLUMN dw.tf_pp_production_plan.special_flag IS '�����ʶ';
COMMENT ON COLUMN dw.tf_pp_production_plan.production_place IS '�����ص�';
COMMENT ON COLUMN dw.tf_pp_production_plan.classify IS '����';
COMMENT ON COLUMN dw.tf_pp_production_plan.plan_date_wid IS '���ڴ����';
COMMENT ON COLUMN dw.tf_pp_production_plan.plan_quantity IS '�ƻ�����';
COMMENT ON COLUMN dw.tf_pp_production_plan.delete_flag IS 'ɾ����ʶ';

-- Permissions

ALTER TABLE dw.tf_pp_production_plan OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_production_plan TO gr_uqry_data;
