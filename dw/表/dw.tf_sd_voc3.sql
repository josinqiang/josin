-- Drop table

-- DROP TABLE dw.tf_sd_voc3;

CREATE TABLE dw.tf_sd_voc3 (
	row_id varchar(60) NOT NULL,
	voc3tital varchar(1020) NULL, -- VOC3����
	overall_state varchar(1020) NULL, -- ����״̬
	cus_name_wid int8 NULL, -- �ͻ�����
	cus_oem_odm varchar(1020) NULL, -- �ͻ�OEM/ODM
	"type" varchar(1020) NULL, -- ����
	dateoccur_wid int8 NULL, -- �ͻ���������
	custrequir varchar(1020) NULL, -- �ͻ�Ҫ��
	cstakeson varchar(1020) NULL, -- CS����
	model varchar(1020) NULL, -- �ͺ�
	fgcode varchar(1020) NULL, -- FG Code
	productclassif varchar(1020) NULL, -- ��Ʒ����
	shipmentform varchar(1020) NULL, -- ��Ʒ������̬
	responsibledep varchar(1020) NULL, -- ���β���
	programme varchar(1020) NULL, -- ������
	personliable varchar(1020) NULL, -- ������
	processingdate varchar(1020) NULL, -- ��������
	timeinfactory timestamp NULL, -- Closeʱ��
	clientstatus2 varchar(1020) NULL, -- �ͻ���Status
	compensation numeric(22,7) NULL, -- �⳥���
	amountaftneg numeric(22,7) NULL, -- �ͻ����/Э�̺���
	voc3id varchar(1020) NULL, -- VOC3����ID
	responsiblefa varchar(1020) NULL, -- ���ι�������ѡ��
	voc1_voc2_account varchar(1020) NULL, -- VOC1/VOC2/����
	department varchar(1020) NULL, -- �������ſ���
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
COMMENT ON TABLE dw.tf_sd_voc3 IS '������Թ��Ҫ��';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_voc3.voc3tital IS 'VOC3����';
COMMENT ON COLUMN dw.tf_sd_voc3.overall_state IS '����״̬';
COMMENT ON COLUMN dw.tf_sd_voc3.cus_name_wid IS '�ͻ�����';
COMMENT ON COLUMN dw.tf_sd_voc3.cus_oem_odm IS '�ͻ�OEM/ODM';
COMMENT ON COLUMN dw.tf_sd_voc3."type" IS '����';
COMMENT ON COLUMN dw.tf_sd_voc3.dateoccur_wid IS '�ͻ���������';
COMMENT ON COLUMN dw.tf_sd_voc3.custrequir IS '�ͻ�Ҫ��';
COMMENT ON COLUMN dw.tf_sd_voc3.cstakeson IS 'CS����';
COMMENT ON COLUMN dw.tf_sd_voc3.model IS '�ͺ�';
COMMENT ON COLUMN dw.tf_sd_voc3.fgcode IS 'FG Code';
COMMENT ON COLUMN dw.tf_sd_voc3.productclassif IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_sd_voc3.shipmentform IS '��Ʒ������̬';
COMMENT ON COLUMN dw.tf_sd_voc3.responsibledep IS '���β���';
COMMENT ON COLUMN dw.tf_sd_voc3.programme IS '������';
COMMENT ON COLUMN dw.tf_sd_voc3.personliable IS '������';
COMMENT ON COLUMN dw.tf_sd_voc3.processingdate IS '��������';
COMMENT ON COLUMN dw.tf_sd_voc3.timeinfactory IS 'Closeʱ��';
COMMENT ON COLUMN dw.tf_sd_voc3.clientstatus2 IS '�ͻ���Status';
COMMENT ON COLUMN dw.tf_sd_voc3.compensation IS '�⳥���';
COMMENT ON COLUMN dw.tf_sd_voc3.amountaftneg IS '�ͻ����/Э�̺���';
COMMENT ON COLUMN dw.tf_sd_voc3.voc3id IS 'VOC3����ID';
COMMENT ON COLUMN dw.tf_sd_voc3.responsiblefa IS '���ι�������ѡ��';
COMMENT ON COLUMN dw.tf_sd_voc3.voc1_voc2_account IS 'VOC1/VOC2/����';
COMMENT ON COLUMN dw.tf_sd_voc3.department IS '�������ſ���';

-- Permissions

ALTER TABLE dw.tf_sd_voc3 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc3 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc3 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_voc3 TO gr_uqry_data;
