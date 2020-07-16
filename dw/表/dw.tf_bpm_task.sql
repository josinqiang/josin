-- Drop table

-- DROP TABLE dw.tf_bpm_task;

CREATE TABLE dw.tf_bpm_task (
	processname varchar(192) NULL, -- 流程名称
	processgroupid varchar(36) NULL, -- 流程唯一标识
	processgroup varchar(192) NULL, -- 流程分组
	processinstid varchar(36) NULL, -- 流程实例ID
	taskinstid varchar(36) NULL, -- 任务实例ID
	activityname varchar(192) NULL, -- 环节名称
	isfoujue varchar(10) NULL, -- 是否否决
	ishuiqian varchar(10) NULL, -- 是否会签
	isyijiao varchar(10) NULL, -- 是否移交
	target varchar(192) NULL, -- 办理人
	deptname varchar(192) NULL, -- 办理人所在组织
	deptnameid varchar(192) NULL, -- 办理人所在组织ID
	positionname varchar(192) NULL, -- 办理人职务
	begintime varchar(192) NULL, -- 接收时间
	endtime varchar(192) NULL, -- 办理时间
	costttime numeric(8,2) NULL, -- 环节办理时长
	actionname varchar(192) NULL, -- 办理人操作
	controlstate varchar(192) NULL, -- 任务状态
	msg varchar(2000) NULL, -- 审批意见
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
COMMENT ON TABLE dw.tf_bpm_task IS 'BPM任务综合表';

-- Column comments

COMMENT ON COLUMN dw.tf_bpm_task.processname IS '流程名称';
COMMENT ON COLUMN dw.tf_bpm_task.processgroupid IS '流程唯一标识';
COMMENT ON COLUMN dw.tf_bpm_task.processgroup IS '流程分组';
COMMENT ON COLUMN dw.tf_bpm_task.processinstid IS '流程实例ID';
COMMENT ON COLUMN dw.tf_bpm_task.taskinstid IS '任务实例ID';
COMMENT ON COLUMN dw.tf_bpm_task.activityname IS '环节名称';
COMMENT ON COLUMN dw.tf_bpm_task.isfoujue IS '是否否决';
COMMENT ON COLUMN dw.tf_bpm_task.ishuiqian IS '是否会签';
COMMENT ON COLUMN dw.tf_bpm_task.isyijiao IS '是否移交';
COMMENT ON COLUMN dw.tf_bpm_task.target IS '办理人';
COMMENT ON COLUMN dw.tf_bpm_task.deptname IS '办理人所在组织';
COMMENT ON COLUMN dw.tf_bpm_task.deptnameid IS '办理人所在组织ID';
COMMENT ON COLUMN dw.tf_bpm_task.positionname IS '办理人职务';
COMMENT ON COLUMN dw.tf_bpm_task.begintime IS '接收时间';
COMMENT ON COLUMN dw.tf_bpm_task.endtime IS '办理时间';
COMMENT ON COLUMN dw.tf_bpm_task.costttime IS '环节办理时长';
COMMENT ON COLUMN dw.tf_bpm_task.actionname IS '办理人操作';
COMMENT ON COLUMN dw.tf_bpm_task.controlstate IS '任务状态';
COMMENT ON COLUMN dw.tf_bpm_task.msg IS '审批意见';

-- Permissions

ALTER TABLE dw.tf_bpm_task OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_bpm_task TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_bpm_task TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_bpm_task TO gr_uapp_data;
