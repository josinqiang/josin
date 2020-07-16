-- Drop table

-- DROP TABLE dw.tf_sd_voc1;

CREATE TABLE dw.tf_sd_voc1 (
	row_id varchar(60) NOT NULL,
	voc1id varchar(120) NULL, -- VOC1����ID
	portalid varchar(200) NULL, -- Portal ID
	finalappstatus varchar(200) NULL, -- �ͻ��հ汨������״̬
	voc1_title varchar(1020) NULL, -- VOC1 ����
	overall_state varchar(200) NULL, -- ����״̬
	cus_name_wid int8 NULL, -- �ͻ�����
	cus_oem_odm varchar(1020) NULL, -- �ͻ�OEM/ODM
	comp_level varchar(200) NULL, -- ��Թ�ȼ�
	date_occ_wid int8 NULL, -- Issue ��������
	bad_name varchar(200) NULL, -- ��������
	bad_desc varchar(1020) NULL, -- ��������������
	input_number numeric(22) NULL, -- Ͷ����
	bad_mumber numeric(22) NULL, -- ������
	issue_ppm numeric(22,7) NULL, -- Issue����ʱ�����ʣ�ppm��
	occ_stage varchar(120) NULL, -- �����׶�
	occ_site varchar(400) NULL, -- ����վ��
	occ_con varchar(1020) NULL, -- ����վ���Ӧ�ķ�������
	client_status varchar(200) NULL, -- �ͻ�������״̬
	cs_first_time timestamp NULL, -- CS�״ζ�Ӧ�ͻ�ʱ��
	cus_req varchar(1020) NULL, -- �ͻ�Ҫ��
	cs_fee_time timestamp NULL, -- CS��������ʱ��
	cs_takes_on varchar(200) NULL, -- CS����
	model varchar(400) NULL, -- �ͺ�
	fg_code varchar(200) NULL, -- FGCode
	prod_class varchar(200) NULL, -- ��Ʒ����
	ship_form varchar(120) NULL, -- ��Ʒ������̬
	panel_fac varchar(120) NULL, -- Panel����
	ship_fac varchar(200) NULL, -- ��������
	res_fac varchar(400) NULL, -- ���ι���
	bad_clas varchar(120) NULL, -- �������ࣨԤ�У�
	idd varchar(2000) NULL, -- ����ƷID��Ϣ��ʮ�����ڣ�
	is_pro_ret varchar(60) NULL, -- ����Ʒ�Ƿ񷵻�
	ret_qua numeric(22) NULL, -- ����Ʒ����������pcs��
	return_time timestamp NULL, -- ����Ʒ����ʱ��
	comm_time timestamp NULL, -- ��Ʒί��ʱ��
	client_prod varchar(1020) NULL, -- �ͻ��˲�Ʒ��������ʽ+����������
	plant_hand varchar(1020) NULL, -- ���ڲ�Ʒ��������ʽ+����������
	cause_lea varchar(4000) NULL, -- ©��ԭ��
	bad_reason varchar(4000) NULL, -- ����ԭ��
	root_cause varchar(4000) NULL, -- ������Ƽ���Ч��ȷ��
	final_cause varchar(200) NULL, -- Final Report�ͻ���֤���
	is_horizontal varchar(40) NULL, -- �Ƿ���Ҫ����չ��
	clc_aresults varchar(1020) NULL, -- CLCA��˽��
	interception varchar(4000) NULL, -- ���ظ��Ƽ���Ч��ȷ��
	cause_type varchar(1020) NULL, -- ԭ������
	person_liable varchar(200) NULL, -- ������
	client_clo_time timestamp NULL, -- �ͻ���Closeʱ��
	final_ret_time timestamp NULL, -- �ͻ��հ汨��ظ�ʱ�䣨CS��
	pull_thr varchar(1020) NULL, -- ��ͨ���
	first_comp_time timestamp NULL, -- ���汨�����ʱ��
	comp_in_factory timestamp NULL, -- �����հ汨�����ʱ��
	client_status2 varchar(200) NULL, -- �ͻ���Status
	reportstage varchar(200) NULL, -- ���̽ڵ���
	customercode varchar(200) NULL, -- �ͻ�����
	cusfilename varchar(1020) NULL, -- �ͻ����հ汨���ļ���
	infactorytime timestamp NULL, -- ����Closeʱ��
	infactoryclosetat numeric(22) NULL, -- ����CloseTAT/ʱ
	factorystatus varchar(200) NULL, -- ����Status
	badpicnames varchar(1020) NULL, -- ����ͼƬ�ļ���
	firstname varchar(1020) NULL, -- ���渽���ļ���
	endname varchar(1020) NULL, -- �հ渽���ļ���
	clcaname varchar(1020) NULL, -- CLCA�����ļ���
	firstfiles varchar(1020) NULL, -- ���渽��(8D/5C)
	endfiles varchar(1020) NULL, -- �հ渽��(8D/5C)
	clcafiles varchar(1020) NULL, -- CLCA����
	badpictures varchar(1020) NULL, -- ����ͼƬ
	impconfirm varchar(4000) NULL, -- ����Ч��ȷ��
	factcomfirm varchar(1020) NULL, -- ����Closeȷ����
	endfilesaudit varchar(4000) NULL, -- �հ汨�����
	department varchar(200) NULL, -- �������ſ���
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
COMMENT ON TABLE dw.tf_sd_voc1 IS '�ͻ�Ʒ��Issue';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_voc1.voc1id IS 'VOC1����ID';
COMMENT ON COLUMN dw.tf_sd_voc1.portalid IS 'Portal ID';
COMMENT ON COLUMN dw.tf_sd_voc1.finalappstatus IS '�ͻ��հ汨������״̬';
COMMENT ON COLUMN dw.tf_sd_voc1.voc1_title IS 'VOC1 ����';
COMMENT ON COLUMN dw.tf_sd_voc1.overall_state IS '����״̬';
COMMENT ON COLUMN dw.tf_sd_voc1.cus_name_wid IS '�ͻ�����';
COMMENT ON COLUMN dw.tf_sd_voc1.cus_oem_odm IS '�ͻ�OEM/ODM';
COMMENT ON COLUMN dw.tf_sd_voc1.comp_level IS '��Թ�ȼ�';
COMMENT ON COLUMN dw.tf_sd_voc1.date_occ_wid IS 'Issue ��������';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_name IS '��������';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_desc IS '��������������';
COMMENT ON COLUMN dw.tf_sd_voc1.input_number IS 'Ͷ����';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_mumber IS '������';
COMMENT ON COLUMN dw.tf_sd_voc1.issue_ppm IS 'Issue����ʱ�����ʣ�ppm��';
COMMENT ON COLUMN dw.tf_sd_voc1.occ_stage IS '�����׶�';
COMMENT ON COLUMN dw.tf_sd_voc1.occ_site IS '����վ��';
COMMENT ON COLUMN dw.tf_sd_voc1.occ_con IS '����վ���Ӧ�ķ�������';
COMMENT ON COLUMN dw.tf_sd_voc1.client_status IS '�ͻ�������״̬';
COMMENT ON COLUMN dw.tf_sd_voc1.cs_first_time IS 'CS�״ζ�Ӧ�ͻ�ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.cus_req IS '�ͻ�Ҫ��';
COMMENT ON COLUMN dw.tf_sd_voc1.cs_fee_time IS 'CS��������ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.cs_takes_on IS 'CS����';
COMMENT ON COLUMN dw.tf_sd_voc1.model IS '�ͺ�';
COMMENT ON COLUMN dw.tf_sd_voc1.fg_code IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_voc1.prod_class IS '��Ʒ����';
COMMENT ON COLUMN dw.tf_sd_voc1.ship_form IS '��Ʒ������̬';
COMMENT ON COLUMN dw.tf_sd_voc1.panel_fac IS 'Panel����';
COMMENT ON COLUMN dw.tf_sd_voc1.ship_fac IS '��������';
COMMENT ON COLUMN dw.tf_sd_voc1.res_fac IS '���ι���';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_clas IS '�������ࣨԤ�У�';
COMMENT ON COLUMN dw.tf_sd_voc1.idd IS '����ƷID��Ϣ��ʮ�����ڣ�';
COMMENT ON COLUMN dw.tf_sd_voc1.is_pro_ret IS '����Ʒ�Ƿ񷵻�';
COMMENT ON COLUMN dw.tf_sd_voc1.ret_qua IS '����Ʒ����������pcs��';
COMMENT ON COLUMN dw.tf_sd_voc1.return_time IS '����Ʒ����ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.comm_time IS '��Ʒί��ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.client_prod IS '�ͻ��˲�Ʒ��������ʽ+����������';
COMMENT ON COLUMN dw.tf_sd_voc1.plant_hand IS '���ڲ�Ʒ��������ʽ+����������';
COMMENT ON COLUMN dw.tf_sd_voc1.cause_lea IS '©��ԭ��';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_reason IS '����ԭ��';
COMMENT ON COLUMN dw.tf_sd_voc1.root_cause IS '������Ƽ���Ч��ȷ��';
COMMENT ON COLUMN dw.tf_sd_voc1.final_cause IS 'Final Report�ͻ���֤���';
COMMENT ON COLUMN dw.tf_sd_voc1.is_horizontal IS '�Ƿ���Ҫ����չ��';
COMMENT ON COLUMN dw.tf_sd_voc1.clc_aresults IS 'CLCA��˽��';
COMMENT ON COLUMN dw.tf_sd_voc1.interception IS '���ظ��Ƽ���Ч��ȷ��';
COMMENT ON COLUMN dw.tf_sd_voc1.cause_type IS 'ԭ������';
COMMENT ON COLUMN dw.tf_sd_voc1.person_liable IS '������';
COMMENT ON COLUMN dw.tf_sd_voc1.client_clo_time IS '�ͻ���Closeʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.final_ret_time IS '�ͻ��հ汨��ظ�ʱ�䣨CS��';
COMMENT ON COLUMN dw.tf_sd_voc1.pull_thr IS '��ͨ���';
COMMENT ON COLUMN dw.tf_sd_voc1.first_comp_time IS '���汨�����ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.comp_in_factory IS '�����հ汨�����ʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.client_status2 IS '�ͻ���Status';
COMMENT ON COLUMN dw.tf_sd_voc1.reportstage IS '���̽ڵ���';
COMMENT ON COLUMN dw.tf_sd_voc1.customercode IS '�ͻ�����';
COMMENT ON COLUMN dw.tf_sd_voc1.cusfilename IS '�ͻ����հ汨���ļ���';
COMMENT ON COLUMN dw.tf_sd_voc1.infactorytime IS '����Closeʱ��';
COMMENT ON COLUMN dw.tf_sd_voc1.infactoryclosetat IS '����CloseTAT/ʱ';
COMMENT ON COLUMN dw.tf_sd_voc1.factorystatus IS '����Status';
COMMENT ON COLUMN dw.tf_sd_voc1.badpicnames IS '����ͼƬ�ļ���';
COMMENT ON COLUMN dw.tf_sd_voc1.firstname IS '���渽���ļ���';
COMMENT ON COLUMN dw.tf_sd_voc1.endname IS '�հ渽���ļ���';
COMMENT ON COLUMN dw.tf_sd_voc1.clcaname IS 'CLCA�����ļ���';
COMMENT ON COLUMN dw.tf_sd_voc1.firstfiles IS '���渽��(8D/5C)';
COMMENT ON COLUMN dw.tf_sd_voc1.endfiles IS '�հ渽��(8D/5C)';
COMMENT ON COLUMN dw.tf_sd_voc1.clcafiles IS 'CLCA����';
COMMENT ON COLUMN dw.tf_sd_voc1.badpictures IS '����ͼƬ';
COMMENT ON COLUMN dw.tf_sd_voc1.impconfirm IS '����Ч��ȷ��';
COMMENT ON COLUMN dw.tf_sd_voc1.factcomfirm IS '����Closeȷ����';
COMMENT ON COLUMN dw.tf_sd_voc1.endfilesaudit IS '�հ汨�����';
COMMENT ON COLUMN dw.tf_sd_voc1.department IS '�������ſ���';

-- Permissions

ALTER TABLE dw.tf_sd_voc1 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc1 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc1 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_voc1 TO gr_uqry_data;
