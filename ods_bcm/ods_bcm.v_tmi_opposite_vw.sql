-- Drop table

-- DROP TABLE ods_bcm.v_tmi_opposite_vw;

CREATE TABLE ods_bcm.v_tmi_opposite_vw (
	opposite_party_registered_name varchar(800) NULL, -- ��Է�ע������
	counterpart_name varchar(200) NULL, -- ��Է�����
	relative_type varchar(180) NULL, -- ��Է�����
	temporary_encoding varchar(2048) NULL, -- ��ʱ����
	erp_encoding varchar(2048) NULL, -- ERP����
	mdm_encoding varchar(50) NULL, -- MDM����
	state varchar(180) NULL, -- ״̬
	national_area varchar(180) NULL, -- ���ҵ���
	opposite_nature varchar(180) NULL, -- ��Է�����
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
COMMENT ON TABLE ods_bcm.v_tmi_opposite_vw IS '��Է���Ϣ';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.opposite_party_registered_name IS '��Է�ע������';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.counterpart_name IS '��Է�����';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.relative_type IS '��Է�����';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.temporary_encoding IS '��ʱ����';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.erp_encoding IS 'ERP����';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.mdm_encoding IS 'MDM����';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.state IS '״̬';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.national_area IS '���ҵ���';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.opposite_nature IS '��Է�����';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_1 IS 'Ԥ���ֶ�1';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_2 IS 'Ԥ���ֶ�2';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_3 IS 'Ԥ���ֶ�3';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_4 IS 'Ԥ���ֶ�4';
COMMENT ON COLUMN ods_bcm.v_tmi_opposite_vw.reserved_field_5 IS 'Ԥ���ֶ�5';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_opposite_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_opposite_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_opposite_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_opposite_vw TO gr_uqry_data;
