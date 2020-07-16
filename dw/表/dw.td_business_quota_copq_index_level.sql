-- Drop table

-- DROP TABLE dw.td_business_quota_copq_index_level;

CREATE TABLE dw.td_business_quota_copq_index_level (
	row_wid int8 NULL, -- 代理键
	codeid int8 NULL, -- 主键
	code varchar(100) NULL, -- 编码
	basis_index varchar(255) NULL, -- 基础指标
	level1 varchar(255) NULL, -- 一级指标
	level2 varchar(255) NULL, -- 二级指标
	level3 varchar(255) NULL, -- 三级指标
	level4 varchar(255) NULL, -- 四级指标
	level5 varchar(255) NULL, -- 五级指标
	level6 varchar(255) NULL, -- 六级指标
	level7 varchar(255) NULL, -- 七级指标
	level8 varchar(255) NULL, -- 八级指标
	level9 varchar(255) NULL, -- 九级指标
	level10 varchar(255) NULL, -- 十级指标
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del varchar(1) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_copq_index_level IS 'COPQ指标:指标层次结构(手工维护)';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_index_level.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.codeid IS '主键';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.code IS '编码';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.basis_index IS '基础指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level1 IS '一级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level2 IS '二级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level3 IS '三级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level4 IS '四级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level5 IS '五级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level6 IS '六级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level7 IS '七级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level8 IS '八级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level9 IS '九级指标';
COMMENT ON COLUMN dw.td_business_quota_copq_index_level.level10 IS '十级指标';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_index_level OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_index_level TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_index_level TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_index_level TO gr_uqry_data;
