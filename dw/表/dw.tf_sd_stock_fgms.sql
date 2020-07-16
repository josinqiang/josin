-- Drop table

-- DROP TABLE dw.tf_sd_stock_fgms;

CREATE TABLE dw.tf_sd_stock_fgms (
	erp_werks varchar(8) NULL, -- ERP����
	erp_lgort varchar(8) NULL, -- ERP��λ
	matnr varchar(36) NULL, -- FGCode
	charg varchar(20) NULL, -- �ȼ�
	vbeln_dn varchar(20) NULL, -- Delivery
	holding varchar(10) NULL, -- �Ƿ�Hold
	hold_type varchar(10) NULL, -- Hold����
	hold_reason varchar(205) NULL, -- Holdԭ��
	hold_date timestamp NULL, -- Hold���ڣ����һ�Σ�
	zlfimg_single numeric(13,3) NULL, -- Singel������pcs��
	clabs numeric(13,3) NULL, -- Panel������pcs�� ID
	rk_date date NULL, -- �������
	rk_time varchar(10) NULL, -- ���ʱ��
	data_source varchar(10) NULL, -- ����Դ
	pallet_id varchar(100) NULL, -- Pallet ID
	source_table_name varchar(20) NULL, -- ��Դ��
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
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_sd_stock_fgms IS 'fgmsʵʱ�������';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_stock_fgms.erp_werks IS 'ERP����';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.erp_lgort IS 'ERP��λ';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.matnr IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.charg IS '�ȼ�';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.vbeln_dn IS 'Delivery';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.holding IS '�Ƿ�Hold';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.hold_type IS 'Hold����';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.hold_reason IS 'Holdԭ��';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.hold_date IS 'Hold���ڣ����һ�Σ�';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.zlfimg_single IS 'Singel������pcs��';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.clabs IS 'Panel������pcs�� ID';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.rk_date IS '�������';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.rk_time IS '���ʱ��';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.data_source IS '����Դ';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.pallet_id IS 'Pallet ID';
COMMENT ON COLUMN dw.tf_sd_stock_fgms.source_table_name IS '��Դ��';

-- Permissions

ALTER TABLE dw.tf_sd_stock_fgms OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_stock_fgms TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_stock_fgms TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_stock_fgms TO gr_uqry_data;
