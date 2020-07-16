-- Drop table

-- DROP TABLE dw.tf_rd_boepm_production;

CREATE TABLE dw.tf_rd_boepm_production (
	fgcode_id varchar(50) NULL, -- Fgcode id
	fgcode_name varchar(1500) NULL, -- Fgcode����
	project_id_boepm varchar(50) NULL, -- Boepmϵͳ��ĿID
	project_name varchar(1500) NULL, -- ��Ŀ����
	fgcode_edition varchar(10) NULL, -- Fgcode�汾
	fgcode_status varchar(30) NULL, -- FG-code��ǰ״̬
	create_time timestamp NULL, -- FG-codeԤ����ʱ��
	receive_time timestamp NULL, -- FG-code��ǰ״̬ʱ��
	rp_time timestamp NULL, -- FG-code RPʱ��
	mp_time timestamp NULL, -- FG-code MPʱ��
	factory_bom varchar(100) NULL, -- BOM��������
	array_no varchar(100) NULL, -- Array NO.
	cf_no varchar(100) NULL, -- CF NO.
	cell_no varchar(100) NULL, -- Cell NO.
	sensor_no varchar(100) NULL, -- Sensor No.
	factory varchar(4000) NULL, -- �ֵ�
	product_name varchar(4000) NULL, -- ��Ʒ��
	dimensions varchar(4000) NULL, -- �ߴ�
	mdm_project_name varchar(4000) NULL, -- MDMϵͳ��Ŀ����
	shipment_mode varchar(4000) NULL, -- ����ģʽ
	project_id_mdm varchar(4000) NULL, -- MDMϵͳ��ĿID
	product_type varchar(4000) NULL, -- ��Ʒ��
	fgcode_creater varchar(60) NULL, -- FGcode������
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
COMMENT ON TABLE dw.tf_rd_boepm_production IS 'boepmϵͳ����Ʒ��Ϣ��';

-- Column comments

COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_id IS 'Fgcode id';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_name IS 'Fgcode����';
COMMENT ON COLUMN dw.tf_rd_boepm_production.project_id_boepm IS 'Boepmϵͳ��ĿID';
COMMENT ON COLUMN dw.tf_rd_boepm_production.project_name IS '��Ŀ����';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_edition IS 'Fgcode�汾';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_status IS 'FG-code��ǰ״̬';
COMMENT ON COLUMN dw.tf_rd_boepm_production.create_time IS 'FG-codeԤ����ʱ��';
COMMENT ON COLUMN dw.tf_rd_boepm_production.receive_time IS 'FG-code��ǰ״̬ʱ��';
COMMENT ON COLUMN dw.tf_rd_boepm_production.rp_time IS 'FG-code RPʱ��';
COMMENT ON COLUMN dw.tf_rd_boepm_production.mp_time IS 'FG-code MPʱ��';
COMMENT ON COLUMN dw.tf_rd_boepm_production.factory_bom IS 'BOM��������';
COMMENT ON COLUMN dw.tf_rd_boepm_production.array_no IS 'Array NO.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.cf_no IS 'CF NO.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.cell_no IS 'Cell NO.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.sensor_no IS 'Sensor No.';
COMMENT ON COLUMN dw.tf_rd_boepm_production.factory IS '�ֵ�';
COMMENT ON COLUMN dw.tf_rd_boepm_production.product_name IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_rd_boepm_production.dimensions IS '�ߴ�';
COMMENT ON COLUMN dw.tf_rd_boepm_production.mdm_project_name IS 'MDMϵͳ��Ŀ����';
COMMENT ON COLUMN dw.tf_rd_boepm_production.shipment_mode IS '����ģʽ';
COMMENT ON COLUMN dw.tf_rd_boepm_production.project_id_mdm IS 'MDMϵͳ��ĿID';
COMMENT ON COLUMN dw.tf_rd_boepm_production.product_type IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_rd_boepm_production.fgcode_creater IS 'FGcode������';

-- Permissions

ALTER TABLE dw.tf_rd_boepm_production OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_rd_boepm_production TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_rd_boepm_production TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_rd_boepm_production TO gr_uqry_data;
