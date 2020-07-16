-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_fact_detail;

CREATE TABLE dw.tf_loss_b4_pr_fact_detail (
	loss_date timestamp NULL, -- ����
	fg_code varchar(50) NULL, -- ��Ʒ�ͺ�
	fg_code_desc varchar(200) NULL, -- ����
	pr_code varchar(30) NULL, -- PR������
	pr_name varchar(100) NULL, -- PR������
	pr_type varchar(50) NULL, -- PR���ͺ�
	loss_code varchar(200) NULL, -- Loss��
	loss_desc varchar(100) NULL, -- Loss����
	operation varchar(50) NULL, -- ����
	equipment varchar(50) NULL, -- �豸
	loss_qty numeric(19,9) NULL, -- ʵ����
	uom varchar(50) NULL, -- ��λ
	price numeric(19,9) NULL, -- ����
	loss_amt numeric(19,9) NULL, -- ʵ�ʽ��
	ppid varchar(50) NULL, -- PPID
	glassid varchar(200) NULL, -- glassid
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
COMMENT ON TABLE dw.tf_loss_b4_pr_fact_detail IS 'ʵ�ʲ����������,dw��';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_date IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.fg_code IS '��Ʒ�ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.fg_code_desc IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.pr_code IS 'PR������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.pr_name IS 'PR������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.pr_type IS 'PR���ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_code IS 'Loss��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_desc IS 'Loss����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.operation IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.equipment IS '�豸';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_qty IS 'ʵ����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.uom IS '��λ';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.price IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.loss_amt IS 'ʵ�ʽ��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.ppid IS 'PPID';
COMMENT ON COLUMN dw.tf_loss_b4_pr_fact_detail.glassid IS 'glassid';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_fact_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_fact_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_fact_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_fact_detail TO gr_uqry_data;
