-- Drop table

-- DROP TABLE dw.tf_qm_component_library_maintenance_ledger;

CREATE TABLE dw.tf_qm_component_library_maintenance_ledger (
	part_id varchar(256) NULL, -- ����id
	link_vendor_part_id varchar(256) NULL, -- ����id
	vendor_info_id varchar(256) NULL, -- ����id
	dict_datum_id varchar(256) NULL, -- ����id
	flag numeric NULL, -- ʹ��״̬����
	flag_name text NULL, -- ʹ��״̬����
	part_code varchar(256) NULL, -- ��������
	part_description varchar(1024) NULL, -- ��������
	part_unit varchar(128) NULL, -- ������Ԫ
	part_type varchar(64) NULL, -- �������� ROH/ROH1
	part_model varchar(1024) NULL, -- �����ͺ�
	"version" varchar(10) NULL, -- �汾
	created_time_wid int8 NULL, -- ����ʱ������
	audit_status varchar(48) NULL, -- ���״̬
	vendor_wid int8 NULL, -- �����̴�������
	vendor_full_name_cn varchar(4000) NULL, -- ����������
	datum_name varchar(1024) NULL, -- ������׼
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
COMMENT ON TABLE dw.tf_qm_component_library_maintenance_ledger IS '������ά��̨��';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_id IS '����id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.link_vendor_part_id IS '����id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.vendor_info_id IS '����id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.dict_datum_id IS '����id';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.flag IS 'ʹ��״̬����';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.flag_name IS 'ʹ��״̬����';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_code IS '��������';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_description IS '��������';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_unit IS '������Ԫ';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_type IS '�������� ROH/ROH1';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.part_model IS '�����ͺ�';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger."version" IS '�汾';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.created_time_wid IS '����ʱ������';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.audit_status IS '���״̬';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.vendor_wid IS '�����̴�������';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.vendor_full_name_cn IS '����������';
COMMENT ON COLUMN dw.tf_qm_component_library_maintenance_ledger.datum_name IS '������׼';

-- Permissions

ALTER TABLE dw.tf_qm_component_library_maintenance_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_component_library_maintenance_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_component_library_maintenance_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_component_library_maintenance_ledger TO gr_uqry_data;
