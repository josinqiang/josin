-- Drop table

-- DROP TABLE dw.tf_pur_purchase_order_info_for_copq;

CREATE TABLE dw.tf_pur_purchase_order_info_for_copq (
	year_month varchar(6) NULL, -- ����
	real_month varchar(6) NULL, -- ʵ�����ݵ������·�
	material_number varchar(100) NULL, -- ���Ϻ�
	currency varchar(20) NULL, -- ����
	rate numeric(20,10) NULL, -- ϵ��
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

-- Column comments

COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.year_month IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.real_month IS 'ʵ�����ݵ������·�';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.material_number IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.currency IS '����';
COMMENT ON COLUMN dw.tf_pur_purchase_order_info_for_copq.rate IS 'ϵ��';

-- Permissions

ALTER TABLE dw.tf_pur_purchase_order_info_for_copq OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info_for_copq TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_pur_purchase_order_info_for_copq TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_pur_purchase_order_info_for_copq TO gr_uapp_data;
