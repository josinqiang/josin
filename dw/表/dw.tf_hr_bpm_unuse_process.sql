-- Drop table

-- DROP TABLE dw.tf_hr_bpm_unuse_process;

CREATE TABLE dw.tf_hr_bpm_unuse_process (
	processname varchar(36) NULL, -- 流程名称
	processgroupid varchar(36) NULL, -- 流程ID
	yjfz varchar(10) NULL, -- 一级分组
	ejfz varchar(10) NULL, -- 二级分组
	sjfz varchar(10) NULL, -- 三级分组
	dictkey varchar(64) NULL, -- 所属字典
	isactive numeric(38) NULL, -- 有效性
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
COMMENT ON TABLE dw.tf_hr_bpm_unuse_process IS '未使用流程数据汇总表';

-- Column comments

COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.processname IS '流程名称';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.processgroupid IS '流程ID';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.yjfz IS '一级分组';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.ejfz IS '二级分组';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.sjfz IS '三级分组';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.dictkey IS '所属字典';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.isactive IS '有效性';

-- Permissions

ALTER TABLE dw.tf_hr_bpm_unuse_process OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_hr_bpm_unuse_process TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_hr_bpm_unuse_process TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_hr_bpm_unuse_process TO gr_uapp_data;
