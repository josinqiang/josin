-- Drop table

-- DROP TABLE dw.td_com_factory_location_erp;

CREATE TABLE dw.td_com_factory_location_erp (
	row_wid int8 NOT NULL, -- �����
	client_code varchar(9) NULL, -- �ͻ���
	factory_code varchar(12) NULL, -- ����
	factory_location varchar(12) NULL, -- ���ص�
	location_description varchar(48) NULL, -- �ִ��ص������
	division varchar(6) NULL, -- ��Ʒ��
	xlong varchar(3) NULL, -- �ڴ�����������Ŀ��
	xbufx varchar(3) NULL, -- ������ִ��ص�ı��ǿ�����
	diskz varchar(3) NULL, -- MRP��ʶ: �ִ��ص�
	xblgo varchar(3) NULL, -- �����ƶ��洢�ص���Ȩ��Ծ
	xress varchar(3) NULL, -- ���ص���䵽��Դ���洢��Դ��
	xhupf varchar(3) NULL, -- ����λ����
	parlg varchar(12) NULL, -- ����λ�Ļ��洢�ص�
	vkorg varchar(12) NULL, -- ������֯
	vtweg varchar(6) NULL, -- ��������
	vstel varchar(12) NULL, -- װ�˵�/���յ�
	lifnr varchar(30) NULL, -- ��Ӧ���ʻ���
	kunnr varchar(30) NULL, -- �ͻ����ʻ���
	oih_licno varchar(45) NULL, -- δ��˰�������֤���
	oig_itrfl varchar(3) NULL, -- ����ͷ�����;���
	oib_tnkassign varchar(3) NULL, -- ������: �͹޷����ʶ��
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
COMMENT ON TABLE dw.td_com_factory_location_erp IS '����ά��-�����ص�';

-- Column comments

COMMENT ON COLUMN dw.td_com_factory_location_erp.row_wid IS '�����';
COMMENT ON COLUMN dw.td_com_factory_location_erp.client_code IS '�ͻ���';
COMMENT ON COLUMN dw.td_com_factory_location_erp.factory_code IS '����';
COMMENT ON COLUMN dw.td_com_factory_location_erp.factory_location IS '���ص�';
COMMENT ON COLUMN dw.td_com_factory_location_erp.location_description IS '�ִ��ص������';
COMMENT ON COLUMN dw.td_com_factory_location_erp.division IS '��Ʒ��';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xlong IS '�ڴ�����������Ŀ��';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xbufx IS '������ִ��ص�ı��ǿ�����';
COMMENT ON COLUMN dw.td_com_factory_location_erp.diskz IS 'MRP��ʶ: �ִ��ص�';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xblgo IS '�����ƶ��洢�ص���Ȩ��Ծ';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xress IS '���ص���䵽��Դ���洢��Դ��';
COMMENT ON COLUMN dw.td_com_factory_location_erp.xhupf IS '����λ����';
COMMENT ON COLUMN dw.td_com_factory_location_erp.parlg IS '����λ�Ļ��洢�ص�';
COMMENT ON COLUMN dw.td_com_factory_location_erp.vkorg IS '������֯';
COMMENT ON COLUMN dw.td_com_factory_location_erp.vtweg IS '��������';
COMMENT ON COLUMN dw.td_com_factory_location_erp.vstel IS 'װ�˵�/���յ�';
COMMENT ON COLUMN dw.td_com_factory_location_erp.lifnr IS '��Ӧ���ʻ���';
COMMENT ON COLUMN dw.td_com_factory_location_erp.kunnr IS '�ͻ����ʻ���';
COMMENT ON COLUMN dw.td_com_factory_location_erp.oih_licno IS 'δ��˰�������֤���';
COMMENT ON COLUMN dw.td_com_factory_location_erp.oig_itrfl IS '����ͷ�����;���';
COMMENT ON COLUMN dw.td_com_factory_location_erp.oib_tnkassign IS '������: �͹޷����ʶ��';

-- Permissions

ALTER TABLE dw.td_com_factory_location_erp OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_location_erp TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_factory_location_erp TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_factory_location_erp TO gr_uqry_data;
