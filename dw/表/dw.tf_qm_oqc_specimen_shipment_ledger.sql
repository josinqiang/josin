-- Drop table

-- DROP TABLE dw.tf_qm_oqc_specimen_shipment_ledger;

CREATE TABLE dw.tf_qm_oqc_specimen_shipment_ledger (
	data_id numeric(19) NULL,
	lot_detail_id numeric(19) NULL,
	baditem_record_id numeric(19) NULL,
	bed_product_detail_id numeric(19) NULL,
	factory varchar(510) NULL, -- ����
	is_submit varchar(510) NULL, -- �Ƿ��ύ
	receive_date_wid int8 NULL, -- �������ڴ����
	check_date_wid int8 NULL, -- �������ڴ����
	total_week numeric(10) NULL, -- �ܱ�
	team varchar(510) NULL, -- ����
	fg_code_wid int8 NULL, -- fgcode�����
	pro_size numeric NULL, -- �ߴ�
	product_type varchar(510) NULL, -- ��Ʒ���
	product_state varchar(510) NULL, -- ��Ʒ��̬
	resolving_power varchar(510) NULL, -- �ֱ���
	show_mode varchar(510) NULL, -- ��ʾģʽ
	customer varchar(510) NULL, -- �ͻ�
	specimen_stage varchar(510) NULL, -- ��Ʒ�׶�
	attestation_obj varchar(510) NULL, -- ��֤��Ŀ
	consignor varchar(510) NULL, -- ί����
	inspect_method varchar(510) NULL, -- ���鷽��
	lot_id varchar(510) NULL, -- lotid
	pallet_id varchar(510) NULL, -- lot����-palletid
	lot_detail_rev_code varchar(510) NULL, -- lot����-code
	lot_detail_grade varchar(510) NULL, -- lot����-grade
	box_amount numeric NULL, -- lot����-box����(pal��)
	panel_amount numeric NULL, -- lot����-panel����(pal��)
	need_amount numeric NULL, -- ��������
	entrust_amount numeric NULL, -- ί������
	inspect_amount numeric NULL, -- �������
	qualified_amount numeric NULL, -- ok����
	qualified_rate numeric NULL, -- ok��(%)
	badness_amount numeric NULL, -- ��������
	badness_rate numeric NULL, -- ������(%)
	baditem_record_bad_item_name varchar(510) NULL, -- ��������-��������
	baditem_record_badness_amount numeric NULL, -- ��������-��������
	baditem_record_badness_rate numeric NULL, -- ��������-������(%)
	module_id varchar(510) NULL, -- ������Ʒ����-moduleid
	in_pallet_id varchar(510) NULL, -- ������Ʒ����-����palletid
	in_boxt_id varchar(510) NULL, -- ������Ʒ����-����boxid
	product_detail_rev_code varchar(510) NULL, -- ������Ʒ����-code
	product_detail_grade varchar(510) NULL, -- ������Ʒ����-grade
	bad_item_code varchar(510) NULL, -- ������Ʒ����-��������
	product_detail_bad_item_name varchar(510) NULL, -- ������Ʒ����-��������
	inspector varchar(510) NULL, -- �����Ա
	system_integration_time timestamp NULL, -- ϵͳ����ʱ��
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
COMMENT ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger IS '��ʵ��-��Ʒ��������̨��';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.factory IS '����';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.is_submit IS '�Ƿ��ύ';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.receive_date_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.check_date_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.total_week IS '�ܱ�';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.team IS '����';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.fg_code_wid IS 'fgcode�����';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.pro_size IS '�ߴ�';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_type IS '��Ʒ���';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_state IS '��Ʒ��̬';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.resolving_power IS '�ֱ���';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.show_mode IS '��ʾģʽ';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.customer IS '�ͻ�';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.specimen_stage IS '��Ʒ�׶�';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.attestation_obj IS '��֤��Ŀ';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.consignor IS 'ί����';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.inspect_method IS '���鷽��';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.lot_id IS 'lotid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.pallet_id IS 'lot����-palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.lot_detail_rev_code IS 'lot����-code';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.lot_detail_grade IS 'lot����-grade';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.box_amount IS 'lot����-box����(pal��)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.panel_amount IS 'lot����-panel����(pal��)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.need_amount IS '��������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.entrust_amount IS 'ί������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.inspect_amount IS '�������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.qualified_amount IS 'ok����';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.qualified_rate IS 'ok��(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.badness_amount IS '��������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.badness_rate IS '������(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.baditem_record_bad_item_name IS '��������-��������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.baditem_record_badness_amount IS '��������-��������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.baditem_record_badness_rate IS '��������-������(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.module_id IS '������Ʒ����-moduleid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.in_pallet_id IS '������Ʒ����-����palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.in_boxt_id IS '������Ʒ����-����boxid';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_detail_rev_code IS '������Ʒ����-code';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_detail_grade IS '������Ʒ����-grade';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.bad_item_code IS '������Ʒ����-��������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.product_detail_bad_item_name IS '������Ʒ����-��������';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.inspector IS '�����Ա';
COMMENT ON COLUMN dw.tf_qm_oqc_specimen_shipment_ledger.system_integration_time IS 'ϵͳ����ʱ��';

-- Permissions

ALTER TABLE dw.tf_qm_oqc_specimen_shipment_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_oqc_specimen_shipment_ledger TO gr_uqry_data;
