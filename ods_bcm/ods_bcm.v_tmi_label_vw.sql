-- Drop table

-- DROP TABLE ods_bcm.v_tmi_label_vw;

CREATE TABLE ods_bcm.v_tmi_label_vw (
	entry_id varchar(10) NULL, -- 词条ID
	first_level_label varchar(4000) NULL, -- 一级标签
	two_level_label varchar(4000) NULL, -- 二级标签
	three_level_label varchar(4000) NULL, -- 三级标签
	four_level_label varchar(4000) NULL, -- 四级标签
	five_level_label varchar(4000) NULL, -- 五级标签
	six_level_label varchar(4000) NULL, -- 六级标签
	senven_level_label varchar(4000) NULL, -- 七级标签
	eight_level_label varchar(4000) NULL, -- 八级标签
	nine_level_label varchar(4000) NULL, -- 九级标签
	ten_level_label varchar(4000) NULL, -- 十级标签
	grade_11_label varchar(4000) NULL, -- 十一级标签
	grade_12_label varchar(4000) NULL, -- 十二级标签
	grade_13_label varchar(4000) NULL, -- 十三级标签
	grade_14_label varchar(4000) NULL, -- 十四级标签
	grade_15_label varchar(4000) NULL, -- 十五级标签
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
COMMENT ON TABLE ods_bcm.v_tmi_label_vw IS '词条与智力资本类型/业务领域';

-- Column comments

COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.entry_id IS '词条ID';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.first_level_label IS '一级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.two_level_label IS '二级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.three_level_label IS '三级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.four_level_label IS '四级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.five_level_label IS '五级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.six_level_label IS '六级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.senven_level_label IS '七级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.eight_level_label IS '八级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.nine_level_label IS '九级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.ten_level_label IS '十级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_11_label IS '十一级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_12_label IS '十二级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_13_label IS '十三级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_14_label IS '十四级标签';
COMMENT ON COLUMN ods_bcm.v_tmi_label_vw.grade_15_label IS '十五级标签';

-- Permissions

ALTER TABLE ods_bcm.v_tmi_label_vw OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_label_vw TO ur_uown_ods;
GRANT ALL ON TABLE ods_bcm.v_tmi_label_vw TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bcm.v_tmi_label_vw TO gr_uqry_data;
