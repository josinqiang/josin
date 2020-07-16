-- Drop table

-- DROP TABLE dw.tf_hr_bpm_unuse_process;

CREATE TABLE dw.tf_hr_bpm_unuse_process (
	processname varchar(36) NULL, -- ��������
	processgroupid varchar(36) NULL, -- ����ID
	yjfz varchar(10) NULL, -- һ������
	ejfz varchar(10) NULL, -- ��������
	sjfz varchar(10) NULL, -- ��������
	dictkey varchar(64) NULL, -- �����ֵ�
	isactive numeric(38) NULL, -- ��Ч��
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
COMMENT ON TABLE dw.tf_hr_bpm_unuse_process IS 'δʹ���������ݻ��ܱ�';

-- Column comments

COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.processname IS '��������';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.processgroupid IS '����ID';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.yjfz IS 'һ������';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.ejfz IS '��������';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.sjfz IS '��������';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.dictkey IS '�����ֵ�';
COMMENT ON COLUMN dw.tf_hr_bpm_unuse_process.isactive IS '��Ч��';

-- Permissions

ALTER TABLE dw.tf_hr_bpm_unuse_process OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_hr_bpm_unuse_process TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_hr_bpm_unuse_process TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_hr_bpm_unuse_process TO gr_uapp_data;
