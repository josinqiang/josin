-- Drop table

-- DROP TABLE dw.tf_bpm_process_instance;

CREATE TABLE dw.tf_bpm_process_instance (
	processname varchar(192) NULL, -- 流程名称
	processgroupid varchar(36) NULL, -- 流程唯一标识
	processgroup varchar(192) NULL, -- 流程分组
	processinstid varchar(36) NULL, -- 流程实例ID
	bh varchar(192) NULL, -- 审批单编号
	createuser varchar(192) NULL, -- 起草人
	createuserlocation varchar(192) NULL, -- 起草人组织
	createuserlocationid varchar(192) NULL, -- 起草人组织ID
	positionname varchar(192) NULL, -- 起草人职务
	createtime varchar(192) NULL, -- 起草时间
	controlstate varchar(192) NULL, -- 审批单状态
	costttime numeric(8,2) NULL, -- 审批单办理时长
	activitycount numeric(4) NULL, -- 该流程实例环节数
	targetcount numeric(4) NULL, -- 该流程实例审批人数
	isfoujue varchar(10) NULL, -- 是否有否决记录
	ishuiqian varchar(10) NULL, -- 是否有会签记录
	isyijiao varchar(10) NULL, -- 是否有移交记录
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
COMMENT ON TABLE dw.tf_bpm_process_instance IS 'BPM流程综合表';

-- Column comments

COMMENT ON COLUMN dw.tf_bpm_process_instance.processname IS '流程名称';
COMMENT ON COLUMN dw.tf_bpm_process_instance.processgroupid IS '流程唯一标识';
COMMENT ON COLUMN dw.tf_bpm_process_instance.processgroup IS '流程分组';
COMMENT ON COLUMN dw.tf_bpm_process_instance.processinstid IS '流程实例ID';
COMMENT ON COLUMN dw.tf_bpm_process_instance.bh IS '审批单编号';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createuser IS '起草人';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createuserlocation IS '起草人组织';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createuserlocationid IS '起草人组织ID';
COMMENT ON COLUMN dw.tf_bpm_process_instance.positionname IS '起草人职务';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createtime IS '起草时间';
COMMENT ON COLUMN dw.tf_bpm_process_instance.controlstate IS '审批单状态';
COMMENT ON COLUMN dw.tf_bpm_process_instance.costttime IS '审批单办理时长';
COMMENT ON COLUMN dw.tf_bpm_process_instance.activitycount IS '该流程实例环节数';
COMMENT ON COLUMN dw.tf_bpm_process_instance.targetcount IS '该流程实例审批人数';
COMMENT ON COLUMN dw.tf_bpm_process_instance.isfoujue IS '是否有否决记录';
COMMENT ON COLUMN dw.tf_bpm_process_instance.ishuiqian IS '是否有会签记录';
COMMENT ON COLUMN dw.tf_bpm_process_instance.isyijiao IS '是否有移交记录';

-- Permissions

ALTER TABLE dw.tf_bpm_process_instance OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_bpm_process_instance TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_bpm_process_instance TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_bpm_process_instance TO gr_uapp_data;
