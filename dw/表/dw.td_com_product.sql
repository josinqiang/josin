-- Drop table

-- DROP TABLE dw.td_com_product;

CREATE TABLE dw.td_com_product (
	row_wid int8 NOT NULL, -- �����
	material_short_name varchar(9) NULL, -- �������������ı���
	material_name varchar(9) NULL, -- �й�ƥ����Ĵ�д����������
	client varchar(9) NULL, -- �ͻ���
	material_number varchar(54) NULL, -- ���Ϻ�
	creation_date varchar(24) NULL, -- ��������
	created_by varchar(36) NULL, -- �����������Ա����
	last_update_date varchar(24) NULL, -- �ϴθ��ĵ�����
	last_updated_by varchar(36) NULL, -- ���������Ա������
	material_status varchar(45) NULL, -- ά��ȫ������״̬
	maintenance_status varchar(45) NULL, -- ά��״̬
	flagmaterial_deletion varchar(3) NULL, -- �ڿͻ������Ҫɾ��������
	material_type varchar(12) NULL, -- ��������
	industry_sector varchar(3) NULL, -- ��ҵ����
	material_group varchar(27) NULL, -- ������
	oldmaterial_number varchar(54) NULL, -- �����Ϻ�
	baseunitof_measure varchar(9) NULL, -- ����������λ
	groes varchar(96) NULL, -- ��С_����
	wrkst varchar(144) NULL, -- ��������
	normt varchar(54) NULL, -- ��ҵ��׼���������� ANSI �� ISO��
	labor varchar(9) NULL, -- ʵ����_�����
	ekwsl varchar(12) NULL, -- �ɹ���ֵ����
	brgew numeric(13,3) NULL, -- ë��
	ntgew numeric(13,3) NULL, -- ����
	gewei varchar(9) NULL, -- ������λ
	volum numeric(13,3) NULL, -- ҵ����
	voleh varchar(9) NULL, -- �����λ
	behvo varchar(6) NULL, -- ��������
	raube varchar(6) NULL, -- �洢����
	tempb varchar(6) NULL, -- �¶�������ʶ
	disst varchar(9) NULL, -- �Ͳ����
	tragr varchar(12) NULL, -- ������
	stoff varchar(54) NULL, -- Σ�����Ϻ�
	spart varchar(6) NULL, -- ��Ʒ��
	kunnr varchar(30) NULL, -- ������
	bwscl varchar(3) NULL, -- ��Դ
	saiso varchar(12) NULL, -- �������
	etiar varchar(6) NULL, -- ��ǩ����
	etifo varchar(6) NULL, -- ��ǩ��ʽ
	entar varchar(3) NULL, -- ȡ�������
	ean11 varchar(54) NULL, -- �����ļ���(EAN_UPC)
	numtp varchar(6) NULL, -- ������Ʒ�������� (EAN)
	laeng numeric(13,3) NULL, -- ����
	breit numeric(13,3) NULL, -- ���
	hoehe numeric(13,3) NULL, -- �߶�
	meabm varchar(9) NULL, -- ����_���_�߶ȵĳߴ絥λ
	prdha varchar(54) NULL, -- ��Ʒ���
	magrv varchar(12) NULL, -- ������: ��װ����
	begru varchar(12) NULL, -- Ȩ����
	datab varchar(24) NULL, -- ��ʼ��Ч����
	liqdt varchar(24) NULL, -- ɾ������
	saisj varchar(12) NULL, -- ������
	plgtp varchar(6) NULL, -- �۸������
	mlgut varchar(3) NULL, -- �հ������嵥
	extwg varchar(54) NULL, -- �ⲿ������
	satnr varchar(54) NULL, -- һ�����������
	attyp varchar(6) NULL, -- �������
	kzkup varchar(3) NULL, -- ָʾ�� : ����������Ʒ
	kznfm varchar(3) NULL, -- ��ǣ�������һ��������
	pmata varchar(54) NULL, -- ���۲ο�����
	taklv varchar(3) NULL, -- ���ϴ�˰�շ���
	rbnrm varchar(27) NULL, -- �������ļ�
	mhdrz numeric(4) NULL, -- ���ʣ���������
	mhdhb numeric(4) NULL, -- �ܻ�������
	mhdlp numeric(3) NULL, -- �ִ��ٷֱ�
	inhme varchar(9) NULL, -- ���ݵ�λ
	inhal numeric(13,3) NULL, -- ������
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
COMMENT ON TABLE dw.td_com_product IS ' ��Ʒ';

-- Column comments

COMMENT ON COLUMN dw.td_com_product.row_wid IS '�����';
COMMENT ON COLUMN dw.td_com_product.material_short_name IS '�������������ı���';
COMMENT ON COLUMN dw.td_com_product.material_name IS '�й�ƥ����Ĵ�д����������';
COMMENT ON COLUMN dw.td_com_product.client IS '�ͻ���';
COMMENT ON COLUMN dw.td_com_product.material_number IS '���Ϻ�';
COMMENT ON COLUMN dw.td_com_product.creation_date IS '��������';
COMMENT ON COLUMN dw.td_com_product.created_by IS '�����������Ա����';
COMMENT ON COLUMN dw.td_com_product.last_update_date IS '�ϴθ��ĵ�����';
COMMENT ON COLUMN dw.td_com_product.last_updated_by IS '���������Ա������';
COMMENT ON COLUMN dw.td_com_product.material_status IS 'ά��ȫ������״̬';
COMMENT ON COLUMN dw.td_com_product.maintenance_status IS 'ά��״̬';
COMMENT ON COLUMN dw.td_com_product.flagmaterial_deletion IS '�ڿͻ������Ҫɾ��������';
COMMENT ON COLUMN dw.td_com_product.material_type IS '��������';
COMMENT ON COLUMN dw.td_com_product.industry_sector IS '��ҵ����';
COMMENT ON COLUMN dw.td_com_product.material_group IS '������';
COMMENT ON COLUMN dw.td_com_product.oldmaterial_number IS '�����Ϻ�';
COMMENT ON COLUMN dw.td_com_product.baseunitof_measure IS '����������λ';
COMMENT ON COLUMN dw.td_com_product.groes IS '��С_����';
COMMENT ON COLUMN dw.td_com_product.wrkst IS '��������';
COMMENT ON COLUMN dw.td_com_product.normt IS '��ҵ��׼���������� ANSI �� ISO��';
COMMENT ON COLUMN dw.td_com_product.labor IS 'ʵ����_�����';
COMMENT ON COLUMN dw.td_com_product.ekwsl IS '�ɹ���ֵ����';
COMMENT ON COLUMN dw.td_com_product.brgew IS 'ë��';
COMMENT ON COLUMN dw.td_com_product.ntgew IS '����';
COMMENT ON COLUMN dw.td_com_product.gewei IS '������λ';
COMMENT ON COLUMN dw.td_com_product.volum IS 'ҵ����';
COMMENT ON COLUMN dw.td_com_product.voleh IS '�����λ';
COMMENT ON COLUMN dw.td_com_product.behvo IS '��������';
COMMENT ON COLUMN dw.td_com_product.raube IS '�洢����';
COMMENT ON COLUMN dw.td_com_product.tempb IS '�¶�������ʶ';
COMMENT ON COLUMN dw.td_com_product.disst IS '�Ͳ����';
COMMENT ON COLUMN dw.td_com_product.tragr IS '������';
COMMENT ON COLUMN dw.td_com_product.stoff IS 'Σ�����Ϻ�';
COMMENT ON COLUMN dw.td_com_product.spart IS '��Ʒ��';
COMMENT ON COLUMN dw.td_com_product.kunnr IS '������';
COMMENT ON COLUMN dw.td_com_product.bwscl IS '��Դ';
COMMENT ON COLUMN dw.td_com_product.saiso IS '�������';
COMMENT ON COLUMN dw.td_com_product.etiar IS '��ǩ����';
COMMENT ON COLUMN dw.td_com_product.etifo IS '��ǩ��ʽ';
COMMENT ON COLUMN dw.td_com_product.entar IS 'ȡ�������';
COMMENT ON COLUMN dw.td_com_product.ean11 IS '�����ļ���(EAN_UPC)';
COMMENT ON COLUMN dw.td_com_product.numtp IS '������Ʒ�������� (EAN)';
COMMENT ON COLUMN dw.td_com_product.laeng IS '����';
COMMENT ON COLUMN dw.td_com_product.breit IS '���';
COMMENT ON COLUMN dw.td_com_product.hoehe IS '�߶�';
COMMENT ON COLUMN dw.td_com_product.meabm IS '����_���_�߶ȵĳߴ絥λ';
COMMENT ON COLUMN dw.td_com_product.prdha IS '��Ʒ���';
COMMENT ON COLUMN dw.td_com_product.magrv IS '������: ��װ����';
COMMENT ON COLUMN dw.td_com_product.begru IS 'Ȩ����';
COMMENT ON COLUMN dw.td_com_product.datab IS '��ʼ��Ч����';
COMMENT ON COLUMN dw.td_com_product.liqdt IS 'ɾ������';
COMMENT ON COLUMN dw.td_com_product.saisj IS '������';
COMMENT ON COLUMN dw.td_com_product.plgtp IS '�۸������';
COMMENT ON COLUMN dw.td_com_product.mlgut IS '�հ������嵥';
COMMENT ON COLUMN dw.td_com_product.extwg IS '�ⲿ������';
COMMENT ON COLUMN dw.td_com_product.satnr IS 'һ�����������';
COMMENT ON COLUMN dw.td_com_product.attyp IS '�������';
COMMENT ON COLUMN dw.td_com_product.kzkup IS 'ָʾ�� : ����������Ʒ';
COMMENT ON COLUMN dw.td_com_product.kznfm IS '��ǣ�������һ��������';
COMMENT ON COLUMN dw.td_com_product.pmata IS '���۲ο�����';
COMMENT ON COLUMN dw.td_com_product.taklv IS '���ϴ�˰�շ���';
COMMENT ON COLUMN dw.td_com_product.rbnrm IS '�������ļ�';
COMMENT ON COLUMN dw.td_com_product.mhdrz IS '���ʣ���������';
COMMENT ON COLUMN dw.td_com_product.mhdhb IS '�ܻ�������';
COMMENT ON COLUMN dw.td_com_product.mhdlp IS '�ִ��ٷֱ�';
COMMENT ON COLUMN dw.td_com_product.inhme IS '���ݵ�λ';
COMMENT ON COLUMN dw.td_com_product.inhal IS '������';

-- Permissions

ALTER TABLE dw.td_com_product OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_product TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_product TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_product TO gr_uqry_data;
