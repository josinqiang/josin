-- Drop table

-- DROP TABLE dw.td_business_quota_copq_fgcode_property_factory;

CREATE TABLE dw.td_business_quota_copq_fgcode_property_factory (
	row_wid int8 NULL,
	codeid numeric(10) NULL, -- ID
	product_name varchar(4000) NULL, -- ��Ʒ��
	fgcode varchar(4000) NULL, -- FG-Code����
	panel_production_line varchar(4000) NULL, -- Panel ����
	qpnl_cuts varchar(4000) NULL, -- QPNL Cuts
	glass_cuts varchar(4000) NULL, -- Glass cuts�����ͣ�
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
	is_mmg varchar(4000) NULL, -- �Ƿ�Ϊ���У�MMG��
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
COMMENT ON TABLE dw.td_business_quota_copq_fgcode_property_factory IS 'COPQָ��-FGCode��Ȩ������';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.codeid IS 'ID';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.product_name IS '��Ʒ��';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.fgcode IS 'FG-Code����';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.panel_production_line IS 'Panel ����';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.qpnl_cuts IS 'QPNL Cuts';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.glass_cuts IS 'Glass cuts�����ͣ�';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.product_form IS '��Ʒ��̬';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.property_factory IS '��Ȩ����';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory."type" IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.real_size IS '��ʵ�ߴ�';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.resolution IS '�ֱ���';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.model IS '�ͺ�';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.sbu_name IS 'SBU����';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.bu_name IS 'BU����';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.product_group IS '��Ʒ��';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.display_mode IS '��ʾģʽ';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.narrow_border_borderless IS 'խ�߿�/Borderless';
COMMENT ON COLUMN dw.td_business_quota_copq_fgcode_property_factory.is_mmg IS '�Ƿ�Ϊ���У�MMG��';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_fgcode_property_factory OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_fgcode_property_factory TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_business_quota_copq_fgcode_property_factory TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_business_quota_copq_fgcode_property_factory TO gr_uapp_data;
