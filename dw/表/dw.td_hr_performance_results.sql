-- Drop table

-- DROP TABLE dw.td_hr_performance_results;

CREATE TABLE dw.td_hr_performance_results (
	row_wid int8 NULL,
	emplid varchar(44) NULL, -- 员工 ID
	empl_rcd numeric NULL, -- 员工记录
	b_perf_id varchar(120) NULL, -- 考核方案ID
	d_asses_type varchar(32) NULL, -- 考核类型
	d_ep_period_id varchar(200) NULL, -- 考核周期ID
	rating_model varchar(16) NULL, -- 等级模型
	b_perf_gr numeric(5,2) NULL, -- 考核分数
	b_perf_gr_vsb varchar(4) NULL, -- 对员工可见
	b_perf_comment varchar(4000) NULL, -- 考核评语
	b_perf_comment_vsb varchar(4) NULL, -- 对员工可见
	b_perf_lv varchar(16) NULL, -- 考核等级
	b_adjust_lv varchar(16) NULL, -- 调整等级
	b_empl_coefficient numeric(2,1) NULL, -- 个人系数
	b_dept_coefficient numeric(2,1) NULL, -- 部门系数
	b_bpi_perf_res varchar(120) NULL, -- BPI项目考核结果
	b_bpi_fin_perf_res varchar(120) NULL, -- BPI最终考核结果
	b_comment varchar(4000) NULL, -- 备注
	b_data_source varchar(16) NULL, -- 数据来源
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
COMMENT ON TABLE dw.td_hr_performance_results IS '人事：绩效结果';

-- Column comments

COMMENT ON COLUMN dw.td_hr_performance_results.emplid IS '员工 ID';
COMMENT ON COLUMN dw.td_hr_performance_results.empl_rcd IS '员工记录';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_id IS '考核方案ID';
COMMENT ON COLUMN dw.td_hr_performance_results.d_asses_type IS '考核类型';
COMMENT ON COLUMN dw.td_hr_performance_results.d_ep_period_id IS '考核周期ID';
COMMENT ON COLUMN dw.td_hr_performance_results.rating_model IS '等级模型';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_gr IS '考核分数';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_gr_vsb IS '对员工可见';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_comment IS '考核评语';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_comment_vsb IS '对员工可见';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_lv IS '考核等级';
COMMENT ON COLUMN dw.td_hr_performance_results.b_adjust_lv IS '调整等级';
COMMENT ON COLUMN dw.td_hr_performance_results.b_empl_coefficient IS '个人系数';
COMMENT ON COLUMN dw.td_hr_performance_results.b_dept_coefficient IS '部门系数';
COMMENT ON COLUMN dw.td_hr_performance_results.b_bpi_perf_res IS 'BPI项目考核结果';
COMMENT ON COLUMN dw.td_hr_performance_results.b_bpi_fin_perf_res IS 'BPI最终考核结果';
COMMENT ON COLUMN dw.td_hr_performance_results.b_comment IS '备注';
COMMENT ON COLUMN dw.td_hr_performance_results.b_data_source IS '数据来源';

-- Permissions

ALTER TABLE dw.td_hr_performance_results OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_performance_results TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_performance_results TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_performance_results TO gr_uqry_data;
