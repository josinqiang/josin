-- Drop table

-- DROP TABLE ods_bcm.v_tmi_usr_role_group_vw;

CREATE TABLE ods_bcm.v_tmi_usr_role_group_vw (
	personnel_number varchar(600) NULL, -- ��Ա����
	personnel_name varchar(60) NULL, -- ��Ա����
	"name" varchar(4000) NULL, -- ����
	"type" varchar(9) NULL, -- ����
	load_date date NULL, -- ��ȡʱ��
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
COMMENT ON TABLE ods_bcm.v_tmi_usr_role_group_vw IS '�û���/��ɫ��';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_usr_role_group_vw.personnel_number IS '��Ա����';
COMMENT ON COLUMN ods_bcm.v_tmi_usr_role_group_vw.personnel_name IS '��Ա����';
COMMENT ON COLUMN ods_bcm.v_tmi_usr_role_group_vw."name" IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_usr_role_group_vw."type" IS '����';
COMMENT ON COLUMN ods_bcm.v_tmi_usr_role_group_vw.load_date IS '��ȡʱ��';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_usr_role_group_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_usr_role_group_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_usr_role_group_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_usr_role_group_vw TO gr_uqry_data;
