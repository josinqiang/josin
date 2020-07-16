-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity;

CREATE TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity (
	id numeric(19) NULL, -- ����
	subject varchar(510) NULL, -- ��Ŀ
	company varchar(510) NULL, -- ��˾
	"year" varchar(510) NULL, -- ��
	"month" varchar(510) NULL, -- ��
	fgcode varchar(510) NULL, -- FGCode
	ng_name varchar(510) NULL, -- ��������
	subject_type varchar(510) NULL, -- ����
	loss_level varchar(510) NULL, -- �ȼ�
	num numeric(10) NULL, -- ����
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
COMMENT ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity IS 'COPQָ��-Module����&����Ʒ����';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.id IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.subject IS '��Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.company IS '��˾';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity."year" IS '��';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity."month" IS '��';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.fgcode IS 'FGCode';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.ng_name IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.subject_type IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.loss_level IS '�ȼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity.num IS '����';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_module_scrap_downgrade_product_quantity TO gr_uqry_data;
