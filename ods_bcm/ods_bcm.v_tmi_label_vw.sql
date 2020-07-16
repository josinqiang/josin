-- Drop table

-- DROP TABLE ods_bcm.v_tmi_label_vw;

CREATE TABLE ods_bcm.v_tmi_label_vw (
	entry_id varchar(10) NULL, -- ����ID
	first_level_label varchar(4000) NULL, -- һ����ǩ
	two_level_label varchar(4000) NULL, -- ������ǩ
	three_level_label varchar(4000) NULL, -- ������ǩ
	four_level_label varchar(4000) NULL, -- �ļ���ǩ
	five_level_label varchar(4000) NULL, -- �弶��ǩ
	six_level_label varchar(4000) NULL, -- ������ǩ
	senven_level_label varchar(4000) NULL, -- �߼���ǩ
	eight_level_label varchar(4000) NULL, -- �˼���ǩ
	nine_level_label varchar(4000) NULL, -- �ż���ǩ
	ten_level_label varchar(4000) NULL, -- ʮ����ǩ
	grade_11_label varchar(4000) NULL, -- ʮһ����ǩ
	grade_12_label varchar(4000) NULL, -- ʮ������ǩ
	grade_13_label varchar(4000) NULL, -- ʮ������ǩ
	grade_14_label varchar(4000) NULL, -- ʮ�ļ���ǩ
	grade_15_label varchar(4000) NULL, -- ʮ�弶��ǩ
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
COMMENT ON TABLE ods_bcm.v_tmi_label_vw IS '�����������ʱ�����/ҵ������';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.entry_id IS '����ID';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.first_level_label IS 'һ����ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.two_level_label IS '������ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.three_level_label IS '������ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.four_level_label IS '�ļ���ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.five_level_label IS '�弶��ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.six_level_label IS '������ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.senven_level_label IS '�߼���ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.eight_level_label IS '�˼���ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.nine_level_label IS '�ż���ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.ten_level_label IS 'ʮ����ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_11_label IS 'ʮһ����ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_12_label IS 'ʮ������ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_13_label IS 'ʮ������ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_14_label IS 'ʮ�ļ���ǩ';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_15_label IS 'ʮ�弶��ǩ';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_label_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_label_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_label_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_label_vw TO gr_uqry_data;
