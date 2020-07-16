-- Drop table

-- DROP TABLE ods_dfp.ibdsdb_fnc_basic_data;

CREATE TABLE ods_dfp.ibdsdb_fnc_basic_data (
	uuid varchar(191) NOT NULL DEFAULT NULL::character varying,
	zspnum varchar(191) NULL DEFAULT NULL::character varying, -- �汾��
	zspty varchar(191) NULL DEFAULT NULL::character varying, -- ���ۼƻ�����
	spart varchar(191) NULL DEFAULT NULL::character varying, -- ��Ʒ�����
	kunnr varchar(191) NULL DEFAULT NULL::character varying, -- �ͻ�����
	zmflag varchar(191) NULL DEFAULT NULL::character varying, -- �ڲ��ͻ���ʶ
	werks varchar(191) NULL DEFAULT NULL::character varying, -- ��λ����
	material varchar(191) NULL DEFAULT NULL::character varying, -- ���Ϻ�(FG code)
	"level" varchar(191) NULL DEFAULT NULL::character varying, -- �ȼ�
	"month" varchar(191) NULL DEFAULT NULL::character varying, -- ����
	product_group varchar(191) NULL DEFAULT NULL::character varying, -- ��Ʒ������
	real_product_group varchar(191) NULL DEFAULT NULL::character varying, -- ��Ʒ��(Maker)������ϸ�֣�
	customer varchar(191) NULL DEFAULT NULL::character varying, -- �ͻ�
	real_customer varchar(191) NULL DEFAULT NULL::character varying, -- �ͻ�(��ս��)
	factory varchar(191) NULL DEFAULT NULL::character varying, -- ����
	sales_volume numeric(20,4) NULL DEFAULT NULL::numeric, -- ����
	sales_substrate numeric(20,4) NULL DEFAULT NULL::numeric, -- ���ۻ���
	conversion_substrate numeric(20,4) NULL DEFAULT NULL::numeric, -- �������
	conversion_substrate_g6 numeric(20,4) NULL DEFAULT NULL::numeric, -- �������G6
	sales_area numeric(20,4) NULL DEFAULT NULL::numeric, -- �������
	zzscc varchar(191) NULL DEFAULT NULL::character varying, -- �ߴ�
	zfbl varchar(191) NULL DEFAULT NULL::character varying, -- �ֱ���
	zchxt varchar(191) NULL DEFAULT NULL::character varying, -- ������̬
	zborderless varchar(191) NULL DEFAULT NULL::character varying, -- խ�߿�/Borderless
	zicfa varchar(191) NULL DEFAULT NULL::character varying, -- IC����
	zodmms varchar(191) NULL DEFAULT NULL::character varying, -- ODMģʽ
	zglasscuts varchar(191) NULL DEFAULT NULL::character varying, -- Glass����
	zqpnlcuts varchar(191) NULL DEFAULT NULL::character varying, -- QPNL����
	showtech varchar(191) NULL DEFAULT NULL::character varying, -- ��ʾģʽ/����
	kbetr numeric(20,4) NULL DEFAULT NULL::numeric, -- ����
	konwa varchar(191) NULL DEFAULT NULL::character varying, -- ���ҵ�λ
	ukurs numeric(20,4) NULL DEFAULT NULL::numeric, -- ����
	revenue numeric(20,4) NULL DEFAULT NULL::numeric, -- ����
	sfdx varchar(191) NULL DEFAULT NULL::character varying, -- �Ƿ������
	solx varchar(191) NULL DEFAULT NULL::character varying, -- ����ƾ֤����
	side_effect numeric(20,4) NULL DEFAULT NULL::numeric, -- ��Ч
	profit numeric(20,4) NULL DEFAULT NULL::numeric, -- �����ܶ�
	"bom" numeric(20,4) NULL DEFAULT NULL::numeric, -- BOM
	alpha numeric(20,4) NULL DEFAULT NULL::numeric, -- ��
	zsbpc varchar(191) NULL DEFAULT NULL::character varying, -- ���ͱ��
	posnr varchar(191) NULL DEFAULT NULL::character varying, -- ��Ŀ
	vbeln varchar(191) NULL DEFAULT NULL::character varying, -- ��Ʊƾ֤
	batchid varchar(191) NULL DEFAULT NULL::character varying, -- ���κ�
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Column comments

COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zspnum IS '�汾��';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zspty IS '���ۼƻ�����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.spart IS '��Ʒ�����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.kunnr IS '�ͻ�����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zmflag IS '�ڲ��ͻ���ʶ';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.werks IS '��λ����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.material IS '���Ϻ�(FG code)';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data."level" IS '�ȼ�';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data."month" IS '����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.product_group IS '��Ʒ������';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.real_product_group IS '��Ʒ��(Maker)������ϸ�֣�';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.customer IS '�ͻ�';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.real_customer IS '�ͻ�(��ս��)';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.factory IS '����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sales_volume IS '����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sales_substrate IS '���ۻ���';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.conversion_substrate IS '�������';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.conversion_substrate_g6 IS '�������G6';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sales_area IS '�������';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zzscc IS '�ߴ�';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zfbl IS '�ֱ���';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zchxt IS '������̬';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zborderless IS 'խ�߿�/Borderless';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zicfa IS 'IC����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zodmms IS 'ODMģʽ';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zglasscuts IS 'Glass����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zqpnlcuts IS 'QPNL����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.showtech IS '��ʾģʽ/����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.kbetr IS '����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.konwa IS '���ҵ�λ';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.ukurs IS '����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.revenue IS '����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.sfdx IS '�Ƿ������';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.solx IS '����ƾ֤����';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.side_effect IS '��Ч';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.profit IS '�����ܶ�';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data."bom" IS 'BOM';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.alpha IS '��';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.zsbpc IS '���ͱ��';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.posnr IS '��Ŀ';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.vbeln IS '��Ʊƾ֤';
COMMENT ON COLUMN ods_dfp.ibdsdb_fnc_basic_data.batchid IS '���κ�';

-- Permissions

ALTER TABLE ods_dfp.ibdsdb_fnc_basic_data OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.ibdsdb_fnc_basic_data TO ur_uown_ods;
GRANT ALL ON TABLE ods_dfp.ibdsdb_fnc_basic_data TO gr_uapp_data;
GRANT SELECT ON TABLE ods_dfp.ibdsdb_fnc_basic_data TO gr_uqry_data;
