-- Drop table

-- DROP TABLE ods_bcm.v_tmi_template_and_clause_vw;

CREATE TABLE ods_bcm.v_tmi_template_and_clause_vw (
	"name" varchar(4000) NULL, -- Ãû³Æ
	entry_id varchar(10) NULL, -- ´ÊÌõID
	"type" varchar(12) NULL, -- ÀàÐÍ
	push_bcm_or_not varchar(4) NULL, -- ÊÇ·ñÍÆËÍBCM
	reserved_field_1 varchar(1) NULL, -- Ô¤Áô×Ö¶Î1
	reserved_field_2 varchar(1) NULL, -- Ô¤Áô×Ö¶Î2
	reserved_field_3 varchar(1) NULL, -- Ô¤Áô×Ö¶Î3
	reserved_field_4 varchar(1) NULL, -- Ô¤Áô×Ö¶Î4
	reserved_field_5 varchar(1) NULL, -- Ô¤Áô×Ö¶Î5
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
COMMENT ON TABLE ods_bcm.v_tmi_template_and_clause_vw IS '´ÊÌõÓëÌõ¿î/ºÏÍ¬Ä£°å';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw."name" IS 'Ãû³Æ';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.entry_id IS '´ÊÌõID';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw."type" IS 'ÀàÐÍ';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.push_bcm_or_not IS 'ÊÇ·ñÍÆËÍBCM';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_1 IS 'Ô¤Áô×Ö¶Î1';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_2 IS 'Ô¤Áô×Ö¶Î2';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_3 IS 'Ô¤Áô×Ö¶Î3';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_4 IS 'Ô¤Áô×Ö¶Î4';
COMMENT ON COLUMN ods_bcm.v_tmi_template_and_clause_vw.reserved_field_5 IS 'Ô¤Áô×Ö¶Î5';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_template_and_clause_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_template_and_clause_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_template_and_clause_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_template_and_clause_vw TO gr_uqry_data;
