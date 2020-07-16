-- Drop table

-- DROP TABLE dw.td_hr_business_unit;

CREATE TABLE dw.td_hr_business_unit (
	row_wid int8 NOT NULL, -- 代理键
	business_unit varchar(20) NULL, -- 业务单位
	active_inactive varchar(4) NULL, -- 定义有效/无效
	descr varchar(120) NULL, -- 描述
	descrshort varchar(40) NULL, -- 简短描述
	aggregate_id_code varchar(20) NULL, -- 集合ID编码
	aggregate_id_name varchar(50) NULL, -- 集合ID名称
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
COMMENT ON TABLE dw.td_hr_business_unit IS '业务单位信息表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_business_unit.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_business_unit.business_unit IS '业务单位';
COMMENT ON COLUMN dw.td_hr_business_unit.active_inactive IS '定义有效/无效';
COMMENT ON COLUMN dw.td_hr_business_unit.descr IS '描述';
COMMENT ON COLUMN dw.td_hr_business_unit.descrshort IS '简短描述';
COMMENT ON COLUMN dw.td_hr_business_unit.aggregate_id_code IS '集合ID编码';
COMMENT ON COLUMN dw.td_hr_business_unit.aggregate_id_name IS '集合ID名称';

-- Permissions

ALTER TABLE dw.td_hr_business_unit OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_business_unit TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_business_unit TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_business_unit TO gr_uqry_data;
