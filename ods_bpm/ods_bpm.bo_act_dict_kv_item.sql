-- Drop table

-- DROP TABLE ods_bpm.bo_act_dict_kv_item;

CREATE TABLE ods_bpm.bo_act_dict_kv_item (
	id varchar(36) NULL,
	orgid varchar(36) NULL,
	bindid varchar(36) NULL,
	createdate date NULL,
	createuser varchar(36) NULL,
	updatedate date NULL,
	updateuser varchar(36) NULL,
	processdefid varchar(36) NULL,
	isend numeric(2) NULL,
	itemno varchar(36) NULL, -- ����
	cnname varchar(1000) NULL, -- ��������
	enname varchar(1000) NULL, -- Ӣ������
	big5name varchar(1000) NULL, -- ��������
	exttext1 varchar(1000) NULL, -- ��չ�ı�1
	exttext2 varchar(1000) NULL, -- ��չ�ı�2
	exttext3 varchar(1000) NULL, -- ��չ�ı�3
	exttext4 varchar(1000) NULL, -- ��չ�ı�4
	exttext5 varchar(1000) NULL, -- ��չ�ı�5
	exttext6 varchar(1000) NULL, -- ��չ�ı�6
	exttext7 varchar(1000) NULL, -- ��չ�ı�7
	exttext8 varchar(200) NULL, -- ��չ�ı�8
	exttext9 varchar(200) NULL, -- ��չ�ı�9
	exttext10 varchar(200) NULL, -- ��չ�ı�10
	extint1 numeric(38) NULL, -- ��չ����1
	extint2 numeric(38) NULL, -- ��չ����2
	extint3 numeric(38) NULL, -- ��չ����3
	extint4 numeric(38) NULL, -- ��չ����4
	extint5 numeric(38) NULL, -- ��չ����5
	extdouble1 numeric(16,2) NULL, -- ��չ����1
	extdouble2 numeric(16,2) NULL, -- ��չ����2
	extdouble3 numeric(16,2) NULL, -- ��չ����3
	extdate1 date NULL, -- ��չ����1
	extdate2 date NULL, -- ��չ����2
	orderindex numeric(38) NULL, -- ��ʾ˳��
	isactive numeric(38) NULL, -- ��Ч��
	issys numeric(38) NULL, -- ��������
	dictkey varchar(64) NULL, -- �����ֵ�
	pno varchar(36) NULL, -- �ϼ�����
	isleaf numeric(38) NULL, -- �ڵ�����
	deptids1 varchar(2000) NULL, -- ��չ����ID1
	deptids2 varchar(2000) NULL, -- ��չ����ID2
	deptids3 varchar(2000) NULL, -- ��չ����ID3
	deptids4 varchar(2000) NULL, -- ��չ����ID4
	deptids5 varchar(2000) NULL, -- ��չ����ID5
	deptids6 varchar(2000) NULL, -- ��չ����ID6
	deptids7 varchar(2000) NULL, -- ��չ����ID7
	deptids8 varchar(2000) NULL, -- ��չ����ID8
	deptids9 varchar(2000) NULL, -- ��չ����ID9
	deptids10 varchar(2000) NULL, -- ��չ����ID10
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
COMMENT ON TABLE ods_bpm.bo_act_dict_kv_item IS '�����ֵ�';

-- Column comments

COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.itemno IS '����';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.cnname IS '��������';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.enname IS 'Ӣ������';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.big5name IS '��������';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext1 IS '��չ�ı�1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext2 IS '��չ�ı�2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext3 IS '��չ�ı�3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext4 IS '��չ�ı�4';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext5 IS '��չ�ı�5';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext6 IS '��չ�ı�6';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext7 IS '��չ�ı�7';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext8 IS '��չ�ı�8';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext9 IS '��չ�ı�9';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext10 IS '��չ�ı�10';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint1 IS '��չ����1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint2 IS '��չ����2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint3 IS '��չ����3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint4 IS '��չ����4';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint5 IS '��չ����5';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdouble1 IS '��չ����1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdouble2 IS '��չ����2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdouble3 IS '��չ����3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdate1 IS '��չ����1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdate2 IS '��չ����2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.orderindex IS '��ʾ˳��';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.isactive IS '��Ч��';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.issys IS '��������';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.dictkey IS '�����ֵ�';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.pno IS '�ϼ�����';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.isleaf IS '�ڵ�����';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids1 IS '��չ����ID1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids2 IS '��չ����ID2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids3 IS '��չ����ID3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids4 IS '��չ����ID4';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids5 IS '��չ����ID5';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids6 IS '��չ����ID6';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids7 IS '��չ����ID7';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids8 IS '��չ����ID8';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids9 IS '��չ����ID9';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids10 IS '��չ����ID10';

-- Permissions

ALTER TABLE ods_bpm.bo_act_dict_kv_item OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.bo_act_dict_kv_item TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.bo_act_dict_kv_item TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.bo_act_dict_kv_item TO gr_uapp_data;
