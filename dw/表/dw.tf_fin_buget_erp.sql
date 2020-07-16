-- Drop table

-- DROP TABLE dw.tf_fin_buget_erp;

CREATE TABLE dw.tf_fin_buget_erp (
	client varchar(9) NULL, -- 客户端
	fiscyear varchar(12) NULL, -- 会计年度
	fiscmonth varchar(12) NULL, -- 会计月度
	fisc_period_wid int8 NULL, -- 预算会计期间代理键
	fm_area varchar(12) NULL, -- 财务管理范围
	docyear varchar(12) NULL, -- 文档年度
	docnr varchar(30) NULL, -- 预算分录凭证编号
	docln varchar(18) NULL, -- 预算分录凭证行
	rpmax varchar(9) NULL, -- 期间
	flg_added varchar(3) NULL, -- 附加行的标识
	ctem_category varchar(3) NULL, -- 承诺项目类别
	ceffyear varchar(12) NULL, -- 现金有效年份
	fund varchar(30) NULL, -- 基金
	budget_pd varchar(30) NULL, -- fm：预算期间
	fundsctr varchar(48) NULL, -- 基金中心
	cmmtitem varchar(72) NULL, -- 承诺项目
	funcarea varchar(48) NULL, -- 功能范围
	grant_nbr varchar(60) NULL, -- 同意
	measure varchar(72) NULL, -- 基金计划
	userdim varchar(30) NULL, -- fm 实际和承诺数据的客户字段
	budcat varchar(6) NULL, -- 预算类别
	valtype varchar(6) NULL, -- bcs值类型
	process varchar(12) NULL, -- 内部预算过程
	budtype varchar(12) NULL, -- 预算类型
	tcurr varchar(15) NULL, -- 交易货币
	distkey varchar(12) NULL, -- 分配代码
	text50 varchar(150) NULL, -- 项目文本
	currency_type varchar(30) NULL, -- 货币类型，包含业务货币（TRANSACTION）和本位币(LOCAL)
	amount numeric NULL, -- 数量
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
COMMENT ON TABLE dw.tf_fin_buget_erp IS '事实表-财务预算数';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_buget_erp.client IS '客户端';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fiscyear IS '会计年度';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fiscmonth IS '会计月度';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fisc_period_wid IS '预算会计期间代理键';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fm_area IS '财务管理范围';
COMMENT ON COLUMN dw.tf_fin_buget_erp.docyear IS '文档年度';
COMMENT ON COLUMN dw.tf_fin_buget_erp.docnr IS '预算分录凭证编号';
COMMENT ON COLUMN dw.tf_fin_buget_erp.docln IS '预算分录凭证行';
COMMENT ON COLUMN dw.tf_fin_buget_erp.rpmax IS '期间';
COMMENT ON COLUMN dw.tf_fin_buget_erp.flg_added IS '附加行的标识';
COMMENT ON COLUMN dw.tf_fin_buget_erp.ctem_category IS '承诺项目类别';
COMMENT ON COLUMN dw.tf_fin_buget_erp.ceffyear IS '现金有效年份';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fund IS '基金';
COMMENT ON COLUMN dw.tf_fin_buget_erp.budget_pd IS 'fm：预算期间';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fundsctr IS '基金中心';
COMMENT ON COLUMN dw.tf_fin_buget_erp.cmmtitem IS '承诺项目';
COMMENT ON COLUMN dw.tf_fin_buget_erp.funcarea IS '功能范围';
COMMENT ON COLUMN dw.tf_fin_buget_erp.grant_nbr IS '同意';
COMMENT ON COLUMN dw.tf_fin_buget_erp.measure IS '基金计划';
COMMENT ON COLUMN dw.tf_fin_buget_erp.userdim IS 'fm 实际和承诺数据的客户字段';
COMMENT ON COLUMN dw.tf_fin_buget_erp.budcat IS '预算类别';
COMMENT ON COLUMN dw.tf_fin_buget_erp.valtype IS 'bcs值类型';
COMMENT ON COLUMN dw.tf_fin_buget_erp.process IS '内部预算过程';
COMMENT ON COLUMN dw.tf_fin_buget_erp.budtype IS '预算类型';
COMMENT ON COLUMN dw.tf_fin_buget_erp.tcurr IS '交易货币';
COMMENT ON COLUMN dw.tf_fin_buget_erp.distkey IS '分配代码';
COMMENT ON COLUMN dw.tf_fin_buget_erp.text50 IS '项目文本';
COMMENT ON COLUMN dw.tf_fin_buget_erp.currency_type IS '货币类型，包含业务货币（TRANSACTION）和本位币(LOCAL)';
COMMENT ON COLUMN dw.tf_fin_buget_erp.amount IS '数量';

-- Permissions

ALTER TABLE dw.tf_fin_buget_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_buget_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_buget_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_buget_erp TO gr_uqry_data;
