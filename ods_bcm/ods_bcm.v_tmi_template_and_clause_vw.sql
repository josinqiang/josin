-- Drop table

-- DROP TABLE ods_bcm.v_tmi_template_and_clause_vw;

CREATE TABLE ods_bcm.v_tmi_template_and_clause_vw (
	"name" varchar(4000) NULL, -- ����
	entry_id varchar(10) NULL, -- ����ID
	"type" varchar(12) NULL, -- ����
	push_bcm_or_not varchar(4) NULL, -- �Ƿ�����BCM
	reserved_field_1 varchar(1) NULL, -- Ԥ���ֶ�1
	reserved_field_2 varchar(1) NULL, -- Ԥ���ֶ�2
	reserved_field_3 varchar(1) NULL, -- Ԥ���ֶ�3
	reserved_field_4 varchar(1) NULL, -- Ԥ���ֶ�4
	reserved_field_5 varchar(1) NULL, -- Ԥ���ֶ�5
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
COMMENT ON TABLE ods_bcm.v_tmi_template_and_clause_vw IS '����������/��ͬģ��';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw."name" IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.entry_id IS '����ID';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw."type" IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.push_bcm_or_not IS '�Ƿ�����BCM';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_1 IS 'Ԥ���ֶ�1';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_2 IS 'Ԥ���ֶ�2';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_3 IS 'Ԥ���ֶ�3';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_4 IS 'Ԥ���ֶ�4';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_5 IS 'Ԥ���ֶ�5';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_template_and_clause_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_template_and_clause_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_template_and_clause_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_template_and_clause_vw TO gr_uqry_data;
