-- Drop table

-- DROP TABLE dw.tf_fin_das_leading_group_manual_dxzx;

CREATE TABLE dw.tf_fin_das_leading_group_manual_dxzx (
	project varchar(100) NOT NULL, -- ��Ŀ
	production_line varchar(100) NOT NULL, -- ����
	bu varchar(100) NOT NULL, -- BU
	years numeric(4) NOT NULL, -- ���
	year_round numeric(30,10) NULL, -- ȫ��ϼ�
	january numeric(30,10) NULL, -- 1��
	february numeric(30,10) NULL, -- 2��
	march numeric(30,10) NULL, -- 3��
	april numeric(30,10) NULL, -- 4��
	may numeric(30,10) NULL, -- 5��
	june numeric(30,10) NULL, -- 6��
	july numeric(30,10) NULL, -- 7��
	august numeric(30,10) NULL, -- 8��
	september numeric(30,10) NULL, -- 9��
	october numeric(30,10) NULL, -- 10��
	november numeric(30,10) NULL, -- 11��
	december numeric(30,10) NULL, -- 12��
	next_january numeric(30,10) NULL, -- ����1��
	next_february numeric(30,10) NULL, -- ����2��
	next_march numeric(30,10) NULL, -- ����3��
	quarter_1q numeric(30,10) NULL, -- 1Q
	quarter_2q numeric(30,10) NULL, -- 2Q
	quarter_3q numeric(30,10) NULL, -- 3Q
	quarter_4q numeric(30,10) NULL, -- 4Q
	half_year1 numeric(30,10) NULL, -- 1H
	half_year2 numeric(30,10) NULL, -- 2H
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
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
COMMENT ON TABLE dw.tf_fin_das_leading_group_manual_dxzx IS 'DAS���ӻ������ֹ��������';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.project IS '��Ŀ';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.production_line IS '����';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.bu IS 'BU';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.years IS '���';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.year_round IS 'ȫ��ϼ�';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.january IS '1��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.february IS '2��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.march IS '3��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.april IS '4��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.may IS '5��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.june IS '6��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.july IS '7��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.august IS '8��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.september IS '9��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.october IS '10��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.november IS '11��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.december IS '12��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.next_january IS '����1��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.next_february IS '����2��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.next_march IS '����3��';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.quarter_1q IS '1Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.quarter_2q IS '2Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.quarter_3q IS '3Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.quarter_4q IS '4Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.half_year1 IS '1H';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxzx.half_year2 IS '2H';

-- Permissions

ALTER TABLE dw.tf_fin_das_leading_group_manual_dxzx OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_das_leading_group_manual_dxzx TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_fin_das_leading_group_manual_dxzx TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_fin_das_leading_group_manual_dxzx TO gr_uapp_data;
