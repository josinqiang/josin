-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_p5_detail;

CREATE TABLE dw.tf_loss_b4_pr_p5_detail (
	event_time timestamp NULL, -- ʱ���
	fg_code varchar(50) NULL, -- fg_code
	fg_code_desc varchar(200) NULL, -- fg_code����
	pr_code varchar(30) NULL, -- pr������
	pr_name varchar(100) NULL, -- pr������
	pr_type varchar(50) NULL, -- pr���ͺ�
	loss_code varchar(15) NULL, -- Loss��
	loss_desc varchar(100) NULL, -- loss����
	factory varchar(15) NULL, -- �ֳ�
	operation varchar(15) NULL, -- ����
	equipment varchar(15) NULL, -- �豸
	loss_qty numeric(19,9) NULL, -- �����
	uom varchar(15) NULL, -- ��λ
	price numeric(19,9) NULL, -- ����
	loss_amt numeric(19,9) NULL, -- ��Ľ��
	ppid varchar(150) NULL, -- ppid
	single_manual_initial_qty numeric(19,9) NULL, -- �����ֶ�Initial��
	exec_cnt int4 NULL, -- ����ǰ���ֶ�Initial����
	pr_change_cnt int4 NULL, -- �н�������һ��COMMON MANUAL MODE��һ��COMMON AUTO RUN MODE֮��ֻ��һ���н�����
	single_qty numeric(19,9) NULL, -- �����н������ֹ����еĵ�λΪL
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
COMMENT ON TABLE dw.tf_loss_b4_pr_p5_detail IS '����-�н�Initial�����';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.event_time IS 'ʱ���';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.fg_code IS 'fg_code';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.fg_code_desc IS 'fg_code����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.pr_code IS 'pr������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.pr_name IS 'pr������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.pr_type IS 'pr���ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.loss_code IS 'Loss��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.loss_desc IS 'loss����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.factory IS '�ֳ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.operation IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.equipment IS '�豸';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.loss_qty IS '�����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.uom IS '��λ';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.price IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.loss_amt IS '��Ľ��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.ppid IS 'ppid';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.single_manual_initial_qty IS '�����ֶ�Initial��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.exec_cnt IS '����ǰ���ֶ�Initial����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.pr_change_cnt IS '�н�������һ��COMMON MANUAL MODE��һ��COMMON AUTO RUN MODE֮��ֻ��һ���н�����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p5_detail.single_qty IS '�����н������ֹ����еĵ�λΪL';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_p5_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p5_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p5_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_p5_detail TO gr_uqry_data;
