-- Drop table

-- DROP TABLE ods_bcm.v_tmi_term_detail_info_vw;

CREATE TABLE ods_bcm.v_tmi_term_detail_info_vw (
	entry_id varchar(10) NULL,
	entry_name varchar(1024) NULL, -- ��������
	secret_class varchar(90) NULL, -- �ܼ�
	create_name varchar(30) NULL, -- ��������
	create_labor_number varchar(15) NULL, -- �����˹���
	date_of_creation date NULL, -- ��������
	last_editor varchar(15) NULL, -- ���һ�α༭��
	editing_time date NULL, -- �༭ʱ��
	reserved_field_1 varchar(30) NULL, -- Ԥ���ֶ�1
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
COMMENT ON TABLE ods_bcm.v_tmi_term_detail_info_vw IS '������Ϣ';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.entry_name IS '��������';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.secret_class IS '�ܼ�';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.create_name IS '��������';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.create_labor_number IS '�����˹���';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.date_of_creation IS '��������';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.last_editor IS '���һ�α༭��';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.editing_time IS '�༭ʱ��';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_1 IS 'Ԥ���ֶ�1';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_2 IS 'Ԥ���ֶ�2';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_3 IS 'Ԥ���ֶ�3';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_4 IS 'Ԥ���ֶ�4';
COMMENT ON COLUMN ods_bcm.v_tmi_term_detail_info_vw.reserved_field_5 IS 'Ԥ���ֶ�5';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_term_detail_info_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_term_detail_info_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_term_detail_info_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_term_detail_info_vw TO gr_uqry_data;
