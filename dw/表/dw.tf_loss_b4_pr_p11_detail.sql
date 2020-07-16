-- Drop table

-- DROP TABLE dw.tf_loss_b4_pr_p11_detail;

CREATE TABLE dw.tf_loss_b4_pr_p11_detail (
	event_time timestamp NULL DEFAULT NULL::timestamp without time zone, -- ʱ���
	fg_code varchar(50) NULL DEFAULT NULL::character varying, -- fg_code
	fg_code_desc varchar(200) NULL DEFAULT NULL::character varying, -- fg_code����
	pr_code varchar(30) NULL DEFAULT NULL::character varying, -- pr������
	pr_name varchar(100) NULL DEFAULT NULL::character varying, -- pr������
	pr_type varchar(50) NULL DEFAULT NULL::character varying, -- pr���ͺ�
	loss_code varchar(15) NULL DEFAULT NULL::character varying, -- Loss��
	loss_desc varchar(100) NULL DEFAULT NULL::character varying, -- loss����
	factory varchar(15) NULL DEFAULT NULL::character varying, -- �ֳ�
	operation varchar(15) NULL DEFAULT NULL::character varying, -- ����
	equipment varchar(15) NULL DEFAULT NULL::character varying, -- �豸
	loss_qty numeric(19,9) NULL DEFAULT NULL::numeric, -- �������YMSϵͳ��λΪul
	uom varchar(15) NULL DEFAULT NULL::character varying, -- ��λ
	price numeric(19,9) NULL DEFAULT NULL::numeric, -- ����
	loss_amt numeric(19,9) NULL DEFAULT NULL::numeric, -- ��Ľ��
	ppid varchar(150) NULL DEFAULT NULL::character varying, -- ppid
	glassid varchar(100) NULL, -- glassid
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.tf_loss_b4_pr_p11_detail IS '��Ƭ�����';

-- Column comments

COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.event_time IS 'ʱ���';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.fg_code IS 'fg_code';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.fg_code_desc IS 'fg_code����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.pr_code IS 'pr������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.pr_name IS 'pr������';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.pr_type IS 'pr���ͺ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.loss_code IS 'Loss��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.loss_desc IS 'loss����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.factory IS '�ֳ�';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.operation IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.equipment IS '�豸';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.loss_qty IS '�������YMSϵͳ��λΪul';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.uom IS '��λ';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.price IS '����';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.loss_amt IS '��Ľ��';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.ppid IS 'ppid';
COMMENT ON COLUMN dw.tf_loss_b4_pr_p11_detail.glassid IS 'glassid';

-- Permissions

ALTER TABLE dw.tf_loss_b4_pr_p11_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p11_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_loss_b4_pr_p11_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_loss_b4_pr_p11_detail TO gr_uqry_data;
