-- Drop table

-- DROP TABLE dw.tf_sd_voc2;

CREATE TABLE dw.tf_sd_voc2 (
	row_id varchar(60) NOT NULL,
	voc2_title varchar(1020) NULL, -- VOC2����
	overall_state varchar(200) NULL, -- ����״̬
	cus_name_wid int8 NULL, -- �ͻ����ƴ����
	cust_oemodm varchar(200) NULL, -- �ͻ�OEM/ODM
	"type" varchar(200) NULL, -- ����
	cufe_time_wid int8 NULL, -- �ͻ�����ʱ������
	clie_status varchar(200) NULL, -- �ͻ�������״̬
	cust_req varchar(1020) NULL, -- �ͻ�Ҫ��
	csfe_time timestamp NULL, -- CS��������ʱ��
	csta_on varchar(200) NULL, -- CS����
	model varchar(200) NULL, -- �ͺ�
	prod_clas varchar(200) NULL, -- ��Ʒ����
	ship_n varchar(200) NULL, -- ��Ʒ������̬
	panel_fact varchar(200) NULL, -- Panel����
	ship_fact varchar(200) NULL, -- ��������
	ispr_returned bpchar(4) NULL, -- ����Ʒ�Ƿ񷵻�
	retu_time timestamp NULL, -- ����Ʒ����ʱ��
	retu_msg varchar(800) NULL, -- ����Ʒ FGCode������������pcs��
	comm_time timestamp NULL, -- ��Ʒί��ʱ��
	plan_handling varchar(4000) NULL, -- ���ڲ�Ʒ��������ʽ+����������
	comp_factory timestamp NULL, -- �ͻ���Closeʱ��
	clie_status2 varchar(200) NULL, -- �ͻ���Status
	reportstage varchar(200) NULL, -- ���̽ڵ���
	customercode varchar(200) NULL, -- �ͻ�����
	cusfilename varchar(1020) NULL, -- �ͻ����հ汨���ļ���
	voc2id varchar(1020) NULL, -- VOC2����ID
	badpicnames varchar(200) NULL, -- ����ͼƬ�ļ���
	firstname varchar(1020) NULL, -- ���渽���ļ���
	endname varchar(1020) NULL, -- �հ渽���ļ���
	voctype varchar(200) NULL, -- VOC����
	department varchar(200) NULL, -- �������ſ���
	input_number numeric(22) NULL, -- Ͷ����
	bad_mumber numeric(22) NULL, -- ������
	high_n varchar(200) NULL, -- �߷���������
	factoryconf varchar(4000) NULL, -- ���ڸ���Ч��ȷ��
	personlia varchar(200) NULL, -- ������
	infactorytime timestamp NULL, -- ����Closeʱ��
	infactoryclosetat numeric(22) NULL, -- ����CloseTAT/ʱ
	factorystatus varchar(200) NULL, -- ����Status
	first_days numeric(22,7) NULL, -- ���汨�����ͨ��TAT/ʱ
	final_days numeric(22,7) NULL, -- �հ汨�����ͨ��TAT/ʱ
	res_fac varchar(200) NULL, -- ���ι���
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
COMMENT ON TABLE dw.tf_sd_voc2 IS 'Sorting��DOA��Field����CIP����';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_voc2.voc2_title IS 'VOC2����';
COMMENT ON COLUMN dw.tf_sd_voc2.overall_state IS '����״̬';
COMMENT ON COLUMN dw.tf_sd_voc2.cus_name_wid IS '�ͻ����ƴ����';
COMMENT ON COLUMN dw.tf_sd_voc2.cust_oemodm IS '�ͻ�OEM/ODM';
COMMENT ON COLUMN dw.tf_sd_voc2."type" IS '����';
COMMENT ON COLUMN dw.tf_sd_voc2.cufe_time_wid IS '�ͻ�����ʱ������';
COMMENT ON COLUMN dw.tf_sd_voc2.clie_status IS '�ͻ�������״̬';
COMMENT ON COLUMN dw.tf_sd_voc2.cust_req IS '�ͻ�Ҫ��';
COMMENT ON COLUMN dw.tf_sd_voc2.csfe_time IS 'CS��������ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc2.csta_on IS 'CS����';
COMMENT ON COLUMN dw.tf_sd_voc2.model IS '�ͺ�';
COMMENT ON COLUMN dw.tf_sd_voc2.prod_clas IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_sd_voc2.ship_n IS '��Ʒ������̬';
COMMENT ON COLUMN dw.tf_sd_voc2.panel_fact IS 'Panel����';
COMMENT ON COLUMN dw.tf_sd_voc2.ship_fact IS '��������';
COMMENT ON COLUMN dw.tf_sd_voc2.ispr_returned IS '����Ʒ�Ƿ񷵻�';
COMMENT ON COLUMN dw.tf_sd_voc2.retu_time IS '����Ʒ����ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc2.retu_msg IS '����Ʒ FGCode������������pcs��';
COMMENT ON COLUMN dw.tf_sd_voc2.comm_time IS '��Ʒί��ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc2.plan_handling IS '���ڲ�Ʒ��������ʽ+����������';
COMMENT ON COLUMN dw.tf_sd_voc2.comp_factory IS '�ͻ���Closeʱ��';
COMMENT ON COLUMN dw.tf_sd_voc2.clie_status2 IS '�ͻ���Status';
COMMENT ON COLUMN dw.tf_sd_voc2.reportstage IS '���̽ڵ���';
COMMENT ON COLUMN dw.tf_sd_voc2.customercode IS '�ͻ�����';
COMMENT ON COLUMN dw.tf_sd_voc2.cusfilename IS '�ͻ����հ汨���ļ���';
COMMENT ON COLUMN dw.tf_sd_voc2.voc2id IS 'VOC2����ID';
COMMENT ON COLUMN dw.tf_sd_voc2.badpicnames IS '����ͼƬ�ļ���';
COMMENT ON COLUMN dw.tf_sd_voc2.firstname IS '���渽���ļ���';
COMMENT ON COLUMN dw.tf_sd_voc2.endname IS '�հ渽���ļ���';
COMMENT ON COLUMN dw.tf_sd_voc2.voctype IS 'VOC����';
COMMENT ON COLUMN dw.tf_sd_voc2.department IS '�������ſ���';
COMMENT ON COLUMN dw.tf_sd_voc2.input_number IS 'Ͷ����';
COMMENT ON COLUMN dw.tf_sd_voc2.bad_mumber IS '������';
COMMENT ON COLUMN dw.tf_sd_voc2.high_n IS '�߷���������';
COMMENT ON COLUMN dw.tf_sd_voc2.factoryconf IS '���ڸ���Ч��ȷ��';
COMMENT ON COLUMN dw.tf_sd_voc2.personlia IS '������';
COMMENT ON COLUMN dw.tf_sd_voc2.infactorytime IS '����Closeʱ��';
COMMENT ON COLUMN dw.tf_sd_voc2.infactoryclosetat IS '����CloseTAT/ʱ';
COMMENT ON COLUMN dw.tf_sd_voc2.factorystatus IS '����Status';
COMMENT ON COLUMN dw.tf_sd_voc2.first_days IS '���汨�����ͨ��TAT/ʱ';
COMMENT ON COLUMN dw.tf_sd_voc2.final_days IS '�հ汨�����ͨ��TAT/ʱ';
COMMENT ON COLUMN dw.tf_sd_voc2.res_fac IS '���ι���';

-- Permissions

ALTER TABLE dw.tf_sd_voc2 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc2 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc2 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_voc2 TO gr_uqry_data;
