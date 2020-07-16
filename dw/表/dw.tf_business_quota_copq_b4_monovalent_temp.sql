-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_monovalent_temp;

CREATE TABLE dw.tf_business_quota_copq_b4_monovalent_temp (
	client varchar(255) NULL, -- �ͻ���
	"year" varchar(255) NULL, -- �������� yyyy
	"month" varchar(255) NULL, -- �����ڼ�
	cost_estimate_number varchar(255) NULL, -- û�������ṹ�ĳɱ�����ĳɱ�������
	valuation_area varchar(255) NULL, -- ������Χ
	category varchar(255) NULL, -- �����Ϸ�����������ʾ�е����
	material_number varchar(255) NULL, -- ���Ϻ�
	total_value numeric(18,2) NULL, -- ���۵��ܿ���ֵ
	single_level_price_diff numeric(18,2) NULL, -- �����۸����
	single_level_exchange_diff numeric(18,2) NULL, -- �������ʲ���
	multilevel_price_diff numeric(18,2) NULL, -- �༶�۸����
	multilevel_exchange_diff numeric(18,2) NULL, -- �༶���ʲ���
	total_inventory numeric(18,2) NULL, -- �ܼ��ѹ��ƿ��
	moving_average_price numeric(18,2) NULL, -- �ƶ�ƽ���۸�/���ڵ���
	price_unit numeric(18,2) NULL, -- �۸�λ
	cycle_price_unit numeric(18,2) NULL, -- ���ڼ۸�λ
	price numeric(18,6) NULL, -- ����
	value_structure_type varchar(255) NULL, -- ֵ�ṹ����
	process_category varchar(255) NULL, -- ��ѡ�ɹ���ѡ���Ѵ�������
	po_alter_process varchar(255) NULL, -- ��ѡ�ɹ�/����
	currency_type_valuation_view varchar(255) NULL, -- �������ͺ�������ͼ
	valuation_type varchar(255) NULL, -- ��������
	type_price varchar(255) NULL, -- �۸�����
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar,
	price_current numeric(18,6) NULL, -- �����������ļ۸�
	price_move_avg numeric(18,6) NULL, -- �ƶ�ƽ����
	price_close_inv numeric(18,6) NULL, -- ��ĩ���۸�
	price_his numeric(18,6) NULL, -- ��ʷ�۸�
	price_pre_month numeric(18,6) NULL, -- ���¼۸�
	price_same_modle numeric(18,6) NULL, -- ͬ�ͺż۸�
	month_his varchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY ("year", "month");
COMMENT ON TABLE dw.tf_business_quota_copq_b4_monovalent_temp IS 'COPQָ�꣺ERP �ɱ���-B4����';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp."year" IS '�������� yyyy';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp."month" IS '�����ڼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.cost_estimate_number IS 'û�������ṹ�ĳɱ�����ĳɱ�������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.valuation_area IS '������Χ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.category IS '�����Ϸ�����������ʾ�е����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.material_number IS '���Ϻ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.total_value IS '���۵��ܿ���ֵ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.single_level_price_diff IS '�����۸����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.single_level_exchange_diff IS '�������ʲ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.multilevel_price_diff IS '�༶�۸����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.multilevel_exchange_diff IS '�༶���ʲ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.total_inventory IS '�ܼ��ѹ��ƿ��';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.moving_average_price IS '�ƶ�ƽ���۸�/���ڵ���';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price_unit IS '�۸�λ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.cycle_price_unit IS '���ڼ۸�λ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.value_structure_type IS 'ֵ�ṹ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.process_category IS '��ѡ�ɹ���ѡ���Ѵ�������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.po_alter_process IS '��ѡ�ɹ�/����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.currency_type_valuation_view IS '�������ͺ�������ͼ';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.valuation_type IS '��������';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.type_price IS '�۸�����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price_current IS '�����������ļ۸�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price_move_avg IS '�ƶ�ƽ����';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price_close_inv IS '��ĩ���۸�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price_his IS '��ʷ�۸�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price_pre_month IS '���¼۸�';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent_temp.price_same_modle IS 'ͬ�ͺż۸�';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_monovalent_temp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_monovalent_temp TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_monovalent_temp TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_monovalent_temp TO gr_uapp_data;
