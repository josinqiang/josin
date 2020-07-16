-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap;

CREATE TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap (
	line_no numeric(20) NULL, -- �к�
	factory varchar(300) NULL, -- ����
	product_id varchar(300) NULL, -- ��ƷID
	item_no varchar(300) NULL, -- ���Ϻ�
	sction varchar(300) NULL, -- ����
	no_good_code varchar(300) NULL, -- ����code
	no_good_name varchar(300) NULL, -- ��������
	pnl_type varchar(300) NULL, -- PNL����
	pnl_grade varchar(300) NULL, -- PNL�ȼ�
	"_date" date NULL, -- ����
	creat_time timestamp NULL, -- ץȡ����ʱ��
	unit varchar(300) NULL, -- ��λ
	quantity numeric NULL, -- ����
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del bpchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap IS 'COPQ����MES';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.line_no IS '�к�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.factory IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.product_id IS '��ƷID';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.item_no IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.sction IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.no_good_code IS '����code';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.no_good_name IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.pnl_type IS 'PNL����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.pnl_grade IS 'PNL�ȼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap."_date" IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.creat_time IS 'ץȡ����ʱ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.unit IS '��λ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap.quantity IS '����';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_cf_z4t_eai_scrap TO gr_uqry_data;
