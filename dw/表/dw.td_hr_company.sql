-- Drop table

-- DROP TABLE dw.td_hr_company;

CREATE TABLE dw.td_hr_company (
	row_wid int8 NULL,
	company varchar(12) NULL, -- 公司
	effdt timestamp NULL, -- 生效日期
	eff_status_code varchar(4) NULL, -- 生效日期状态编码
	eff_status_name varchar(200) NULL, -- 生效日期状态名称
	descr varchar(120) NULL, -- 描述
	descrshort varchar(40) NULL, -- 简短描述
	setid_location_code varchar(20) NULL, -- 地点集合 ID
	setid_location_name varchar(200) NULL, -- 地点集合名称
	"location" varchar(40) NULL, -- 地点代码
	default_setid varchar(20) NULL, -- 默认集合 ID
	legal_type varchar(16) NULL, -- 公司法人
	industry varchar(16) NULL, -- 行业
	industry_sector varchar(16) NULL, -- 行业部门
	opr_industry_ovrd varchar(4) NULL, -- 覆盖操作员行业
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
COMMENT ON TABLE dw.td_hr_company IS '人事：公司信息';

-- Column comments

COMMENT ON COLUMN dw.td_hr_company.company IS '公司';
COMMENT ON COLUMN dw.td_hr_company.effdt IS '生效日期';
COMMENT ON COLUMN dw.td_hr_company.eff_status_code IS '生效日期状态编码';
COMMENT ON COLUMN dw.td_hr_company.eff_status_name IS '生效日期状态名称';
COMMENT ON COLUMN dw.td_hr_company.descr IS '描述';
COMMENT ON COLUMN dw.td_hr_company.descrshort IS '简短描述';
COMMENT ON COLUMN dw.td_hr_company.setid_location_code IS '地点集合 ID';
COMMENT ON COLUMN dw.td_hr_company.setid_location_name IS '地点集合名称';
COMMENT ON COLUMN dw.td_hr_company."location" IS '地点代码';
COMMENT ON COLUMN dw.td_hr_company.default_setid IS '默认集合 ID';
COMMENT ON COLUMN dw.td_hr_company.legal_type IS '公司法人';
COMMENT ON COLUMN dw.td_hr_company.industry IS '行业';
COMMENT ON COLUMN dw.td_hr_company.industry_sector IS '行业部门';
COMMENT ON COLUMN dw.td_hr_company.opr_industry_ovrd IS '覆盖操作员行业';

-- Permissions

ALTER TABLE dw.td_hr_company OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_company TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_company TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_company TO gr_uqry_data;
