-- Drop table

-- DROP TABLE dw.tf_qm_oqc_fpoq_data_ledger;

CREATE TABLE dw.tf_qm_oqc_fpoq_data_ledger (
	fpoq_data_id numeric(19) NULL,
	lot_detail_id numeric(19) NULL,
	bed_detail_id numeric(19) NULL,
	bed_product_detail_id numeric(19) NULL,
	factory varchar(510) NULL, -- ����
	is_submit varchar(510) NULL, -- �Ƿ��ύ
	sponsor_date_wid int8 NULL, -- �������ڴ����
	check_date_wid int8 NULL, -- �������ڴ����
	total_week numeric(10) NULL, -- �ܱ�
	team varchar(510) NULL, -- ����
	fg_code_wid int8 NULL, -- fg-code�����
	sam_size numeric NULL, -- �ߴ�
	product_type varchar(510) NULL, -- ��Ʒ���
	product_state varchar(510) NULL, -- ��Ʒ��̬
	resolving_power varchar(510) NULL, -- �ֱ���
	show_mode varchar(510) NULL, -- ��ʾģʽ
	customer varchar(510) NULL, -- �ͻ�
	touch_category varchar(510) NULL, -- touch���
	product_facade_category varchar(510) NULL, -- ��Ʒ������
	lot_id varchar(255) NULL, -- lotid
	pallet_id varchar(510) NULL, -- palletid
	lot_detail_rev_code varchar(510) NULL, -- lot�����code
	lot_detail_grade varchar(510) NULL, -- lot�����grade
	lot_detail_box_amount numeric NULL, -- lot����box����(pal��)
	lot_detail_panel_amount numeric NULL, -- lot�����panel����(pal��)
	panel_amount numeric NULL, -- panel����
	box_amount numeric NULL, -- box����
	check_box_amount numeric NULL, -- ���box����
	practical_amount numeric NULL, -- ʵ�ʳ������
	checkout_result varchar(510) NULL, -- �����
	check_type varchar(510) NULL, -- �������
	badness_amount numeric NULL, -- ��������
	bad_item_name varchar(510) NULL, -- ��������
	bed_detail_badness_amount numeric NULL, -- bed���鲻������
	badness_rate numeric NULL, -- ������(%)
	module_id varchar(510) NULL, -- moduleid
	in_pallet_id varchar(510) NULL, -- ����palletid
	in_boxt_id varchar(510) NULL, -- ����boxid
	product_detail_rev_code varchar(510) NULL, -- product�����code
	product_detail_grade varchar(510) NULL, -- product�����grade
	product_detail_bad_item_code varchar(510) NULL, -- ��ϸ��Ʒ��������
	product_detail_bad_item_name varchar(510) NULL, -- ��ϸ��Ʒ��������
	inspector varchar(510) NULL, -- �����Ա
	system_integration_time timestamp NULL, -- �����Ա
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
COMMENT ON TABLE dw.tf_qm_oqc_fpoq_data_ledger IS '��ʵ��-FPOQ����̨��';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.factory IS '����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.is_submit IS '�Ƿ��ύ';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.sponsor_date_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.check_date_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.total_week IS '�ܱ�';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.team IS '����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.fg_code_wid IS 'fg-code�����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.sam_size IS '�ߴ�';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_type IS '��Ʒ���';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_state IS '��Ʒ��̬';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.resolving_power IS '�ֱ���';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.show_mode IS '��ʾģʽ';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.customer IS '�ͻ�';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.touch_category IS 'touch���';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_facade_category IS '��Ʒ������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_id IS 'lotid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.pallet_id IS 'palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_rev_code IS 'lot�����code';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_grade IS 'lot�����grade';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_box_amount IS 'lot����box����(pal��)';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.lot_detail_panel_amount IS 'lot�����panel����(pal��)';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.panel_amount IS 'panel����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.box_amount IS 'box����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.check_box_amount IS '���box����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.practical_amount IS 'ʵ�ʳ������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.checkout_result IS '�����';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.check_type IS '�������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.badness_amount IS '��������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.bad_item_name IS '��������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.bed_detail_badness_amount IS 'bed���鲻������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.badness_rate IS '������(%)';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.module_id IS 'moduleid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.in_pallet_id IS '����palletid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.in_boxt_id IS '����boxid';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_rev_code IS 'product�����code';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_grade IS 'product�����grade';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_bad_item_code IS '��ϸ��Ʒ��������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.product_detail_bad_item_name IS '��ϸ��Ʒ��������';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.inspector IS '�����Ա';
COMMENT ON COLUMN dw.tf_qm_oqc_fpoq_data_ledger.system_integration_time IS '�����Ա';

-- Permissions

ALTER TABLE dw.tf_qm_oqc_fpoq_data_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_fpoq_data_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oqc_fpoq_data_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_oqc_fpoq_data_ledger TO gr_uqry_data;
