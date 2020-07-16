-- Drop table

-- DROP TABLE dw.tf_fin_account_document_detail;

CREATE TABLE dw.tf_fin_account_document_detail (
	client_code varchar(3) NULL, -- 客户端
	company_wid int8 NULL, -- 公司代码代理键
	account_document varchar(10) NULL, -- 会计凭证编号
	fiscal_year numeric(4) NULL, -- 会计年度
	account_document_line_num numeric(3) NULL, -- 会计凭证中的行项目数
	account_document_line_flag varchar(1) NULL, -- 行项目标识
	clearing_date_wid int8 NULL, -- 清帐日期代理键
	clearing_entry_date timestamp NULL, -- 清算分录日期
	clearing_reversal_document varchar(10) NULL, -- 清算单据的单据号码
	posting_code varchar(2) NULL, -- 记帐代码
	account_type varchar(1) NULL, -- 科目类型
	spcial_gl_flag varchar(1) NULL, -- 特殊总帐标识
	spcial_gl_transact_type varchar(1) NULL, -- 特殊总分类帐事务类型
	target_spcial_gl_flag varchar(1) NULL, -- 目标特别总帐标志
	debit_credit_flag varchar(1) NULL, -- 借方/贷方标识
	business_area varchar(4) NULL, -- 业务范围
	trad_partner_business_area varchar(4) NULL, -- 贸易伙伴的业务范围
	sales_tax_code varchar(2) NULL, -- 销售税代码
	with_hold_tax_code varchar(2) NULL, -- 预提税代码
	cost_center_wid int8 NULL, -- 成本中心
	gl_account_number_wid int8 NULL, -- 总分类帐帐目代理键
	customer_wid int8 NULL, -- 客户编号1代理键
	vendor_wid int8 NULL, -- 供应商或债权人的帐号代理键
	item_wid int8 NULL, -- 物料号代理键
	factory_wid int8 NULL, -- 工厂代理键
	quantity numeric(13,3) NULL, -- 数量
	local_currency_amount numeric(13,2) NULL, -- 按本位币计的金额
	transaction_currency_amount numeric(13,2) NULL, -- 凭证货币金额
	local_currency_origin_reduct_amount numeric(13,2) NULL, -- 以本币计算的原始削减金额
	gl_update_amount numeric(13,2) NULL, -- 总帐中更新的金额
	gl_transaction_update_currency varchar(5) NULL, -- 更新总分类帐交易数字货币
	original_tax_local_currency_base_amount numeric(13,2) NULL, -- 以本币计的原始税收基本金额
	original_tax_transact_currency_base_amount numeric(13,2) NULL, -- 以凭证货币计的原始税收基本金额
	mwsts numeric(13,2) NULL, -- 用本币表示的税收金额
	wmwst numeric(13,2) NULL, -- 用凭证货币表示的税收金额
	hwbas numeric(13,2) NULL, -- 以本币计的税款基额
	fwbas numeric(13,2) NULL, -- 用凭证货币表示的税基额
	hwzuz numeric(13,2) NULL, -- 以本币计的预付金额
	fwzuz numeric(13,2) NULL, -- 以凭证货币计的附加税
	shzuz varchar(1) NULL, -- 现金折扣的附加借方/贷方
	stekz varchar(2) NULL, -- 版本号组件
	mwart varchar(1) NULL, -- 税收类型
	txgrp numeric(3) NULL, -- 税务行项目的集团标志
	ktosl varchar(3) NULL, -- 事务关键字
	qsshb numeric(13,2) NULL, -- 扣交税款基础金额
	kursr numeric(9,5) NULL, -- 套购汇率
	gbetr numeric(13,2) NULL, -- 外汇套期交易额
	bdiff numeric(13,2) NULL, -- 估价差额
	bdif2 numeric(13,2) NULL, -- 第二本币的评估差额
	valut timestamp NULL, -- 起息日
	zuonr varchar(18) NULL, -- 分配编号
	sgtxt varchar(50) NULL, -- 项目文本
	zinkz varchar(2) NULL, -- 从利息计算中免除
	vbund varchar(6) NULL, -- 贸易伙伴的公司标识
	bewar varchar(3) NULL, -- 事务类型
	altkt varchar(10) NULL, -- 组科目号
	vorgn varchar(4) NULL, -- 总帐事务类型
	fdlev varchar(2) NULL, -- 计划层次
	fdgrp varchar(10) NULL, -- 计划组
	fdwbt numeric(13,2) NULL, -- 凭证所用货币的计划金额
	fdtag timestamp NULL, -- 计划日期
	fkont numeric(3) NULL, -- 财务预算项目
	kokrs varchar(4) NULL, -- 控制范围
	projn varchar(16) NULL -- 原有:项目编号:不在使用,-->ps_posnr
	aufnr varchar(12) NULL, -- 订单号
	vbeln varchar(10) NULL, -- 开票凭证
	vbel2 varchar(10) NULL, -- 销售凭证
	posn2 numeric(6) NULL, -- 销售凭证项目
	eten2 numeric(4) NULL, -- 交货计划行号
	anln1 varchar(12) NULL, -- 主资产号
	anln2 varchar(4) NULL, -- 资产次级编号
	anbwa varchar(3) NULL, -- 资产业务类型
	bzdat timestamp NULL, -- 资产价值日
	pernr numeric(8) NULL, -- 人员编号
	xumsw varchar(1) NULL, -- 指示符:销售相关项目?
	xhres varchar(1) NULL, -- 指示符:居民的g/l科目?
	xkres varchar(1) NULL, -- 标识:可根据科目显示的行项目吗?
	xopvw varchar(1) NULL, -- 标志:未清项目管理?
	xcpdd varchar(1) NULL, -- 标识:分别设置地址和银行数据
	xskst varchar(1) NULL, -- 标志:统计记帐到成本中心
	xsauf varchar(1) NULL, -- 标志:统计记帐到订单
	xspro varchar(1) NULL, -- 标志:统计记帐到项目
	xserg varchar(1) NULL, -- 标志:利润分析记帐是统计性的
	xfakt varchar(1) NULL, -- 标志:发票更新成功?
	xuman varchar(1) NULL, -- 指示符:由预付款转帐?
	xanet varchar(1) NULL, -- 指示符:净值程序中的定金?
	xskrl varchar(1) NULL, -- 标志:行项目与现金折扣无关?
	xinve varchar(1) NULL, -- 标识:资产货物影响?
	xpanz varchar(1) NULL, -- 显示凭证项
	xauto varchar(1) NULL, -- 标志:自动建立行项目
	xncop varchar(1) NULL, -- 指示符:不可复制项?
	xzahl varchar(1) NULL, -- 标识符:在支付交易中是否使用过帐码?
	saknr varchar(10) NULL, -- 总帐科目编号
	filkd varchar(10) NULL, -- 分支帐号
	xbilk varchar(1) NULL, -- 标志:此科目是资产负债表科目吗?
	gvtyp varchar(2) NULL, -- 损益报表科目类型
	hzuon varchar(18) NULL, -- 特别总帐科目的分配号
	zfbdt timestamp NULL, -- 用于到期日计算的基准日期
	zterm varchar(4) NULL, -- 付款条件代码
	zbd1t numeric(3) NULL, -- 现金折扣天数1
	zbd2t numeric(3) NULL, -- 现金折扣天数2
	zbd3t numeric(3) NULL, -- 净支付条件期段
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
COMMENT ON TABLE dw.tf_fin_account_document_detail IS '事实表-会计凭证';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_account_document_detail.client_code IS '客户端';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.company_wid IS '公司代码代理键';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_document IS '会计凭证编号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fiscal_year IS '会计年度';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_document_line_num IS '会计凭证中的行项目数';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_document_line_flag IS '行项目标识';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.clearing_date_wid IS '清帐日期代理键';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.clearing_entry_date IS '清算分录日期';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.clearing_reversal_document IS '清算单据的单据号码';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.posting_code IS '记帐代码';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.account_type IS '科目类型';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.spcial_gl_flag IS '特殊总帐标识';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.spcial_gl_transact_type IS '特殊总分类帐事务类型';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.target_spcial_gl_flag IS '目标特别总帐标志';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.debit_credit_flag IS '借方/贷方标识';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.business_area IS '业务范围';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.trad_partner_business_area IS '贸易伙伴的业务范围';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.sales_tax_code IS '销售税代码';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.with_hold_tax_code IS '预提税代码';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.cost_center_wid IS '成本中心';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gl_account_number_wid IS '总分类帐帐目代理键';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.customer_wid IS '客户编号1代理键';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vendor_wid IS '供应商或债权人的帐号代理键';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.item_wid IS '物料号代理键';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.quantity IS '数量';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.local_currency_amount IS '按本位币计的金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.transaction_currency_amount IS '凭证货币金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.local_currency_origin_reduct_amount IS '以本币计算的原始削减金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gl_update_amount IS '总帐中更新的金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gl_transaction_update_currency IS '更新总分类帐交易数字货币';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.original_tax_local_currency_base_amount IS '以本币计的原始税收基本金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.original_tax_transact_currency_base_amount IS '以凭证货币计的原始税收基本金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.mwsts IS '用本币表示的税收金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.wmwst IS '用凭证货币表示的税收金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.hwbas IS '以本币计的税款基额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fwbas IS '用凭证货币表示的税基额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.hwzuz IS '以本币计的预付金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fwzuz IS '以凭证货币计的附加税';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.shzuz IS '现金折扣的附加借方/贷方';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.stekz IS '版本号组件';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.mwart IS '税收类型';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.txgrp IS '税务行项目的集团标志';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.ktosl IS '事务关键字';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.qsshb IS '扣交税款基础金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.kursr IS '套购汇率';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gbetr IS '外汇套期交易额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bdiff IS '估价差额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bdif2 IS '第二本币的评估差额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.valut IS '起息日';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zuonr IS '分配编号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.sgtxt IS '项目文本';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zinkz IS '从利息计算中免除';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vbund IS '贸易伙伴的公司标识';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bewar IS '事务类型';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.altkt IS '组科目号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vorgn IS '总帐事务类型';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdlev IS '计划层次';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdgrp IS '计划组';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdwbt IS '凭证所用货币的计划金额';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fdtag IS '计划日期';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.fkont IS '财务预算项目';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.kokrs IS '控制范围';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.projn IS '原有:项目编号:不在使用-->ps_posnr';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.aufnr IS '订单号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vbeln IS '开票凭证';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.vbel2 IS '销售凭证';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.posn2 IS '销售凭证项目';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.eten2 IS '交货计划行号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.anln1 IS '主资产号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.anln2 IS '资产次级编号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.anbwa IS '资产业务类型';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.bzdat IS '资产价值日';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.pernr IS '人员编号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xumsw IS '指示符:销售相关项目?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xhres IS '指示符:居民的g/l科目?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xkres IS '标识:可根据科目显示的行项目吗?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xopvw IS '标志:未清项目管理?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xcpdd IS '标识:分别设置地址和银行数据';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xskst IS '标志:统计记帐到成本中心';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xsauf IS '标志:统计记帐到订单';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xspro IS '标志:统计记帐到项目';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xserg IS '标志:利润分析记帐是统计性的';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xfakt IS '标志:发票更新成功?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xuman IS '指示符:由预付款转帐?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xanet IS '指示符:净值程序中的定金?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xskrl IS '标志:行项目与现金折扣无关?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xinve IS '标识:资产货物影响?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xpanz IS '显示凭证项';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xauto IS '标志:自动建立行项目';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xncop IS '指示符:不可复制项?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xzahl IS '标识符:在支付交易中是否使用过帐码?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.saknr IS '总帐科目编号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.filkd IS '分支帐号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.xbilk IS '标志:此科目是资产负债表科目吗?';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.gvtyp IS '损益报表科目类型';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.hzuon IS '特别总帐科目的分配号';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zfbdt IS '用于到期日计算的基准日期';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zterm IS '付款条件代码';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zbd1t IS '现金折扣天数1';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zbd2t IS '现金折扣天数2';
COMMENT ON COLUMN dw.tf_fin_account_document_detail.zbd3t IS '净支付条件期段';

-- Permissions

ALTER TABLE dw.tf_fin_account_document_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_account_document_detail TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_account_document_detail TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_account_document_detail TO gr_uqry_data;
