-- Drop table

-- DROP TABLE dw.tf_pp_inv_onhand_day;

CREATE TABLE dw.tf_pp_inv_onhand_day (
	snap_day_wid int8 NULL, -- �������������
	client varchar(9) NULL, -- �ͻ���
	item_wid int8 NULL, -- ���ϺŴ����
	factory_wid int8 NULL, -- ���������
	org_code varchar(12) NULL, -- ��˾
	inv_loc_code varchar(12) NULL, -- ���ص����
	inv_loc_name varchar(48) NULL, -- ���ص�����
	inv_price numeric(11,2) NULL, -- ���۸�
	inv_qty numeric(13,3) NULL, -- �������
	inv_amt numeric NULL, -- �����
	pstat varchar(45) NULL, -- ά��״̬
	lvorm varchar(3) NULL, -- �ڿ��ص㼶���Ҫɾ��������
	lfgja varchar(12) NULL, -- ��ǰ�ڼ�Ļ�����
	lfmon varchar(6) NULL, -- ��ǰ�ڼ� (�����ڼ�)
	sperr varchar(3) NULL, -- ʵ���̵㶳���ʶ
	umlme numeric(13,3) NULL, -- ���˿�� (��һ���ص���һ����)
	insme numeric(13,3) NULL, -- ���������еĿ��
	einme numeric(13,3) NULL, -- ȫ���������ε��ܼƿ��
	speme numeric(13,3) NULL, -- ����Ŀ��
	retme numeric(13,3) NULL, -- ���ض���Ŀ��
	vmlab numeric(13,3) NULL, -- ���ڵĹ��۵ķ�����ʹ�ÿ��
	vmuml numeric(13,3) NULL, -- ǰһ�ڼ����ת���
	vmins numeric(13,3) NULL, -- ǰһ�ڼ������������
	vmein numeric(13,3) NULL, -- ��������ʹ�õĿ��
	vmspe numeric(13,3) NULL, -- ǰ�ڵĶ�����
	vmret numeric(13,3) NULL, -- ǰһ�ڼ䶳����˻ش��
	kzill varchar(9) NULL, -- ����Ŀ���ʵ���̵��ʶ
	kzilq varchar(9) NULL, -- ʵ���̵��ʶ,������ʼ���
	kzile varchar(9) NULL, -- ����ʹ�ÿ���ʵ���̵��ʶ
	kzils varchar(9) NULL, -- �������ʵ���̵��ʶ
	kzvll varchar(9) NULL, -- ��һ��Ȳֿ���ʵ���̵��־
	kzvlq varchar(9) NULL, -- ǰ���ʼ����ǰ��ʵ���̵��ʶ
	kzvle varchar(9) NULL, -- ����ʹ�ÿ���ʵ���̵��ʶ, ǰһ�ڼ�
	kzvls varchar(9) NULL, -- ǰ�ڶ������ʵ���̵��ʶ
	diskz varchar(3) NULL, -- MRP��ʶ: �ִ��ص�
	lsobs varchar(6) NULL, -- �ڴ洢��������ض��ɹ�����
	lminb numeric(13,3) NULL, -- ���ص�MRP���ض�����
	lbstf numeric(13,3) NULL, -- ���ص�MRP�Ĳ�������
	herkl varchar(9) NULL, -- ����ԭ���ع���
	exppg varchar(3) NULL, -- ���ȱ�ʶ(�Ǽ����)
	exver varchar(6) NULL, -- ���ڱ�ʶ(δ����)
	lgpbe varchar(30) NULL, -- ����λ
	klabs numeric(13,3) NULL, -- ������ʹ�õļ��ۿ��
	kinsm numeric(13,3) NULL, -- ������������еļĴ���
	keinm numeric(13,3) NULL, -- ����ʹ�õļ��ۿ��
	kspem numeric(13,3) NULL, -- ����ļ��ۿ��
	dlinl varchar(24) NULL, -- ������ʹ�õĿ��������ʵ���̵������
	prctl varchar(30) NULL, -- ��������
	ersda varchar(24) NULL, -- ��������
	vklab numeric(13,2) NULL, -- ���ۼ۸�ĵ�ֵ���ϵĿ���ֵ
	vkuml numeric(13,2) NULL, -- ת������ۼ�ֵ(�洢�ص㵽�洢�ص�)
	lwmkb varchar(9) NULL, -- ƶ����WM�������Χ
	bskrf numeric(38,32) NULL, -- ���У������
	mdrue varchar(3) NULL, -- ����MARD �ڼ�֮ǰ��MARDH ��¼�Ѿ�����
	mdjin varchar(12) NULL, -- ��ǰʵ�ʿ��ָʾ�Ĳ������
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
COMMENT ON TABLE dw.tf_pp_inv_onhand_day IS 'ÿ�տ��';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.snap_day_wid IS '�������������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.client IS '�ͻ���';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.item_wid IS '���ϺŴ����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.factory_wid IS '���������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.org_code IS '��˾';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_loc_code IS '���ص����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_loc_name IS '���ص�����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_price IS '���۸�';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_qty IS '�������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.inv_amt IS '�����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.pstat IS 'ά��״̬';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lvorm IS '�ڿ��ص㼶���Ҫɾ��������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lfgja IS '��ǰ�ڼ�Ļ�����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lfmon IS '��ǰ�ڼ� (�����ڼ�)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.sperr IS 'ʵ���̵㶳���ʶ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.umlme IS '���˿�� (��һ���ص���һ����)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.insme IS '���������еĿ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.einme IS 'ȫ���������ε��ܼƿ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.speme IS '����Ŀ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.retme IS '���ض���Ŀ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmlab IS '���ڵĹ��۵ķ�����ʹ�ÿ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmuml IS 'ǰһ�ڼ����ת���';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmins IS 'ǰһ�ڼ������������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmein IS '��������ʹ�õĿ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmspe IS 'ǰ�ڵĶ�����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vmret IS 'ǰһ�ڼ䶳����˻ش��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzill IS '����Ŀ���ʵ���̵��ʶ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzilq IS 'ʵ���̵��ʶ,������ʼ���';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzile IS '����ʹ�ÿ���ʵ���̵��ʶ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzils IS '�������ʵ���̵��ʶ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvll IS '��һ��Ȳֿ���ʵ���̵��־';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvlq IS 'ǰ���ʼ����ǰ��ʵ���̵��ʶ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvle IS '����ʹ�ÿ���ʵ���̵��ʶ, ǰһ�ڼ�';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kzvls IS 'ǰ�ڶ������ʵ���̵��ʶ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.diskz IS 'MRP��ʶ: �ִ��ص�';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lsobs IS '�ڴ洢��������ض��ɹ�����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lminb IS '���ص�MRP���ض�����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lbstf IS '���ص�MRP�Ĳ�������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.herkl IS '����ԭ���ع���';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.exppg IS '���ȱ�ʶ(�Ǽ����)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.exver IS '���ڱ�ʶ(δ����)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lgpbe IS '����λ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.klabs IS '������ʹ�õļ��ۿ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kinsm IS '������������еļĴ���';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.keinm IS '����ʹ�õļ��ۿ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.kspem IS '����ļ��ۿ��';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.dlinl IS '������ʹ�õĿ��������ʵ���̵������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.prctl IS '��������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.ersda IS '��������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vklab IS '���ۼ۸�ĵ�ֵ���ϵĿ���ֵ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.vkuml IS 'ת������ۼ�ֵ(�洢�ص㵽�洢�ص�)';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.lwmkb IS 'ƶ����WM�������Χ';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.bskrf IS '���У������';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.mdrue IS '����MARD �ڼ�֮ǰ��MARDH ��¼�Ѿ�����';
COMMENT ON COLUMN dw.tf_pp_inv_onhand_day.mdjin IS '��ǰʵ�ʿ��ָʾ�Ĳ������';

-- Permissions

ALTER TABLE dw.tf_pp_inv_onhand_day OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_inv_onhand_day TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_inv_onhand_day TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_inv_onhand_day TO gr_uqry_data;
