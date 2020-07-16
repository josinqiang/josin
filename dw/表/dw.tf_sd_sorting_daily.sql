-- Drop table

-- DROP TABLE dw.tf_sd_sorting_daily;

CREATE TABLE dw.tf_sd_sorting_daily (
	row_id varchar(60) NOT NULL,
	aa_area_scr numeric(22,7) NULL, -- AA������
	aa_area_stain numeric(22,7) NULL, -- AA������
	abnormal_display numeric(22,7) NULL, -- ������ʾ�쳣
	acid_membrane_defective_gum numeric(22,7) NULL, -- ����Ĥ�н�
	aggregative_zara numeric(22,7) NULL, -- ��״Zara
	all_black numeric(22,7) NULL, -- �ڻ���
	all_white numeric(22,7) NULL, -- �׻���
	assembly_defect numeric(22,7) NULL, -- ��װ����
	attach_skewing numeric(22,7) NULL, -- ����ƫ��
	blu_current_defect numeric(22,7) NULL, -- BLU����ֵ����
	blu_label_defect numeric(22,7) NULL, -- ��ǩ����
	blu_light_leakage numeric(22,7) NULL, -- BLU©��
	blu_particle numeric(22,7) NULL, -- BLU����
	blu_press_white_dot numeric(22,7) NULL, -- BLUָѹ�׵�
	blu_scratch numeric(22,7) NULL, -- BLU����
	blu_sheet_defect numeric(22,7) NULL, -- BLU Sheet����
	blu_stain numeric(22,7) NULL, -- BLU����
	blu_white_spot numeric(22,7) NULL, -- BLU�׵�
	blue_mura numeric(22,7) NULL, -- ����
	bm_area_scr numeric(22,7) NULL, -- BM������
	bm_area_stain numeric(22,7) NULL, -- BM������
	bright_dots numeric(22,7) NULL, -- ����
	bright_lines numeric(22,7) NULL, -- ����
	camera_eye_defect numeric(22,7) NULL, -- ����ײ���
	cell_scr numeric(22,7) NULL, -- cell����
	cell_spot numeric(22,7) NULL, -- cell�ڵ㡢�׵�
	cell_stain numeric(22,7) NULL, -- cell�ڰߡ��װߣ�cell����
	cg_painting_peel_off numeric(22,7) NULL, -- ����������
	chipping numeric(22,7) NULL, -- ���߱���
	common_short numeric(22,7) NULL, -- ʮ���ߣ����洦�Ǹ��㣩
	components_defect numeric(22,7) NULL, -- Ԫ����ȱʧ
	crosstalk numeric(22,7) NULL, -- ��������
	dark_dots numeric(22,7) NULL, -- ����
	dark_line numeric(22,7) NULL, -- ����
	date_open numeric(22,7) NULL, -- ������ߣ���һ�㿪ʼ���ӵ��߲�����
	defectivequanlity numeric(22,7) NULL, -- ��������
	defectiverate numeric(22,7) NULL, -- ������
	dgs numeric(22,7) NULL, -- date���gate���·
	diffuse_zara numeric(22,7) NULL, -- ɢ״Zara
	dot_stabbed numeric(22,7) NULL, -- ��״����
	ear_variant numeric(22,7) NULL, -- ͹������
	edid numeric(22,7) NULL, -- ��¼������EDID������������&оƬDam
	electrical_logging_defect numeric(22,7) NULL, -- ��ⲻ��
	flicker numeric(22,7) NULL, -- ��˸
	gap_mura numeric(22,7) NULL, -- gapmura
	gate_open numeric(22,7) NULL, -- ������ߣ���һ�㿪ʼ���ӵ��߲�����
	glue numeric(22,7) NULL, -- �罺
	goa_function numeric(22,7) NULL, -- GOA���Ʋ���
	gray_scale numeric(22,7) NULL, -- �ҽ��쳣
	hole_chipping numeric(22,7) NULL, -- ����ĥ����
	hole_etch_defect numeric(22,7) NULL, -- �׿�ʴ����
	horizontal_mura numeric(22,7) NULL, -- ����mura
	hot_spot numeric(22,7) NULL, -- ��������
	image_sticking numeric(22,7) NULL, -- ����
	ir_hole_defect numeric(22,7) NULL, -- IR�ײ���
	laminating_bubble numeric(22,7) NULL, -- ��������
	laminating_partcle numeric(22,7) NULL, -- ��������
	laminating_stain numeric(22,7) NULL, -- ��������
	led_loss numeric(22,7) NULL, -- BLUȱ��
	led_part_off numeric(22,7) NULL, -- LED�㲻��
	lineation_ng numeric(22,7) NULL, -- ����NG
	logo_defect numeric(22,7) NULL, -- Logo����
	marginal_low_on_ink numeric(22,7) NULL, -- ��ī����
	metal_remain numeric(22,7) NULL, -- ��������
	moving_fm numeric(22,7) NULL, -- �ƶ�����
	newton_ring numeric(22,7) NULL, -- TPɫ��
	no_video numeric(22,7) NULL, -- �޻���
	noise numeric(22,7) NULL, -- ����
	operationnumber numeric(22,7) NULL, -- ��ҵ����
	orderid varchar(400) NULL, -- �ɵ����
	pmma numeric(22,7) NULL, -- ѹ����
	pol_attach_defect numeric(22,7) NULL, -- POL��������
	pol_bubble numeric(22,7) NULL, -- Pol ����
	pol_bubble_line numeric(22,7) NULL, -- POL������
	pol_dent numeric(22,7) NULL, -- POLѹ��
	pol_scr numeric(22,7) NULL, -- Pol ����
	pol_stain numeric(22,7) NULL, -- POL ����
	power_off numeric(22,7) NULL, -- ������
	protective_film_defect numeric(22,7) NULL, -- ����Ĥ����
	quarter varchar(200) NULL, -- ����
	rubbing_mura numeric(22,7) NULL, -- 45��б��������mura
	screen_printing numeric(22,7) NULL, -- ӡˢ����
	screw_defect numeric(22,7) NULL, -- ©����˿
	side_white_gap numeric(22,7) NULL, -- ��Ե��gap
	silicon_rubber_defect numeric(22,7) NULL, -- ������
	sleep_current numeric(22,7) NULL, -- �����쳣
	solder_defect numeric(22,7) NULL, -- ���Ӳ���
	tape_defect numeric(22,7) NULL, -- ��������
	thickness_out_of_spec numeric(22,7) NULL, -- ��ȳ���
	touch_broken numeric(22,7) NULL, -- Touch����
	touch_dent numeric(22,7) NULL, -- ����&��͹��
	touch_futile numeric(22,7) NULL, -- ��ĤʧЧ/�޴�
	tp_bubble numeric(22,7) NULL, -- TP����
	tp_fm numeric(22,7) NULL, -- TP����
	tp_protective_film_defect numeric(22,7) NULL, -- ����Ĥ˺����
	tp_scr numeric(22,7) NULL, -- TP����
	tp_side_damage numeric(22,7) NULL, -- Touch���߱���
	tp_stain numeric(22,7) NULL, -- TP����
	tuffy_coating numeric(22,7) NULL, -- Tuffy��Ϳ������
	turn_on_ghost numeric(22,7) NULL, -- ������Ӱ
	upper_side_mura numeric(22,7) NULL, -- ����mura
	uv_coating numeric(22,7) NULL, -- UVͿ������
	v_block_mura numeric(22,7) NULL, -- ����mura
	wave_defect numeric(22,7) NULL, -- ˮ���Ƶ�
	work_date_wid int8 NULL, -- ��ҵ���ڴ����
	y_dark_line numeric(22,7) NULL, -- ������
	y_dim_line numeric(22,7) NULL, -- ��������
	y_white_line numeric(22,7) NULL, -- �������
	yellow_mura numeric(22,7) NULL, -- �ư�
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
COMMENT ON TABLE dw.tf_sd_sorting_daily IS 'sorting�ձ�';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_sorting_daily.aa_area_scr IS 'AA������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.aa_area_stain IS 'AA������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.abnormal_display IS '������ʾ�쳣';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.acid_membrane_defective_gum IS '����Ĥ�н�';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.aggregative_zara IS '��״Zara';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.all_black IS '�ڻ���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.all_white IS '�׻���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.assembly_defect IS '��װ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.attach_skewing IS '����ƫ��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_current_defect IS 'BLU����ֵ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_label_defect IS '��ǩ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_light_leakage IS 'BLU©��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_particle IS 'BLU����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_press_white_dot IS 'BLUָѹ�׵�';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_scratch IS 'BLU����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_sheet_defect IS 'BLU Sheet����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_stain IS 'BLU����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_white_spot IS 'BLU�׵�';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blue_mura IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bm_area_scr IS 'BM������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bm_area_stain IS 'BM������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bright_dots IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bright_lines IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.camera_eye_defect IS '����ײ���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cell_scr IS 'cell����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cell_spot IS 'cell�ڵ㡢�׵�';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cell_stain IS 'cell�ڰߡ��װߣ�cell����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cg_painting_peel_off IS '����������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.chipping IS '���߱���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.common_short IS 'ʮ���ߣ����洦�Ǹ��㣩';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.components_defect IS 'Ԫ����ȱʧ';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.crosstalk IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dark_dots IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dark_line IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.date_open IS '������ߣ���һ�㿪ʼ���ӵ��߲�����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.defectivequanlity IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.defectiverate IS '������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dgs IS 'date���gate���·';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.diffuse_zara IS 'ɢ״Zara';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dot_stabbed IS '��״����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.ear_variant IS '͹������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.edid IS '��¼������EDID������������&оƬDam';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.electrical_logging_defect IS '��ⲻ��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.flicker IS '��˸';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.gap_mura IS 'gapmura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.gate_open IS '������ߣ���һ�㿪ʼ���ӵ��߲�����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.glue IS '�罺';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.goa_function IS 'GOA���Ʋ���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.gray_scale IS '�ҽ��쳣';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.hole_chipping IS '����ĥ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.hole_etch_defect IS '�׿�ʴ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.horizontal_mura IS '����mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.hot_spot IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.image_sticking IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.ir_hole_defect IS 'IR�ײ���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.laminating_bubble IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.laminating_partcle IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.laminating_stain IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.led_loss IS 'BLUȱ��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.led_part_off IS 'LED�㲻��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.lineation_ng IS '����NG';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.logo_defect IS 'Logo����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.marginal_low_on_ink IS '��ī����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.metal_remain IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.moving_fm IS '�ƶ�����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.newton_ring IS 'TPɫ��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.no_video IS '�޻���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.noise IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.operationnumber IS '��ҵ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.orderid IS '�ɵ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pmma IS 'ѹ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_attach_defect IS 'POL��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_bubble IS 'Pol ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_bubble_line IS 'POL������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_dent IS 'POLѹ��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_scr IS 'Pol ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_stain IS 'POL ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.power_off IS '������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.protective_film_defect IS '����Ĥ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.quarter IS '����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.rubbing_mura IS '45��б��������mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.screen_printing IS 'ӡˢ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.screw_defect IS '©����˿';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.side_white_gap IS '��Ե��gap';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.silicon_rubber_defect IS '������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.sleep_current IS '�����쳣';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.solder_defect IS '���Ӳ���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tape_defect IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.thickness_out_of_spec IS '��ȳ���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.touch_broken IS 'Touch����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.touch_dent IS '����&��͹��';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.touch_futile IS '��ĤʧЧ/�޴�';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_bubble IS 'TP����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_fm IS 'TP����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_protective_film_defect IS '����Ĥ˺����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_scr IS 'TP����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_side_damage IS 'Touch���߱���';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_stain IS 'TP����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tuffy_coating IS 'Tuffy��Ϳ������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.turn_on_ghost IS '������Ӱ';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.upper_side_mura IS '����mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.uv_coating IS 'UVͿ������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.v_block_mura IS '����mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.wave_defect IS 'ˮ���Ƶ�';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.work_date_wid IS '��ҵ���ڴ����';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.y_dark_line IS '������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.y_dim_line IS '��������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.y_white_line IS '�������';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.yellow_mura IS '�ư�';

-- Permissions

ALTER TABLE dw.tf_sd_sorting_daily OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_daily TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_daily TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_sorting_daily TO gr_uqry_data;
