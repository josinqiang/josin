-- Drop table

-- DROP TABLE dw.tf_fin_buget_erp;

CREATE TABLE dw.tf_fin_buget_erp (
	client varchar(9) NULL, -- �ͻ���
	fiscyear varchar(12) NULL, -- ������
	fiscmonth varchar(12) NULL, -- ����¶�
	fisc_period_wid int8 NULL, -- Ԥ�����ڼ�����
	fm_area varchar(12) NULL, -- �������Χ
	docyear varchar(12) NULL, -- �ĵ����
	docnr varchar(30) NULL, -- Ԥ���¼ƾ֤���
	docln varchar(18) NULL, -- Ԥ���¼ƾ֤��
	rpmax varchar(9) NULL, -- �ڼ�
	flg_added varchar(3) NULL, -- �����еı�ʶ
	ctem_category varchar(3) NULL, -- ��ŵ��Ŀ���
	ceffyear varchar(12) NULL, -- �ֽ���Ч���
	fund varchar(30) NULL, -- ����
	budget_pd varchar(30) NULL, -- fm��Ԥ���ڼ�
	fundsctr varchar(48) NULL, -- ��������
	cmmtitem varchar(72) NULL, -- ��ŵ��Ŀ
	funcarea varchar(48) NULL, -- ���ܷ�Χ
	grant_nbr varchar(60) NULL, -- ͬ��
	measure varchar(72) NULL, -- ����ƻ�
	userdim varchar(30) NULL, -- fm ʵ�ʺͳ�ŵ���ݵĿͻ��ֶ�
	budcat varchar(6) NULL, -- Ԥ�����
	valtype varchar(6) NULL, -- bcsֵ����
	process varchar(12) NULL, -- �ڲ�Ԥ�����
	budtype varchar(12) NULL, -- Ԥ������
	tcurr varchar(15) NULL, -- ���׻���
	distkey varchar(12) NULL, -- �������
	text50 varchar(150) NULL, -- ��Ŀ�ı�
	currency_type varchar(30) NULL, -- �������ͣ�����ҵ����ң�TRANSACTION���ͱ�λ��(LOCAL)
	amount numeric NULL, -- ����
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
COMMENT ON TABLE dw.tf_fin_buget_erp IS '��ʵ��-����Ԥ����';

-- Column comments

COMMENT ON COLUMN dw.tf_fin_buget_erp.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fiscyear IS '������';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fiscmonth IS '����¶�';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fisc_period_wid IS 'Ԥ�����ڼ�����';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fm_area IS '�������Χ';
COMMENT ON COLUMN dw.tf_fin_buget_erp.docyear IS '�ĵ����';
COMMENT ON COLUMN dw.tf_fin_buget_erp.docnr IS 'Ԥ���¼ƾ֤���';
COMMENT ON COLUMN dw.tf_fin_buget_erp.docln IS 'Ԥ���¼ƾ֤��';
COMMENT ON COLUMN dw.tf_fin_buget_erp.rpmax IS '�ڼ�';
COMMENT ON COLUMN dw.tf_fin_buget_erp.flg_added IS '�����еı�ʶ';
COMMENT ON COLUMN dw.tf_fin_buget_erp.ctem_category IS '��ŵ��Ŀ���';
COMMENT ON COLUMN dw.tf_fin_buget_erp.ceffyear IS '�ֽ���Ч���';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fund IS '����';
COMMENT ON COLUMN dw.tf_fin_buget_erp.budget_pd IS 'fm��Ԥ���ڼ�';
COMMENT ON COLUMN dw.tf_fin_buget_erp.fundsctr IS '��������';
COMMENT ON COLUMN dw.tf_fin_buget_erp.cmmtitem IS '��ŵ��Ŀ';
COMMENT ON COLUMN dw.tf_fin_buget_erp.funcarea IS '���ܷ�Χ';
COMMENT ON COLUMN dw.tf_fin_buget_erp.grant_nbr IS 'ͬ��';
COMMENT ON COLUMN dw.tf_fin_buget_erp.measure IS '����ƻ�';
COMMENT ON COLUMN dw.tf_fin_buget_erp.userdim IS 'fm ʵ�ʺͳ�ŵ���ݵĿͻ��ֶ�';
COMMENT ON COLUMN dw.tf_fin_buget_erp.budcat IS 'Ԥ�����';
COMMENT ON COLUMN dw.tf_fin_buget_erp.valtype IS 'bcsֵ����';
COMMENT ON COLUMN dw.tf_fin_buget_erp.process IS '�ڲ�Ԥ�����';
COMMENT ON COLUMN dw.tf_fin_buget_erp.budtype IS 'Ԥ������';
COMMENT ON COLUMN dw.tf_fin_buget_erp.tcurr IS '���׻���';
COMMENT ON COLUMN dw.tf_fin_buget_erp.distkey IS '�������';
COMMENT ON COLUMN dw.tf_fin_buget_erp.text50 IS '��Ŀ�ı�';
COMMENT ON COLUMN dw.tf_fin_buget_erp.currency_type IS '�������ͣ�����ҵ����ң�TRANSACTION���ͱ�λ��(LOCAL)';
COMMENT ON COLUMN dw.tf_fin_buget_erp.amount IS '����';

-- Permissions

ALTER TABLE dw.tf_fin_buget_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_buget_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_fin_buget_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_fin_buget_erp TO gr_uqry_data;
