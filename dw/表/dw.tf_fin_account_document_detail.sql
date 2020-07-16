-- Drop table

-- DROP TABLE dw.tf_fin_account_document_detail;

CREATE TABLE dw.tf_fin_account_document_detail (
	client_code varchar(3) NULL, -- �ͻ���
	company_wid int8 NULL, -- ��˾��������
	account_document varchar(10) NULL, -- ���ƾ֤���
	fiscal_year numeric(4) NULL, -- ������
	account_document_line_num numeric(3) NULL, -- ���ƾ֤�е�����Ŀ��
	account_document_line_flag varchar(1) NULL, -- ����Ŀ��ʶ
	clearing_date_wid int8 NULL, -- �������ڴ����
	clearing_entry_date timestamp NULL, -- �����¼����
	clearing_reversal_document varchar(10) NULL, -- ���㵥�ݵĵ��ݺ���
	posting_code varchar(2) NULL, -- ���ʴ���
	account_type varchar(1) NULL, -- ��Ŀ����
	spcial_gl_flag varchar(1) NULL, -- �������ʱ�ʶ
	spcial_gl_transact_type varchar(1) NULL, -- �����ܷ�������������
	target_spcial_gl_flag varchar(1) NULL, -- Ŀ���ر����ʱ�־
	debit_credit_flag varchar(1) NULL, -- �跽/������ʶ
	business_area varchar(4) NULL, -- ҵ��Χ
	trad_partner_business_area varchar(4) NULL, -- ó�׻���ҵ��Χ
	sales_tax_code varchar(2) NULL, -- ����˰����
	with_hold_tax_code varchar(2) NULL, -- Ԥ��˰����
	cost_center_wid int8 NULL, -- �ɱ�����
	gl_account_number_wid int8 NULL, -- �ܷ�������Ŀ�����
	customer_wid int8 NULL, -- �ͻ����1�����
	vendor_wid int8 NULL, -- ��Ӧ�̻�ծȨ�˵��ʺŴ����
	item_wid int8 NULL, -- ���ϺŴ����
	factory_wid int8 NULL, -- ���������
	quantity numeric(13,3) NULL, -- ����
	local_currency_amount numeric(13,2) NULL, -- ����λ�ҼƵĽ��
	transaction_currency_amount numeric(13,2) NULL, -- ƾ֤���ҽ��
	local_currency_origin_reduct_amount numeric(13,2) NULL, -- �Ա��Ҽ����ԭʼ�������
	gl_update_amount numeric(13,2) NULL, -- �����и��µĽ��
	gl_transaction_update_currency varchar(5) NULL, -- �����ܷ����ʽ������ֻ���
	original_tax_local_currency_base_amount numeric(13,2) NULL, -- �Ա��ҼƵ�ԭʼ˰�ջ������
	original_tax_transact_currency_base_amount numeric(13,2) NULL, -- ��ƾ֤���ҼƵ�ԭʼ˰�ջ������
	mwsts numeric(13,2) NULL, -- �ñ��ұ�ʾ��˰�ս��
	wmwst numeric(13,2) NULL, -- ��ƾ֤���ұ�ʾ��˰�ս��
	hwbas numeric(13,2) NULL, -- �Ա��ҼƵ�˰�����
	fwbas numeric(13,2) NULL, -- ��ƾ֤���ұ�ʾ��˰����
	hwzuz numeric(13,2) NULL, -- �Ա��ҼƵ�Ԥ�����
	fwzuz numeric(13,2) NULL, -- ��ƾ֤���ҼƵĸ���˰
	shzuz varchar(1) NULL, -- �ֽ��ۿ۵ĸ��ӽ跽/����
	stekz varchar(2) NULL, -- �汾�����
	mwart varchar(1) NULL, -- ˰������
	txgrp numeric(3) NULL, -- ˰������Ŀ�ļ��ű�־
	ktosl varchar(3) NULL, -- ����ؼ���
	qsshb numeric(13,2) NULL, -- �۽�˰��������
	kursr numeric(9,5) NULL, -- �׹�����
	gbetr numeric(13,2) NULL, -- ������ڽ��׶�
	bdiff numeric(13,2) NULL, -- ���۲��
	bdif2 numeric(13,2) NULL, -- �ڶ����ҵ��������
	valut timestamp NULL, -- ��Ϣ��
	zuonr varchar(18) NULL, -- ������
	sgtxt varchar(50) NULL, -- ��Ŀ�ı�
	zinkz varchar(2) NULL, -- ����Ϣ���������
	vbund varchar(6) NULL, -- ó�׻��Ĺ�˾��ʶ
	bewar varchar(3) NULL, -- ��������
	altkt varchar(10) NULL, -- ���Ŀ��
	vorgn varchar(4) NULL, -- ������������
	fdlev varchar(2) NULL, -- �ƻ����
	fdgrp varchar(10) NULL, -- �ƻ���
	fdwbt numeric(13,2) NULL, -- ƾ֤���û��ҵļƻ����
	fdtag timestamp NULL, -- �ƻ�����
	fkont numeric(3) NULL, -- ����Ԥ����Ŀ
	kokrs varchar(4) NULL, -- ���Ʒ�Χ
	projn varchar(16) NULL -- ԭ��:��Ŀ���:����ʹ��,-->ps_posnr
	aufnr varchar(12) NULL, -- ������
	vbeln varchar(10) NULL, -- ��Ʊƾ֤
	vbel2 varchar(10) NULL, -- ����ƾ֤
	posn2 numeric(6) NULL, -- ����ƾ֤��Ŀ
	eten2 numeric(4) NULL, -- �����ƻ��к�
	anln1 varchar(12) NULL, -- ���ʲ���
	anln2 varchar(4) NULL, -- �ʲ��μ����
	anbwa varchar(3) NULL, -- �ʲ�ҵ������
	bzdat timestamp NULL, -- �ʲ���ֵ��
	pernr numeric(8) NULL, -- ��Ա���
	xumsw varchar(1) NULL, -- ָʾ��:���������Ŀ?
	xhres varchar(1) NULL, -- ָʾ��:�����g/l��Ŀ?
	xkres varchar(1) NULL, -- ��ʶ:�ɸ��ݿ�Ŀ��ʾ������Ŀ��?
	xopvw varchar(1) NULL, -- ��־:δ����Ŀ����?
	xcpdd varchar(1) NULL, -- ��ʶ:�ֱ����õ�ַ����������
	xskst varchar(1) NULL, -- ��־:ͳ�Ƽ��ʵ��ɱ�����
	xsauf varchar(1) NULL, -- ��־:ͳ�Ƽ��ʵ�����
	xspro varchar(1) NULL, -- ��־:ͳ�Ƽ��ʵ���Ŀ
	xserg varchar(1) NULL, -- ��־:�������������ͳ���Ե�
	xfakt varchar(1) NULL, -- ��־:��Ʊ���³ɹ�?
	xuman varchar(1) NULL, -- ָʾ��:��Ԥ����ת��?
	xanet varchar(1) NULL, -- ָʾ��:��ֵ�����еĶ���?
	xskrl varchar(1) NULL, -- ��־:����Ŀ���ֽ��ۿ��޹�?
	xinve varchar(1) NULL, -- ��ʶ:�ʲ�����Ӱ��?
	xpanz varchar(1) NULL, -- ��ʾƾ֤��
	xauto varchar(1) NULL, -- ��־:�Զ���������Ŀ
	xncop varchar(1) NULL, -- ָʾ��:���ɸ�����?
	xzahl varchar(1) NULL, -- ��ʶ��:��֧���������Ƿ�ʹ�ù�����?
	saknr varchar(10) NULL, -- ���ʿ�Ŀ���
	filkd varchar(10) NULL, -- ��֧�ʺ�
	xbilk varchar(1) NULL, -- ��־:�˿�Ŀ���ʲ���ծ���Ŀ��?
	gvtyp varchar(2) NULL, -- ���汨���Ŀ����
	hzuon varchar(18) NULL, -- �ر����ʿ�Ŀ�ķ����
	zfbdt timestamp NULL, -- ���ڵ����ռ���Ļ�׼����
	zterm varchar(4) NULL, -- ������������
	zbd1t numeric(3) NULL, -- �ֽ��ۿ�����1
	zbd2t numeric(3) NULL, -- �ֽ��ۿ�����2
	zbd3t numeric(3) NULL, -- ��֧�������ڶ�
	zbd1p numeric(5,3) NULL,
	zbd2p numeric(5,3) NULL,
	skfbt numeric(13,2) NULL,
	sknto numeric(13,2) NULL,
	wskto numeric(13,2) NULL,
	zlsch varchar(1) NULL,
	zlspr varchar(1) NULL,
	zbfix varchar(1) NULL,
	hbkid varchar(5) NULL,
	bvtyp varchar(4) NULL,
	nebtr numeric(13,2) NULL,
	mwsk1 varchar(2) NULL,
	dmbt1 numeric(13,2) NULL,
	wrbt1 numeric(13,2) NULL,
	mwsk2 varchar(2) NULL,
	dmbt2 numeric(13,2) NULL,
	wrbt2 numeric(13,2) NULL,
	mwsk3 varchar(2) NULL,
	dmbt3 numeric(13,2) NULL,
	wrbt3 numeric(13,2) NULL,
	rebzg varchar(10) NULL,
	rebzj numeric(4) NULL,
	rebzz numeric(3) NULL,
	rebzt varchar(1) NULL,
	zollt varchar(8) NULL,
	zolld timestamp NULL,
	lzbkz varchar(3) NULL,
	landl varchar(3) NULL,
	diekz varchar(1) NULL,
	samnr numeric(8) NULL,
	abper timestamp NULL,
	vrskz varchar(1) NULL,
	vrsdt timestamp NULL,
	disbn varchar(10) NULL,
	disbj numeric(4) NULL,
	disbz numeric(3) NULL,
	wverw varchar(1) NULL,
	anfbn varchar(10) NULL,
	anfbj numeric(4) NULL,
	anfbu varchar(4) NULL,
	anfae timestamp NULL,
	blnbt numeric(13,2) NULL,
	blnkz varchar(2) NULL,
	qbshb numeric(13,2) NULL,
	qsfbt numeric(13,2) NULL,
	navhw numeric(13,2) NULL,
	navfw numeric(13,2) NULL,
	meins varchar(3) NULL,
	erfmg numeric(13,3) NULL,
	erfme varchar(3) NULL,
	bpmng numeric(13,3) NULL,
	bprme varchar(3) NULL,
	ebeln varchar(10) NULL,
	ebelp numeric(5) NULL,
	zekkn numeric(2) NULL,
	elikz varchar(1) NULL,
	vprsv varchar(1) NULL,
	peinh numeric(5) NULL,
	bwkey varchar(4) NULL,
	bwtar varchar(10) NULL,
	bustw varchar(4) NULL,
	rewrt numeric(13,2) NULL,
	rewwr numeric(13,2) NULL,
	bonfb numeric(13,2) NULL,
	bualt numeric(13,2) NULL,
	psalt varchar(1) NULL,
	nprei numeric(11,2) NULL,
	tbtkz varchar(1) NULL,
	spgrp varchar(1) NULL,
	spgrm varchar(1) NULL,
	spgrt varchar(1) NULL,
	spgrg varchar(1) NULL,
	spgrv varchar(1) NULL,
	spgrq varchar(1) NULL,
	stceg varchar(20) NULL,
	egbld varchar(3) NULL,
	eglld varchar(3) NULL,
	rstgr varchar(3) NULL,
	ryacq varchar(4) NULL,
	rpacq numeric(3) NULL,
	rdiff numeric(13,2) NULL,
	rdif2 numeric(13,2) NULL,
	prctr varchar(10) NULL,
	xhkom varchar(1) NULL,
	vname varchar(6) NULL,
	recid varchar(2) NULL,
	egrup varchar(3) NULL,
	vptnr varchar(10) NULL,
	vertt varchar(1) NULL,
	vertn varchar(13) NULL,
	vbewa varchar(4) NULL,
	depot varchar(10) NULL,
	txjcd varchar(15) NULL,
	imkey varchar(8) NULL,
	dabrz timestamp NULL,
	popts numeric(9,6) NULL,
	fipos varchar(14) NULL,
	kstrg varchar(12) NULL,
	nplnr varchar(12) NULL,
	aufpl numeric(10) NULL,
	aplzl numeric(8) NULL,
	projk numeric(8) NULL,
	paobjnr numeric(10) NULL,
	pasubnr numeric(4) NULL,
	spgrs varchar(1) NULL,
	spgrc varchar(1) NULL,
	btype varchar(2) NULL,
	etype varchar(3) NULL,
	xegdr varchar(1) NULL,
	lnran numeric(5) NULL,
	hrkft varchar(4) NULL,
	dmbe2 numeric(13,2) NULL,
	dmbe3 numeric(13,2) NULL,
	dmb21 numeric(13,2) NULL,
	dmb22 numeric(13,2) NULL,
	dmb23 numeric(13,2) NULL,
	dmb31 numeric(13,2) NULL,
	dmb32 numeric(13,2) NULL,
	dmb33 numeric(13,2) NULL,
	mwst2 numeric(13,2) NULL,
	mwst3 numeric(13,2) NULL,
	navh2 numeric(13,2) NULL,
	navh3 numeric(13,2) NULL,
	sknt2 numeric(13,2) NULL,
	sknt3 numeric(13,2) NULL,
	bdif3 numeric(13,2) NULL,
	rdif3 numeric(13,2) NULL,
	hwmet varchar(1) NULL,
	glupm varchar(1) NULL,
	xragl varchar(1) NULL,
	uzawe varchar(2) NULL,
	lokkt varchar(10) NULL,
	fistl varchar(16) NULL,
	geber varchar(10) NULL,
	fkber varchar(4) NULL,
	obzei numeric(3) NULL,
	xnegp varchar(1) NULL,
	rfzei numeric(3) NULL,
	ccbtc varchar(10) NULL,
	kkber varchar(4) NULL,
	empfb varchar(10) NULL,
	xref3 varchar(20) NULL,
	gricd varchar(2) NULL,
	grirg varchar(3) NULL,
	gityp varchar(2) NULL,
	xpypr varchar(1) NULL,
	kidno varchar(30) NULL,
	txdat timestamp NULL,
	agzei numeric(5) NULL,
	pycur varchar(5) NULL,
	pyamt numeric(13,2) NULL,
	bupla varchar(4) NULL,
	secco varchar(4) NULL,
	lstar varchar(6) NULL,
	cession_kz varchar(2) NULL,
	prznr varchar(12) NULL,
	fkber_long varchar(16) NULL,
	auggj numeric(4) NULL,
	docln varchar(6) NULL,
	kstar varchar(10) NULL,
	xlgclr varchar(1) NULL,
	re_bukrs varchar(4) NULL,
	re_account varchar(10) NULL,
	pgeber varchar(10) NULL,
	pgrant_nbr varchar(20) NULL,
	budget_pd varchar(10) NULL,
	pbudget_pd varchar(10) NULL,
	perop_beg timestamp NULL,
	perop_end timestamp NULL,
	prodper timestamp NULL,
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
COMMENT ON TABLE dw.tf_fin_account_document_detail IS '��ʵ��-���ƾ֤';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_account_document_detail.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.company_wid IS '��˾��������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_document IS '���ƾ֤���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fiscal_year IS '������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_document_line_num IS '���ƾ֤�е�����Ŀ��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_document_line_flag IS '����Ŀ��ʶ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.clearing_date_wid IS '�������ڴ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.clearing_entry_date IS '�����¼����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.clearing_reversal_document IS '���㵥�ݵĵ��ݺ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.posting_code IS '���ʴ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_type IS '��Ŀ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.spcial_gl_flag IS '�������ʱ�ʶ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.spcial_gl_transact_type IS '�����ܷ�������������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.target_spcial_gl_flag IS 'Ŀ���ر����ʱ�־';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.debit_credit_flag IS '�跽/������ʶ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.business_area IS 'ҵ��Χ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.trad_partner_business_area IS 'ó�׻���ҵ��Χ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.sales_tax_code IS '����˰����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.with_hold_tax_code IS 'Ԥ��˰����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.cost_center_wid IS '�ɱ�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gl_account_number_wid IS '�ܷ�������Ŀ�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.customer_wid IS '�ͻ����1�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vendor_wid IS '��Ӧ�̻�ծȨ�˵��ʺŴ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.item_wid IS '���ϺŴ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.quantity IS '����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.local_currency_amount IS '����λ�ҼƵĽ��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.transaction_currency_amount IS 'ƾ֤���ҽ��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.local_currency_origin_reduct_amount IS '�Ա��Ҽ����ԭʼ�������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gl_update_amount IS '�����и��µĽ��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gl_transaction_update_currency IS '�����ܷ����ʽ������ֻ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.original_tax_local_currency_base_amount IS '�Ա��ҼƵ�ԭʼ˰�ջ������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.original_tax_transact_currency_base_amount IS '��ƾ֤���ҼƵ�ԭʼ˰�ջ������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.mwsts IS '�ñ��ұ�ʾ��˰�ս��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.wmwst IS '��ƾ֤���ұ�ʾ��˰�ս��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.hwbas IS '�Ա��ҼƵ�˰�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fwbas IS '��ƾ֤���ұ�ʾ��˰����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.hwzuz IS '�Ա��ҼƵ�Ԥ�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fwzuz IS '��ƾ֤���ҼƵĸ���˰';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.shzuz IS '�ֽ��ۿ۵ĸ��ӽ跽/����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.stekz IS '�汾�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.mwart IS '˰������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.txgrp IS '˰������Ŀ�ļ��ű�־';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.ktosl IS '����ؼ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.qsshb IS '�۽�˰��������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.kursr IS '�׹�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gbetr IS '������ڽ��׶�';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bdiff IS '���۲��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bdif2 IS '�ڶ����ҵ��������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.valut IS '��Ϣ��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zuonr IS '������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.sgtxt IS '��Ŀ�ı�';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zinkz IS '����Ϣ���������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vbund IS 'ó�׻��Ĺ�˾��ʶ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bewar IS '��������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.altkt IS '���Ŀ��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vorgn IS '������������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdlev IS '�ƻ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdgrp IS '�ƻ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdwbt IS 'ƾ֤���û��ҵļƻ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdtag IS '�ƻ�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fkont IS '����Ԥ����Ŀ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.kokrs IS '���Ʒ�Χ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.projn IS 'ԭ��:��Ŀ���:����ʹ��-->ps_posnr';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.aufnr IS '������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vbeln IS '��Ʊƾ֤';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vbel2 IS '����ƾ֤';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.posn2 IS '����ƾ֤��Ŀ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.eten2 IS '�����ƻ��к�';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.anln1 IS '���ʲ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.anln2 IS '�ʲ��μ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.anbwa IS '�ʲ�ҵ������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bzdat IS '�ʲ���ֵ��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.pernr IS '��Ա���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xumsw IS 'ָʾ��:���������Ŀ?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xhres IS 'ָʾ��:�����g/l��Ŀ?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xkres IS '��ʶ:�ɸ��ݿ�Ŀ��ʾ������Ŀ��?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xopvw IS '��־:δ����Ŀ����?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xcpdd IS '��ʶ:�ֱ����õ�ַ����������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xskst IS '��־:ͳ�Ƽ��ʵ��ɱ�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xsauf IS '��־:ͳ�Ƽ��ʵ�����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xspro IS '��־:ͳ�Ƽ��ʵ���Ŀ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xserg IS '��־:�������������ͳ���Ե�';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xfakt IS '��־:��Ʊ���³ɹ�?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xuman IS 'ָʾ��:��Ԥ����ת��?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xanet IS 'ָʾ��:��ֵ�����еĶ���?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xskrl IS '��־:����Ŀ���ֽ��ۿ��޹�?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xinve IS '��ʶ:�ʲ�����Ӱ��?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xpanz IS '��ʾƾ֤��';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xauto IS '��־:�Զ���������Ŀ';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xncop IS 'ָʾ��:���ɸ�����?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xzahl IS '��ʶ��:��֧���������Ƿ�ʹ�ù�����?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.saknr IS '���ʿ�Ŀ���';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.filkd IS '��֧�ʺ�';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xbilk IS '��־:�˿�Ŀ���ʲ���ծ���Ŀ��?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gvtyp IS '���汨���Ŀ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.hzuon IS '�ر����ʿ�Ŀ�ķ����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zfbdt IS '���ڵ����ռ���Ļ�׼����';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zterm IS '������������';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zbd1t IS '�ֽ��ۿ�����1';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zbd2t IS '�ֽ��ۿ�����2';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zbd3t IS '��֧�������ڶ�';

-- Permissions

ALTER TABLE dw.tf_fin_account_document_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_account_document_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_account_document_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_account_document_detail TO gr_uqry_data;
