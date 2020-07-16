-- Drop table

-- DROP TABLE dw.tf_pp_delivery_plan;

CREATE TABLE dw.tf_pp_delivery_plan (
	client_code varchar(9) NULL, -- �ͻ���
	guid varchar(200) NULL, -- ����
	object_id varchar(30) NULL, -- ����
	buzei varchar(36) NULL, -- ���
	verid varchar(42) NULL, -- mrp�汾
	factory_wid int8 NULL, -- ���������
	item_wid int8 NULL, -- ���ϺŴ����
	co_type varchar(6) NULL, -- Эͬ����
	created_by varchar(36) NULL, -- �����������Ա����
	created_at varchar(24) NULL, -- ��¼��������
	"version" numeric(10) NULL, -- �汾��
	version_desc varchar(75) NULL, -- �汾����
	status varchar(6) NULL, -- ״̬
	submit_time varchar(42) NULL, -- ����ʱ��
	re_time varchar(42) NULL, -- ȷ��ʱ��
	changed_by varchar(36) NULL, -- ���Ķ����û�������
	company_wid int8 NULL, -- ��˾��������
	vendor_wid int8 NULL, -- ��Ӧ�̱�������
	vendor_name varchar(105) NULL, -- ��Ӧ������
	vendor_contact_id varchar(75) NULL, -- ��Ӧ����ϵ��
	ekgrp varchar(9) NULL, -- �ɹ���
	eknam varchar(54) NULL, -- �ɹ��������
	purchaser varchar(45) NULL, -- �ɹ�����
	sys_from varchar(30) NULL, -- ��Դϵͳ
	text1 varchar(765) NULL, -- �ɹ���ע
	text2 varchar(765) NULL, -- ��Ӧ�̱�ע
	maktx varchar(120) NULL, -- ��������
	matkl varchar(27) NULL, -- ������
	wgbez varchar(60) NULL, -- ����������
	bstme varchar(9) NULL, -- �ɹ���λ
	lgort varchar(12) NULL, -- ���ص�
	menge_bs numeric(13,3) NULL, -- open po��˰
	menge_ks numeric(13,3) NULL, -- open po��˰
	ven_stock numeric NULL, -- ����
	menge_sum numeric NULL, -- ������
	menge_date_wid int8 NULL, -- �����ƻ��մ����
	menge_amount varchar NULL, -- �����ƻ�����
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
COMMENT ON TABLE dw.tf_pp_delivery_plan IS '�����ƻ�';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_delivery_plan.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.guid IS '����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.object_id IS '����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.buzei IS '���';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.verid IS 'mrp�汾';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.item_wid IS '���ϺŴ����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.co_type IS 'Эͬ����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.created_by IS '�����������Ա����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.created_at IS '��¼��������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan."version" IS '�汾��';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.version_desc IS '�汾����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.status IS '״̬';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.submit_time IS '����ʱ��';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.re_time IS 'ȷ��ʱ��';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.changed_by IS '���Ķ����û�������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.company_wid IS '��˾��������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.vendor_wid IS '��Ӧ�̱�������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.vendor_name IS '��Ӧ������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.vendor_contact_id IS '��Ӧ����ϵ��';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.ekgrp IS '�ɹ���';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.eknam IS '�ɹ��������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.purchaser IS '�ɹ�����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.sys_from IS '��Դϵͳ';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.text1 IS '�ɹ���ע';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.text2 IS '��Ӧ�̱�ע';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.maktx IS '��������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.matkl IS '������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.wgbez IS '����������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.bstme IS '�ɹ���λ';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.lgort IS '���ص�';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_bs IS 'open po��˰';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_ks IS 'open po��˰';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.ven_stock IS '����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_sum IS '������';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_date_wid IS '�����ƻ��մ����';
COMMENT ON COLUMN dw.tf_pp_delivery_plan.menge_amount IS '�����ƻ�����';

-- Permissions

ALTER TABLE dw.tf_pp_delivery_plan OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_delivery_plan TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_delivery_plan TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_delivery_plan TO gr_uqry_data;
