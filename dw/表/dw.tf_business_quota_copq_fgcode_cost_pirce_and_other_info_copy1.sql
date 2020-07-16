-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1;

CREATE TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 (
	days date NULL,
	search_material_code varchar(200) NULL,
	cost_price numeric(30,15) NULL, -- �ɱ���
	fgcode varchar(4000) NULL, -- FG-Code����
	product_name varchar(4000) NULL, -- ��Ʒ��
	panel_production_line varchar(4000) NULL, -- Panel ����
	qpnl_cuts varchar(4000) NULL, -- QPNL Cuts
	glass_cuts varchar(4000) NULL, -- Glass cuts�����ͣ�
	cuts numeric(20,10) NULL,
	is_mmg varchar(4000) NULL, -- �Ƿ�Ϊ���У�MMG��
	product_form varchar(4000) NULL, -- ��Ʒ��̬
	property_factory varchar(4000) NULL, -- ��Ȩ����
	"type" varchar(4000) NULL, -- ����
	real_size varchar(4000) NULL, -- ��ʵ�ߴ�
	resolution varchar(4000) NULL, -- �ֱ���
	model text NULL, -- �ͺ�
	sbu_name varchar(4000) NULL, -- SBU����
	bu_name varchar(60) NULL, -- BU����
	product_group varchar(4000) NULL, -- ��Ʒ��
	display_mode varchar(4000) NULL, -- ��ʾģʽ
	narrow_border_borderless varchar(4000) NULL, -- խ�߿�/Borderless
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (days);

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.cost_price IS '�ɱ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.fgcode IS 'FG-Code����';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.product_name IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.panel_production_line IS 'Panel ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.qpnl_cuts IS 'QPNL Cuts';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.glass_cuts IS 'Glass cuts�����ͣ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.is_mmg IS '�Ƿ�Ϊ���У�MMG��';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.product_form IS '��Ʒ��̬';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.property_factory IS '��Ȩ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1."type" IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.real_size IS '��ʵ�ߴ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.resolution IS '�ֱ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.model IS '�ͺ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.sbu_name IS 'SBU����';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.bu_name IS 'BU����';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.product_group IS '��Ʒ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.display_mode IS '��ʾģʽ';
COMMENT ON COLUMN dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1.narrow_border_borderless IS 'խ�߿�/Borderless';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_fgcode_cost_pirce_and_other_info_copy1 TO ur_uapp_data;
