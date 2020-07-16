-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_cost;

CREATE TABLE dw.tf_loss_b4_pr_cost (
	month_wid numeric(19,7) NULL, -- �·ݱ��
	month_end_day numeric(19,7) NULL, -- ��ĩ���ڱ��
	month_end_date date NULL, -- ��ĩ����
	next_month_wid numeric(19,7) NULL, -- ���±��
	next_month_day varchar(50) NULL, -- ��������
	material_number varchar(30) NULL, -- �������
	material_name varchar(100) NULL, -- ��������
	pr_type varchar(50) NULL, -- PR���ͺ�
	price numeric(19,9) NULL, -- ����
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
COMMENT ON TABLE dw.tf_loss_b4_pr_cost IS 'PR���ɱ���';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.month_wid IS '�·ݱ��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.month_end_day IS '��ĩ���ڱ��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.month_end_date IS '��ĩ����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.next_month_wid IS '���±��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.next_month_day IS '��������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.material_number IS '�������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.material_name IS '��������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.pr_type IS 'PR���ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_cost.price IS '����';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_cost OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_cost TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_cost TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_cost TO gr_uqry_data;
