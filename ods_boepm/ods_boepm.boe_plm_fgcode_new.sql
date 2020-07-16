-- Drop table

-- DROP TABLE ods_boepm.boe_plm_fgcode_new;

CREATE TABLE ods_boepm.boe_plm_fgcode_new (
	fgcode_id varchar(50) NOT NULL, -- fgcode���
	fgcode_name varchar(300) NULL, -- fgcode����
	project_id varchar(50) NULL, -- ��Ŀ���
	project_name varchar(100) NULL, -- ��Ŀ����
	fgcode_edition varchar(20) NOT NULL, -- fgcode�汾��
	fgcode_status varchar(30) NULL, -- fgcode״̬
	flow_name varchar(60) NOT NULL, -- plm��������
	create_time timestamp NULL, -- fgcode����ʱ��
	receive_time timestamp NULL, -- ���ݽ���ʱ��
	rp_time timestamp NULL, -- FG Code RPʱ��
	mp_time timestamp NULL, -- FG Code MPʱ��
	factory varchar(100) NULL, -- �������͹���
	array_no varchar(100) NULL, -- Array No
	cf_no varchar(100) NULL, -- CF No
	cell_no varchar(100) NULL, -- Cell No
	sensor_no varchar(100) NULL, -- Sensor No
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Column comments

COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_id IS 'fgcode���';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_name IS 'fgcode����';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.project_id IS '��Ŀ���';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.project_name IS '��Ŀ����';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_edition IS 'fgcode�汾��';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.fgcode_status IS 'fgcode״̬';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.flow_name IS 'plm��������';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.create_time IS 'fgcode����ʱ��';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.receive_time IS '���ݽ���ʱ��';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.rp_time IS 'FG Code RPʱ��';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.mp_time IS 'FG Code MPʱ��';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.factory IS '�������͹���';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.array_no IS 'Array No';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.cf_no IS 'CF No';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.cell_no IS 'Cell No';
COMMENT ON COLUMN ods_boepm.boe_plm_fgcode_new.sensor_no IS 'Sensor No';

-- Permissions

ALTER TABLE ods_boepm.boe_plm_fgcode_new OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode_new TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.boe_plm_fgcode_new TO gr_uapp_data;
GRANT SELECT ON TABLE ods_boepm.boe_plm_fgcode_new TO gr_uqry_data;
