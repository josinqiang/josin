-- Drop table

-- DROP TABLE dw.tf_bpm_task;

CREATE TABLE dw.tf_bpm_task (
	processname varchar(192) NULL, -- ��������
	processgroupid varchar(36) NULL, -- ����Ψһ��ʶ
	processgroup varchar(192) NULL, -- ���̷���
	processinstid varchar(36) NULL, -- ����ʵ��ID
	taskinstid varchar(36) NULL, -- ����ʵ��ID
	activityname varchar(192) NULL, -- ��������
	isfoujue varchar(10) NULL, -- �Ƿ���
	ishuiqian varchar(10) NULL, -- �Ƿ��ǩ
	isyijiao varchar(10) NULL, -- �Ƿ��ƽ�
	target varchar(192) NULL, -- ������
	deptname varchar(192) NULL, -- ������������֯
	deptnameid varchar(192) NULL, -- ������������֯ID
	positionname varchar(192) NULL, -- ������ְ��
	begintime varchar(192) NULL, -- ����ʱ��
	endtime varchar(192) NULL, -- ����ʱ��
	costttime numeric(8,2) NULL, -- ���ڰ���ʱ��
	actionname varchar(192) NULL, -- �����˲���
	controlstate varchar(192) NULL, -- ����״̬
	msg varchar(2000) NULL, -- �������
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
COMMENT ON TABLE dw.tf_bpm_task IS 'BPM�����ۺϱ�';

-- Column comments

COMMENT ON COLUMN dw.tf_bpm_task.processname IS '��������';
COMMENT ON COLUMN dw.tf_bpm_task.processgroupid IS '����Ψһ��ʶ';
COMMENT ON COLUMN dw.tf_bpm_task.processgroup IS '���̷���';
COMMENT ON COLUMN dw.tf_bpm_task.processinstid IS '����ʵ��ID';
COMMENT ON COLUMN dw.tf_bpm_task.taskinstid IS '����ʵ��ID';
COMMENT ON COLUMN dw.tf_bpm_task.activityname IS '��������';
COMMENT ON COLUMN dw.tf_bpm_task.isfoujue IS '�Ƿ���';
COMMENT ON COLUMN dw.tf_bpm_task.ishuiqian IS '�Ƿ��ǩ';
COMMENT ON COLUMN dw.tf_bpm_task.isyijiao IS '�Ƿ��ƽ�';
COMMENT ON COLUMN dw.tf_bpm_task.target IS '������';
COMMENT ON COLUMN dw.tf_bpm_task.deptname IS '������������֯';
COMMENT ON COLUMN dw.tf_bpm_task.deptnameid IS '������������֯ID';
COMMENT ON COLUMN dw.tf_bpm_task.positionname IS '������ְ��';
COMMENT ON COLUMN dw.tf_bpm_task.begintime IS '����ʱ��';
COMMENT ON COLUMN dw.tf_bpm_task.endtime IS '����ʱ��';
COMMENT ON COLUMN dw.tf_bpm_task.costttime IS '���ڰ���ʱ��';
COMMENT ON COLUMN dw.tf_bpm_task.actionname IS '�����˲���';
COMMENT ON COLUMN dw.tf_bpm_task.controlstate IS '����״̬';
COMMENT ON COLUMN dw.tf_bpm_task.msg IS '�������';

-- Permissions

ALTER TABLE dw.tf_bpm_task OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_bpm_task TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_bpm_task TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_bpm_task TO gr_uapp_data;
