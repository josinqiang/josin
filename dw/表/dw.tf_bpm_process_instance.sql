-- Drop table

-- DROP TABLE dw.tf_bpm_process_instance;

CREATE TABLE dw.tf_bpm_process_instance (
	processname varchar(192) NULL, -- ��������
	processgroupid varchar(36) NULL, -- ����Ψһ��ʶ
	processgroup varchar(192) NULL, -- ���̷���
	processinstid varchar(36) NULL, -- ����ʵ��ID
	bh varchar(192) NULL, -- ���������
	createuser varchar(192) NULL, -- �����
	createuserlocation varchar(192) NULL, -- �������֯
	createuserlocationid varchar(192) NULL, -- �������֯ID
	positionname varchar(192) NULL, -- �����ְ��
	createtime varchar(192) NULL, -- ���ʱ��
	controlstate varchar(192) NULL, -- ������״̬
	costttime numeric(8,2) NULL, -- ����������ʱ��
	activitycount numeric(4) NULL, -- ������ʵ��������
	targetcount numeric(4) NULL, -- ������ʵ����������
	isfoujue varchar(10) NULL, -- �Ƿ��з����¼
	ishuiqian varchar(10) NULL, -- �Ƿ��л�ǩ��¼
	isyijiao varchar(10) NULL, -- �Ƿ����ƽ���¼
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
COMMENT ON TABLE dw.tf_bpm_process_instance IS 'BPM�����ۺϱ�';

-- Column comments

COMMENT ON COLUMN dw.tf_bpm_process_instance.processname IS '��������';
COMMENT ON COLUMN dw.tf_bpm_process_instance.processgroupid IS '����Ψһ��ʶ';
COMMENT ON COLUMN dw.tf_bpm_process_instance.processgroup IS '���̷���';
COMMENT ON COLUMN dw.tf_bpm_process_instance.processinstid IS '����ʵ��ID';
COMMENT ON COLUMN dw.tf_bpm_process_instance.bh IS '���������';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createuser IS '�����';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createuserlocation IS '�������֯';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createuserlocationid IS '�������֯ID';
COMMENT ON COLUMN dw.tf_bpm_process_instance.positionname IS '�����ְ��';
COMMENT ON COLUMN dw.tf_bpm_process_instance.createtime IS '���ʱ��';
COMMENT ON COLUMN dw.tf_bpm_process_instance.controlstate IS '������״̬';
COMMENT ON COLUMN dw.tf_bpm_process_instance.costttime IS '����������ʱ��';
COMMENT ON COLUMN dw.tf_bpm_process_instance.activitycount IS '������ʵ��������';
COMMENT ON COLUMN dw.tf_bpm_process_instance.targetcount IS '������ʵ����������';
COMMENT ON COLUMN dw.tf_bpm_process_instance.isfoujue IS '�Ƿ��з����¼';
COMMENT ON COLUMN dw.tf_bpm_process_instance.ishuiqian IS '�Ƿ��л�ǩ��¼';
COMMENT ON COLUMN dw.tf_bpm_process_instance.isyijiao IS '�Ƿ����ƽ���¼';

-- Permissions

ALTER TABLE dw.tf_bpm_process_instance OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_bpm_process_instance TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_bpm_process_instance TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_bpm_process_instance TO gr_uapp_data;
