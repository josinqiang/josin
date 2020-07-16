-- Drop table

-- DROP TABLE dw.tf_pp_fgcode_semi_finished_product;

CREATE TABLE dw.tf_pp_fgcode_semi_finished_product (
	row_wid int8 NULL,
	fgcode varchar(20) NULL, -- FG-Code����
	semi_finished_product varchar(20) NULL, -- ���Ʒ����
	"type" varchar(20) NULL, -- ����
	english_description varchar(4000) NULL, -- Ӣ������
	property_factory varchar(4000) NULL, -- ��Ȩ����
	product_group varchar(4000) NULL, -- ��Ʒ��
	sbu_name varchar(4000) NULL, -- SBU����
	is_mmg varchar(4000) NULL, -- �Ƿ�Ϊ���У�MMG��
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
COMMENT ON TABLE dw.tf_pp_fgcode_semi_finished_product IS 'FGCode��Ӧ���Ʒ��ϵ��';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.fgcode IS 'FG-Code����';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.semi_finished_product IS '���Ʒ����';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product."type" IS '����';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.english_description IS 'Ӣ������';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.property_factory IS '��Ȩ����';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.product_group IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.sbu_name IS 'SBU����';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.is_mmg IS '�Ƿ�Ϊ���У�MMG��';

-- Permissions

ALTER TABLE dw.tf_pp_fgcode_semi_finished_product OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_fgcode_semi_finished_product TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_pp_fgcode_semi_finished_product TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_pp_fgcode_semi_finished_product TO gr_uapp_data;
