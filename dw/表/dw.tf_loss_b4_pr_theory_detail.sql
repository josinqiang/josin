-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_theory_detail;

CREATE TABLE dw.tf_loss_b4_pr_theory_detail (
	loss_date timestamp NULL, -- ����
	fg_code varchar(50) NULL, -- ��Ʒ�ͺ�
	fg_code_desc varchar(200) NULL, -- ����
	pr_code varchar(30) NULL, -- PR������
	pr_name varchar(100) NULL, -- PR������
	pr_type varchar(50) NULL, -- PR���ͺ�
	price numeric(19,9) NULL, -- PR������
	target_per_amount numeric(23,14) NULL, -- Ŀ�굥��
	"output" numeric(13,3) NULL, -- �������
	factory varchar(50) NULL, -- �ֳ�
	"input" numeric(14,5) NULL, -- ����Ͷ����
	initial_wip_amount numeric(14,5) NULL, -- �����ڳ�WIP��
	final_wip_amount numeric(14,5) NULL, -- ������ĩWIP��
	loss_amt numeric(19,9) NULL, -- ʵ��������
	loss_qty numeric(19,9) NULL, -- ʵ�ʽ��
	target_total_amt numeric(19,9) NULL, -- ��Ŀ��������
	target_total_qty numeric(19,9) NULL, -- ��Ŀ�����Ľ��
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
COMMENT ON TABLE dw.tf_loss_b4_pr_theory_detail IS '���ۼ��㷨�����dw��';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.loss_date IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.fg_code IS '��Ʒ�ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.fg_code_desc IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.pr_code IS 'PR������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.pr_name IS 'PR������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.pr_type IS 'PR���ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.price IS 'PR������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.target_per_amount IS 'Ŀ�굥��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail."output" IS '�������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.factory IS '�ֳ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail."input" IS '����Ͷ����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.initial_wip_amount IS '�����ڳ�WIP��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.final_wip_amount IS '������ĩWIP��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.loss_amt IS 'ʵ��������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.loss_qty IS 'ʵ�ʽ��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.target_total_amt IS '��Ŀ��������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_theory_detail.target_total_qty IS '��Ŀ�����Ľ��';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_theory_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_theory_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_theory_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_theory_detail TO gr_uqry_data;
