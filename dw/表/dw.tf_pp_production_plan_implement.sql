-- Drop table

-- DROP TABLE dw.tf_pp_production_plan_implement;

CREATE TABLE dw.tf_pp_production_plan_implement (
	client_code varchar(9) NULL, -- �ͻ���
	version_number varchar(30) NULL, -- �汾��
	factory_wid int8 NULL, -- ������������
	item_wid int8 NULL, -- ���ϱ�������
	special_flag varchar(12) NULL, -- �����ʶ
	production_location varchar(60) NULL, -- �����ص�
	classify varchar(30) NULL, -- ����
	chicun varchar(180) NULL,
	dates_wid int8 NULL, -- ���ڴ����
	planned_quantity numeric(13,3) NULL, -- �ƻ�����
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
COMMENT ON TABLE dw.tf_pp_production_plan_implement IS '��ʵ��-Daily�����ƻ�ִ��';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_production_plan_implement.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.version_number IS '�汾��';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.factory_wid IS '������������';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.item_wid IS '���ϱ�������';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.special_flag IS '�����ʶ';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.production_location IS '�����ص�';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.classify IS '����';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.dates_wid IS '���ڴ����';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.planned_quantity IS '�ƻ�����';
COMMENT ON COLUMN dw.tf_pp_production_plan_implement.delete_flag IS 'ɾ����ʶ';

-- Permissions

ALTER TABLE dw.tf_pp_production_plan_implement OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan_implement TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_production_plan_implement TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_production_plan_implement TO gr_uqry_data;
