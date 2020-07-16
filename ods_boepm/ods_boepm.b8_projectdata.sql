-- Drop table

-- DROP TABLE ods_boepm.b8_projectdata;

CREATE TABLE ods_boepm.b8_projectdata (
	id varchar(22) NOT NULL, -- ����id
	buuserid numeric(22) NULL, -- bu������
	projectid varchar(72) NULL, -- ��ĿID
	projectname varchar(300) NULL, -- ��Ŀ����
	terrain numeric(22) NULL, -- �ֵ�
	productfgcode varchar(300) NULL, -- �ο���ƷFGCode
	createtime timestamp NULL, -- ����ʱ��
	customer numeric(22) NULL, -- �ͻ�
	technology numeric(22) NULL, -- ����
	dimensions numeric(22) NULL, -- �ߴ�
	displaymode numeric(22) NULL, -- ��ʾģʽ
	supplytype varchar(300) NULL, -- ��Ӧ����
	shippingmode numeric(22) NULL, -- ����ģʽ
	resolution varchar(300) NULL, -- �ֱ���
	colorgamut numeric(22) NULL, -- ɫ��
	nits numeric(22) NULL, -- ����(nits)
	customersystemname varchar(300) NULL, -- �ͻ�ϵͳ��
	kpcs varchar(300) NULL, -- ��������Kpcs_M��
	fullfitplant numeric(22) NULL, -- ȫ���ϳ�
	logicpower varchar(300) NULL, -- �߼�����
	blupower varchar(300) NULL, -- BLU����
	mdlborder varchar(300) NULL, -- MDL �߿�
	mdlweight varchar(300) NULL, -- MDL����
	wopcb varchar(300) NULL, -- ģ����w_o PCB
	wpcb varchar(300) NULL, -- ģ����w PCB
	interfaces numeric(22) NULL, -- �ӿ�
	activearea varchar(300) NULL, -- ��Ч��ʾ����
	contrast varchar(300) NULL, -- �Աȶ�
	responsetime varchar(300) NULL, -- ��Ӧʱ��
	visualangle varchar(300) NULL, -- �ӽ�
	colordepth varchar(300) NULL, -- ɫ�����
	timetovolume varchar(300) NULL, -- ����ʱ��
	specialrequirement varchar(300) NULL, -- ��Ʒ����Ҫ��
	devbackground varchar(300) NULL, -- ��������������㣩
	cutnumber varchar(300) NULL, -- Array Cut��
	glassrate varchar(300) NULL, -- Array Glass������
	productchange varchar(300) NULL, -- ����ȷ�ϱ����
	recoverycycle varchar(150) NULL, -- ��Ʒ��������
	recoverykpcs varchar(150) NULL, -- ��Ʒ��������(Kpcs)
	lifecycle varchar(150) NULL, -- ��Ʒ��������
	developlevel varchar(150) NULL, -- ��Ʒ�����ȼ�
	firstsampletime varchar(150) NULL, -- ����ʱ��
	firstsampleno varchar(150) NULL, -- ��������(pcs)
	pm numeric(22) NULL, --   PMȷ����Ϣ?(pm)
	projectfgcode varchar(300) NULL, -- ��ĿFG Code
	arraynumber varchar(300) NULL, -- Array ���Ʒ��������Ϣ?
	cfnumber varchar(300) NULL, --   CF���ƷBom������Ϣ
	cellnumber varchar(300) NULL, --   Cell���Ʒ��������Ϣ
	panelrate varchar(300) NULL, -- Panel ͸���� ���
	validationresult varchar(300) NULL, -- ��֤���
	validationstate varchar(300) NULL, -- �ͻ���֤״��
	celldownpol varchar(300) NULL, -- Cell ��Pol-���洦��_����_���
	celluppol varchar(300) NULL, -- Cell ��Pol-���洦��_����_���
	cellmodel varchar(300) NULL, -- Cell Һ��-�ͺ�
	cellconsumption varchar(300) NULL, -- Cell Һ��-����
	sicmanufacturer varchar(300) NULL, -- ��· S-IC-����
	sicmodel varchar(300) NULL, -- ��· S-IC-�ͺ�
	sicconsumption varchar(300) NULL, -- ��· S-IC-����
	gicmanufacturer varchar(300) NULL, -- ��· G-IC-����
	gicmodel varchar(300) NULL, -- ��· G-IC-�ͺ�
	gicconsumption varchar(300) NULL, -- ��· G-IC-����
	xpcbmodel varchar(300) NULL, -- ��· X-PCB-�ͺ�
	xpcbconsumption varchar(300) NULL, -- ��· X-PCB-����
	cpcbmodel varchar(300) NULL, -- ��· C-PCB-�ͺ�(nits)
	cpcbconsumption varchar(300) NULL, -- ��· C-PCB-����
	fpcsize varchar(300) NULL, -- ��· FPC-�ߴ�_����
	fpcconsumption varchar(300) NULL, -- ��· FPC-����
	leddrivermanufacturer varchar(300) NULL, -- ��· LED Driver IC-����
	leddrivermodel varchar(300) NULL, -- ��· LED Driver IC-�ͺ�
	leddriverconsumption varchar(300) NULL, -- ��· LED Driver IC-����
	tconmodel varchar(300) NULL, -- ��· TCON-�ͺ�
	tconconsumption varchar(300) NULL, -- ��· TCON-����
	shiftermanufacturer varchar(300) NULL, -- ��· Level Shifter-����
	shiftermodel varchar(300) NULL, -- ��· Level Shifter-�ͺ�
	shifterconsumption varchar(300) NULL, -- ��· Level Shifter-����
	inputcntmanufacturer varchar(300) NULL, -- ��· Input CNT-����
	inputcntmodel varchar(300) NULL, -- ��· Input CNT-�ͺ�
	inputcntconsumption varchar(300) NULL,
	ledcntmanufacturer varchar(300) NULL,
	ledcntmodel varchar(300) NULL,
	ledcntconsumption varchar(300) NULL,
	erprommanufacturer varchar(300) NULL,
	erprommodel varchar(300) NULL,
	erpromconsumption varchar(300) NULL,
	touchfpcmanufacturer varchar(300) NULL,
	touchfpcmodel varchar(300) NULL,
	touchicmanufacturer varchar(300) NULL,
	touchicmodel varchar(300) NULL,
	touchicconsumption varchar(300) NULL,
	connectormanufacturer varchar(300) NULL,
	connectormodel varchar(300) NULL,
	connectorconsumption varchar(300) NULL,
	pgammamanufacturer varchar(300) NULL,
	pgammamodel varchar(300) NULL,
	pgammaconsumption varchar(300) NULL,
	crystalmanufacturer varchar(300) NULL,
	crystalmodel varchar(300) NULL,
	crystalconsumption varchar(300) NULL,
	machinelightparameter varchar(300) NULL,
	backcovermaterial varchar(300) NULL,
	lgpmaterial varchar(300) NULL,
	mfmaterial varchar(300) NULL,
	reflectormodel varchar(300) NULL,
	celltapemodel varchar(300) NULL,
	diffuserupmodel varchar(300) NULL,
	diffuserdownmodel varchar(300) NULL,
	prismupmodel varchar(300) NULL,
	prismdownmodel varchar(300) NULL,
	devbudget varchar(300) NULL,
	budgetnumber varchar(300) NULL,
	gatematerial varchar(300) NULL,
	gatethickness varchar(300) NULL,
	sdmaterial varchar(300) NULL,
	sdthickness varchar(300) NULL,
	pvxthickness varchar(300) NULL,
	masknumber varchar(300) NULL,
	glassthicksliming varchar(300) NULL,
	beforesliming varchar(300) NULL,
	aftersliming varchar(300) NULL,
	bmmanufacturer varchar(300) NULL,
	bmmodel varchar(300) NULL,
	rmanufacturer varchar(300) NULL,
	rmodel varchar(300) NULL,
	gmanufacturer varchar(300) NULL,
	gmodel varchar(300) NULL,
	bmanufacturer varchar(300) NULL,
	bmodel varchar(300) NULL,
	ocmanufacturer varchar(300) NULL,
	ocmodel varchar(300) NULL,
	psmanufacturer varchar(300) NULL,
	psmodle varchar(300) NULL,
	uppolmanufacturer varchar(300) NULL,
	uppolmodel varchar(300) NULL,
	uppolthickness varchar(300) NULL,
	downpolmanufacturer varchar(300) NULL,
	downpolmodel varchar(300) NULL,
	downpolthickness varchar(300) NULL,
	liquidcrystalmanu varchar(300) NULL,
	liquidcrystalmodel varchar(300) NULL,
	pimanufacturer varchar(300) NULL,
	pimodel varchar(300) NULL,
	pithickarray varchar(300) NULL,
	pithickcf varchar(300) NULL,
	arrays varchar(300) NULL,
	cf varchar(300) NULL,
	cell varchar(300) NULL,
	sensor varchar(300) NULL,
	oc varchar(300) NULL,
	mdl varchar(300) NULL,
	touch varchar(300) NULL,
	packing varchar(300) NULL,
	totalcost varchar(300) NULL,
	price varchar(300) NULL,
	sideeffict varchar(300) NULL,
	producttype numeric(22) NULL,
	touchfpcconsumption varchar(300) NULL,
	projectremark varchar(150) NULL,
	productstage varchar(150) NULL,
	bomtime varchar(150) NULL,
	technicalhighlights varchar(150) NULL,
	panelborder varchar(150) NULL,
	ppi varchar(150) NULL,
	pitechnology varchar(150) NULL,
	lcmodel varchar(150) NULL,
	lcconsumption varchar(150) NULL,
	lcmanufacturer varchar(150) NULL,
	uppolconsumption varchar(150) NULL,
	downpolconsumption varchar(150) NULL,
	fpffcmodel varchar(150) NULL,
	fpffcconsumption varchar(150) NULL,
	fpffcmanufacturer varchar(150) NULL,
	xpcbmanufacturer varchar(150) NULL,
	cpcbmanufacturer varchar(150) NULL,
	tconmanufacturer varchar(150) NULL,
	pmicmodel varchar(150) NULL,
	pmicconsumption varchar(150) NULL,
	pmicmanufacturer varchar(150) NULL,
	opmodel varchar(150) NULL,
	opconsumption varchar(150) NULL,
	opmanufacturer varchar(150) NULL,
	lightbarmodel varchar(300) NULL,
	lightbarconsumption varchar(150) NULL,
	lightbarmanufacturer varchar(150) NULL,
	backcovermodel varchar(150) NULL,
	backcoverconsumption varchar(150) NULL,
	backcovermanufacturer varchar(150) NULL,
	lgpmodel varchar(150) NULL,
	lgpconsumption varchar(150) NULL,
	lgpmanufacturer varchar(150) NULL,
	moldframemodel varchar(150) NULL,
	moldframeconsumption varchar(150) NULL,
	moldframemanufacturer varchar(150) NULL,
	diffuserupconsumption varchar(150) NULL,
	diffuserupmanufacturer varchar(150) NULL,
	prismupconsumption varchar(150) NULL,
	prismupmanufacturer varchar(150) NULL,
	prismdownconsumption varchar(150) NULL,
	prismdownmanufacturer varchar(150) NULL,
	diffuserdownconsumption varchar(150) NULL,
	diffuserdownmanufacturer varchar(150) NULL,
	reflectorconsumption varchar(150) NULL,
	reflectormanufacturer varchar(150) NULL,
	celltapeupmodel varchar(150) NULL,
	celltapeupconsumption varchar(150) NULL,
	celltapeupmanufacturer varchar(150) NULL,
	celltapedownmodel varchar(150) NULL,
	celltapedownconsumption varchar(150) NULL,
	celltapedownmanufacturer varchar(150) NULL,
	celltapeleftmodel varchar(150) NULL,
	celltapeleftconsumption varchar(150) NULL,
	celltapeleftmanufacturer varchar(150) NULL,
	celltaperightmodel varchar(150) NULL,
	celltaperightconsumption varchar(150) NULL,
	celltaperightmanufacturer varchar(150) NULL,
	developmentcycle varchar(150) NULL,
	drtime timestamp NULL,
	dvonetime timestamp NULL,
	dvtwotime timestamp NULL,
	dvtime timestamp NULL,
	pvtime timestamp NULL,
	ennumber varchar(150) NULL,
	sampling varchar(150) NULL,
	samplingrate varchar(150) NULL,
	castime varchar(150) NULL,
	buusername varchar(150) NULL,
	productchangepoint varchar(150) NULL,
	drrealtime timestamp NULL,
	dvonerealtime timestamp NULL,
	dvtworealtime timestamp NULL,
	dvrealtime timestamp NULL,
	pvrealtime timestamp NULL,
	planstarttime timestamp NULL,
	planendtime timestamp NULL,
	lightnom varchar(150) NULL,
	lightnotes varchar(150) NULL,
	circuitnom varchar(150) NULL,
	circuitnotes varchar(150) NULL,
	fixturesname varchar(150) NULL,
	fixturesnumber varchar(150) NULL,
	singleprice varchar(150) NULL,
	totalprice varchar(150) NULL,
	prtime timestamp NULL,
	estimatedtime timestamp NULL,
	realtime timestamp NULL,
	developdr timestamp NULL,
	developpv timestamp NULL,
	developdv2 timestamp NULL,
	developdv1 timestamp NULL,
	polo numeric NULL,
	custormer1 varchar(600) NULL,
	technology1 varchar(600) NULL,
	dimension1 varchar(600) NULL,
	displaymode1 varchar(600) NULL,
	supplytype1 varchar(600) NULL,
	shippingmode1 varchar(600) NULL,
	colorgamut1 varchar(600) NULL,
	nits1 varchar(600) NULL,
	fullfitplant1 varchar(600) NULL,
	interfaces1 varchar(600) NULL,
	customercasresult varchar(600) NULL,
	customercastime timestamp NULL,
	customercasdesc varchar(600) NULL,
	customerppresult varchar(600) NULL,
	customerpptime timestamp NULL,
	customerppdesc varchar(600) NULL,
	arrayinputtime timestamp NULL,
	arrayinputnum varchar(600) NULL,
	arrayoutputtime timestamp NULL,
	arrayoutputnum varchar(600) NULL,
	arraygoodrate varchar(600) NULL,
	arraydesc varchar(600) NULL,
	cfinputtime timestamp NULL,
	cfinputnum varchar(600) NULL,
	cfoutputtime timestamp NULL,
	cfoutputnum varchar(600) NULL,
	cfgoodrate varchar(600) NULL,
	cfdesc varchar(600) NULL,
	cellinputtime timestamp NULL,
	cellinputnum varchar(600) NULL,
	celloutputtime timestamp NULL,
	celloutputnum varchar(600) NULL,
	cellgoodrate varchar(600) NULL,
	celldesc varchar(600) NULL,
	realdevelopcycle varchar(600) NULL,
	realentimes varchar(600) NULL,
	realsampletimes varchar(600) NULL,
	realsamplerate varchar(600) NULL,
	realarrayintime timestamp NULL,
	realmdlintime timestamp NULL,
	realdesc varchar(600) NULL,
	array2 varchar(600) NULL,
	cf2 varchar(600) NULL,
	cell2 varchar(600) NULL,
	sensor2 varchar(600) NULL,
	oc2 varchar(600) NULL,
	mdl2 varchar(600) NULL,
	touch2 varchar(600) NULL,
	packing2 varchar(600) NULL,
	totalcost2 varchar(600) NULL,
	sideeffict2 varchar(600) NULL,
	recoverycycle2 varchar(600) NULL,
	recoverykpcs2 varchar(600) NULL,
	reviewdrtime timestamp NULL,
	reviewdv1time timestamp NULL,
	reviewdv2time timestamp NULL,
	reviewpvtime timestamp NULL,
	gatematerial1 varchar(600) NULL,
	sdmaterial1 varchar(600) NULL,
	cutting varchar(600) NULL,
	cutting2 varchar(600) NULL,
	oemcost varchar(600) NULL,
	oemcost2 varchar(600) NULL,
	itoslimmingcost varchar(600) NULL,
	itoslimmingcost2 varchar(600) NULL,
	cogcof varchar(600) NULL,
	customerprojectname varchar(600) NULL,
	customerterminal varchar(600) NULL,
	fittype numeric(20) NULL,
	fittype1 varchar(600) NULL,
	fitfactory varchar(600) NULL,
	mdlupborder varchar(600) NULL,
	mdldownborder varchar(600) NULL,
	mdlleftborder varchar(600) NULL,
	mdlrightborder varchar(600) NULL,
	gtgresponsetime varchar(600) NULL,
	touchtec numeric(20) NULL,
	touchtec1 varchar(600) NULL,
	activepen numeric(20) NULL,
	activepen1 numeric(20) NULL,
	touchic varchar(600) NULL,
	surfacehandle numeric(20) NULL,
	surfacehandle1 varchar(600) NULL,
	bracket numeric(20) NULL,
	pcbdesign numeric(20) NULL,
	hdr numeric(20) NULL,
	hdr1 varchar(600) NULL,
	refreshfrequency numeric(20) NULL,
	refreshfrequency1 varchar(600) NULL,
	colorcoordinates varchar(600) NULL,
	assemblefactory varchar(600) NULL,
	businessmode varchar(600) NULL,
	resultdesc varchar(600) NULL,
	statusdesc varchar(600) NULL,
	mdlinputtime timestamp NULL,
	mdlinputnum varchar(600) NULL,
	mdloutputtime timestamp NULL,
	mdloutputnum varchar(600) NULL,
	mdlgoodrate varchar(600) NULL,
	mdldesc varchar(600) NULL,
	senorinputtime timestamp NULL,
	senorinputnum varchar(600) NULL,
	senoroutputtime timestamp NULL,
	senoroutputnum varchar(600) NULL,
	senorgoodrate varchar(600) NULL,
	senordesc varchar(600) NULL,
	plantovolume timestamp NULL,
	dimension2 varchar(600) NULL,
	shotnum varchar(600) NULL,
	panelname varchar(600) NULL,
	slimingrequirement varchar(600) NULL,
	rubbing varchar(600) NULL,
	realdrtime timestamp NULL,
	realdv1time timestamp NULL,
	realdv2time timestamp NULL,
	realpvtime timestamp NULL,
	rpplanendtime timestamp NULL,
	rpactualendtime timestamp NULL,
	dv2arrayinputnum varchar(600) NULL,
	dv2arrayoutputnum varchar(600) NULL,
	dv2arraygoodrate varchar(600) NULL,
	dv2cfinputnum varchar(600) NULL,
	dv2cfoutputnum varchar(600) NULL,
	dv2cfgoodrate varchar(600) NULL,
	dv2cellinputnum varchar(600) NULL,
	dv2celloutputnum varchar(600) NULL,
	dv2cellgoodrate varchar(600) NULL,
	dv2mdlinputnum varchar(600) NULL,
	dv2mdloutputnum varchar(600) NULL,
	dv2mdlgoodrate varchar(600) NULL,
	dv2senorinputnum varchar(600) NULL,
	dv2senoroutputnum varchar(600) NULL,
	dv2senorgoodrate varchar(600) NULL,
	pvarrayinputnum varchar(600) NULL,
	pvarrayoutputnum varchar(600) NULL,
	pvarraygoodrate varchar(600) NULL,
	pvcfinputnum varchar(600) NULL,
	pvcfoutputnum varchar(600) NULL,
	pvcfgoodrate varchar(600) NULL,
	pvcellinputnum varchar(600) NULL,
	pvcelloutputnum varchar(600) NULL,
	pvcellgoodrate varchar(600) NULL,
	pvmdlinputnum varchar(600) NULL,
	pvmdloutputnum varchar(600) NULL,
	pvmdlgoodrate varchar(600) NULL,
	pvsenorinputnum varchar(600) NULL,
	pvsenoroutputnum varchar(600) NULL,
	pvsenorgoodrate varchar(600) NULL,
	mparrayinputnum varchar(600) NULL,
	mparrayoutputnum varchar(600) NULL,
	mparraygoodrate varchar(600) NULL,
	mpcfinputnum varchar(600) NULL,
	mpcfoutputnum varchar(600) NULL,
	mpcfgoodrate varchar(600) NULL,
	mpcellinputnum varchar(600) NULL,
	mpcelloutputnum varchar(600) NULL,
	mpcellgoodrate varchar(600) NULL,
	mpmdlinputnum varchar(600) NULL,
	mpmdloutputnum varchar(600) NULL,
	mpmdlgoodrate varchar(600) NULL,
	planningarraygoodrate varchar(600) NULL,
	planningcfgoodrate varchar(600) NULL,
	planningcellgoodrate varchar(600) NULL,
	planningmdlgoodrate varchar(600) NULL,
	planningsersorgoodrate varchar(600) NULL,
	planningtotalgoodrate varchar(600) NULL,
	rpreason varchar(3000) NULL,
	baplanendtime timestamp NULL,
	baactualendtime timestamp NULL,
	bacustomerstage varchar(600) NULL,
	bacustomerdate timestamp NULL,
	drcustomerstage varchar(600) NULL,
	drcustomerdate timestamp NULL,
	dv1customerstage varchar(600) NULL,
	dv1customerdate timestamp NULL,
	dv2customerstage varchar(600) NULL,
	dv2customerdate timestamp NULL,
	pvcustomerstage varchar(600) NULL,
	pvcustomerdate timestamp NULL,
	rpcustomerstage varchar(600) NULL,
	rpcustomerdate timestamp NULL,
	mpplanendtime timestamp NULL,
	mpactualendtime timestamp NULL,
	mpcustomerstage varchar(600) NULL,
	mpcustomerdate timestamp NULL,
	mpqual numeric NULL,
	hasorgmember varchar(200) NULL,
	pcbform varchar(200) NULL,
	touchprogram varchar(200) NULL,
	need2d varchar(200) NULL,
	needcut varchar(60) NULL,
	demandcut varchar(600) NULL,
	holetype varchar(60) NULL,
	holediameter varchar(600) NULL,
	cof varchar(600) NULL,
	ic varchar(600) NULL,
	arrayglasspro varchar(600) NULL,
	arrayglassnum varchar(600) NULL,
	expectedtime varchar(600) NULL,
	lateralpull varchar(600) NULL,
	expectedcompletiondate varchar(600) NULL,
	quarterlydecline varchar(600) NULL,
	dv1totalgoodrate varchar(600) NULL,
	dv2totalgoodrate varchar(600) NULL,
	pvtotalgoodrate varchar(600) NULL,
	mptotalgoodrate varchar(600) NULL,
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
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);

-- Column comments

COMMENT ON COLUMN ods_boepm.b8_projectdata.id IS '����id';
COMMENT ON COLUMN ods_boepm.b8_projectdata.buuserid IS 'bu������';
COMMENT ON COLUMN ods_boepm.b8_projectdata.projectid IS '��ĿID';
COMMENT ON COLUMN ods_boepm.b8_projectdata.projectname IS '��Ŀ����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.terrain IS '�ֵ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.productfgcode IS '�ο���ƷFGCode';
COMMENT ON COLUMN ods_boepm.b8_projectdata.createtime IS '����ʱ��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.customer IS '�ͻ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.technology IS '����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.dimensions IS '�ߴ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.displaymode IS '��ʾģʽ';
COMMENT ON COLUMN ods_boepm.b8_projectdata.supplytype IS '��Ӧ����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.shippingmode IS '����ģʽ';
COMMENT ON COLUMN ods_boepm.b8_projectdata.resolution IS '�ֱ���';
COMMENT ON COLUMN ods_boepm.b8_projectdata.colorgamut IS 'ɫ��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.nits IS '����(nits)';
COMMENT ON COLUMN ods_boepm.b8_projectdata.customersystemname IS '�ͻ�ϵͳ��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.kpcs IS '��������Kpcs_M��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.fullfitplant IS 'ȫ���ϳ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.logicpower IS '�߼�����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.blupower IS 'BLU����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.mdlborder IS 'MDL �߿�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.mdlweight IS 'MDL����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.wopcb IS 'ģ����w_o PCB';
COMMENT ON COLUMN ods_boepm.b8_projectdata.wpcb IS 'ģ����w PCB';
COMMENT ON COLUMN ods_boepm.b8_projectdata.interfaces IS '�ӿ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.activearea IS '��Ч��ʾ����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.contrast IS '�Աȶ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.responsetime IS '��Ӧʱ��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.visualangle IS '�ӽ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.colordepth IS 'ɫ�����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.timetovolume IS '����ʱ��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.specialrequirement IS '��Ʒ����Ҫ��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.devbackground IS '��������������㣩';
COMMENT ON COLUMN ods_boepm.b8_projectdata.cutnumber IS 'Array Cut��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.glassrate IS 'Array Glass������';
COMMENT ON COLUMN ods_boepm.b8_projectdata.productchange IS '����ȷ�ϱ����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.recoverycycle IS '��Ʒ��������';
COMMENT ON COLUMN ods_boepm.b8_projectdata.recoverykpcs IS '��Ʒ��������(Kpcs)';
COMMENT ON COLUMN ods_boepm.b8_projectdata.lifecycle IS '��Ʒ��������';
COMMENT ON COLUMN ods_boepm.b8_projectdata.developlevel IS '��Ʒ�����ȼ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.firstsampletime IS '����ʱ��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.firstsampleno IS '��������(pcs)';
COMMENT ON COLUMN ods_boepm.b8_projectdata.pm IS '  PMȷ����Ϣ
(pm)';
COMMENT ON COLUMN ods_boepm.b8_projectdata.projectfgcode IS '��ĿFG Code';
COMMENT ON COLUMN ods_boepm.b8_projectdata.arraynumber IS 'Array ���Ʒ��������Ϣ
';
COMMENT ON COLUMN ods_boepm.b8_projectdata.cfnumber IS '  CF���ƷBom������Ϣ';
COMMENT ON COLUMN ods_boepm.b8_projectdata.cellnumber IS '  Cell���Ʒ��������Ϣ';
COMMENT ON COLUMN ods_boepm.b8_projectdata.panelrate IS 'Panel ͸���� ���';
COMMENT ON COLUMN ods_boepm.b8_projectdata.validationresult IS '��֤���';
COMMENT ON COLUMN ods_boepm.b8_projectdata.validationstate IS '�ͻ���֤״��';
COMMENT ON COLUMN ods_boepm.b8_projectdata.celldownpol IS 'Cell ��Pol-���洦��_����_���';
COMMENT ON COLUMN ods_boepm.b8_projectdata.celluppol IS 'Cell ��Pol-���洦��_����_���';
COMMENT ON COLUMN ods_boepm.b8_projectdata.cellmodel IS 'Cell Һ��-�ͺ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.cellconsumption IS 'Cell Һ��-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.sicmanufacturer IS '��· S-IC-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.sicmodel IS '��· S-IC-�ͺ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.sicconsumption IS '��· S-IC-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.gicmanufacturer IS '��· G-IC-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.gicmodel IS '��· G-IC-�ͺ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.gicconsumption IS '��· G-IC-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.xpcbmodel IS '��· X-PCB-�ͺ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.xpcbconsumption IS '��· X-PCB-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.cpcbmodel IS '��· C-PCB-�ͺ�(nits)';
COMMENT ON COLUMN ods_boepm.b8_projectdata.cpcbconsumption IS '��· C-PCB-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.fpcsize IS '��· FPC-�ߴ�_����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.fpcconsumption IS '��· FPC-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.leddrivermanufacturer IS '��· LED Driver IC-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.leddrivermodel IS '��· LED Driver IC-�ͺ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.leddriverconsumption IS '��· LED Driver IC-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.tconmodel IS '��· TCON-�ͺ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.tconconsumption IS '��· TCON-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.shiftermanufacturer IS '��· Level Shifter-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.shiftermodel IS '��· Level Shifter-�ͺ�';
COMMENT ON COLUMN ods_boepm.b8_projectdata.shifterconsumption IS '��· Level Shifter-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.inputcntmanufacturer IS '��· Input CNT-����';
COMMENT ON COLUMN ods_boepm.b8_projectdata.inputcntmodel IS '��· Input CNT-�ͺ�';

-- Permissions

ALTER TABLE ods_boepm.b8_projectdata OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.b8_projectdata TO ur_uown_ods;
GRANT ALL ON TABLE ods_boepm.b8_projectdata TO gr_uapp_data;
GRANT SELECT ON TABLE ods_boepm.b8_projectdata TO gr_uqry_data;
