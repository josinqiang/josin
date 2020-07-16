-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_p9_detail;

CREATE TABLE dw.tf_loss_b4_pr_p9_detail (
	event_time timestamp NULL, -- ʱ���
	fg_code varchar(50) NULL, -- fg_code
	fg_code_desc varchar(200) NULL, -- fg_code����
	pr_code varchar(30) NULL, -- pr������
	pr_name varchar(100) NULL, -- pr������
	pr_type varchar(50) NULL, -- pr���ͺ�
	loss_code varchar(100) NULL, -- Loss��
	loss_desc varchar(100) NULL, -- loss����
	factory varchar(100) NULL, -- �ֳ�
	operation varchar(100) NULL, -- ����
	equipment varchar(100) NULL, -- �豸
	loss_qty numeric(19,9) NULL, -- �����
	uom varchar(15) NULL, -- ��λ
	price numeric(19,9) NULL, -- ����
	loss_amt numeric(19,9) NULL, -- ��Ľ��
	ppid varchar(150) NULL, -- ppid
	glassid varchar(100) NULL, -- glassid
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
COMMENT ON TABLE dw.tf_loss_b4_pr_p9_detail IS '����NG�����';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.event_time IS 'ʱ���';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.fg_code IS 'fg_code';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.fg_code_desc IS 'fg_code����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.pr_code IS 'pr������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.pr_name IS 'pr������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.pr_type IS 'pr���ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_code IS 'Loss��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_desc IS 'loss����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.factory IS '�ֳ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.operation IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.equipment IS '�豸';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_qty IS '�����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.uom IS '��λ';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.price IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.loss_amt IS '��Ľ��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.ppid IS 'ppid';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p9_detail.glassid IS 'glassid';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_p9_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p9_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p9_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_p9_detail TO gr_uqry_data;
