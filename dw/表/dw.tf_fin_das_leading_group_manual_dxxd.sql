-- Drop table

-- DROP TABLE dw.tf_fin_das_leading_group_manual_dxxd;

CREATE TABLE dw.tf_fin_das_leading_group_manual_dxxd (
	project varchar(100) NOT NULL, -- 项目
	production_line varchar(100) NOT NULL, -- 产线
	bu varchar(100) NOT NULL, -- BU
	years numeric(4) NOT NULL, -- 年份
	year_round numeric(30,10) NULL, -- 全年合计
	january numeric(30,10) NULL, -- 1月
	february numeric(30,10) NULL, -- 2月
	march numeric(30,10) NULL, -- 3月
	april numeric(30,10) NULL, -- 4月
	may numeric(30,10) NULL, -- 5月
	june numeric(30,10) NULL, -- 6月
	july numeric(30,10) NULL, -- 7月
	august numeric(30,10) NULL, -- 8月
	september numeric(30,10) NULL, -- 9月
	october numeric(30,10) NULL, -- 10月
	november numeric(30,10) NULL, -- 11月
	december numeric(30,10) NULL, -- 12月
	next_january numeric(30,10) NULL, -- 下年1月
	next_february numeric(30,10) NULL, -- 下年2月
	next_march numeric(30,10) NULL, -- 下年3月
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
COMMENT ON TABLE dw.tf_fin_das_leading_group_manual_dxxd IS 'DAS班子会现地手工填报抵消表';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.project IS '项目';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.production_line IS '产线';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.bu IS 'BU';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.years IS '年份';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.year_round IS '全年合计';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.january IS '1月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.february IS '2月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.march IS '3月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.april IS '4月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.may IS '5月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.june IS '6月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.july IS '7月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.august IS '8月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.september IS '9月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.october IS '10月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.november IS '11月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.december IS '12月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.next_january IS '下年1月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.next_february IS '下年2月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.next_march IS '下年3月';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.quarter_1q IS '1Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.quarter_2q IS '2Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.quarter_3q IS '3Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.quarter_4q IS '4Q';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.half_year1 IS '1H';
COMMENT ON COLUMN dw.tf_fin_das_leading_group_manual_dxxd.half_year2 IS '2H';

-- Permissions

ALTER TABLE dw.tf_fin_das_leading_group_manual_dxxd OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_das_leading_group_manual_dxxd TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_fin_das_leading_group_manual_dxxd TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_fin_das_leading_group_manual_dxxd TO gr_uapp_data;
