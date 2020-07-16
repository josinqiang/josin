-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee;

CREATE TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee (
	id numeric(19) NULL, -- ����
	subject varchar(510) NULL, -- ��Ŀ
	company varchar(510) NULL, -- ��˾
	"year" varchar(510) NULL, -- ��
	"month" varchar(510) NULL, -- ��
	fgcode varchar(510) NULL, -- FGCode
	loss_level varchar(510) NULL, -- �ȼ�
	out_level varchar(510) NULL, -- �ȼ�
	bu varchar(510) NULL, -- bu
	currency varchar(510) NULL, -- ����
	"money" numeric(22,6) NULL, -- ���
	maintain_project varchar(510) NULL, -- ά����Ŀ
	description varchar(510) NULL, -- ����
	client_oem varchar(510) NULL, -- �ͻ�������
	client varchar(510) NULL, -- �ͻ�
	num numeric(10) NULL, -- ����
	top_department_name varchar(510) NULL,
	top_department_id numeric(19) NULL,
	rma_no varchar(510) NULL, -- RMA NO
	certificate_date timestamp NULL, -- ƾ֤����
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
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
COMMENT ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee IS 'COPQָ��-RMA_�ⲿSorting_�ͻ������ ';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.id IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.subject IS '��Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.company IS '��˾';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee."year" IS '��';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee."month" IS '��';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.fgcode IS 'FGCode';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.loss_level IS '�ȼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.out_level IS '�ȼ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.bu IS 'bu';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.currency IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee."money" IS '���';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.maintain_project IS 'ά����Ŀ';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.description IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.client_oem IS '�ͻ�������';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.client IS '�ͻ�';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.num IS '����';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.rma_no IS 'RMA NO';
COMMENT ON COLUMN dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee.certificate_date IS 'ƾ֤����';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_rma_external_sorting_customer_claim_fee TO gr_uqry_data;
