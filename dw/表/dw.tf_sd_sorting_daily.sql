-- Drop table

-- DROP TABLE dw.tf_sd_sorting_daily;

CREATE TABLE dw.tf_sd_sorting_daily (
	row_id varchar(60) NOT NULL,
	aa_area_scr numeric(22,7) NULL, -- AA区划伤
	aa_area_stain numeric(22,7) NULL, -- AA区脏污
	abnormal_display numeric(22,7) NULL, -- 画面显示异常
	acid_membrane_defective_gum numeric(22,7) NULL, -- 抗酸膜残胶
	aggregative_zara numeric(22,7) NULL, -- 团状Zara
	all_black numeric(22,7) NULL, -- 黑画面
	all_white numeric(22,7) NULL, -- 白画面
	assembly_defect numeric(22,7) NULL, -- 组装不良
	attach_skewing numeric(22,7) NULL, -- 贴合偏移
	blu_current_defect numeric(22,7) NULL, -- BLU电流值不良
	blu_label_defect numeric(22,7) NULL, -- 标签不良
	blu_light_leakage numeric(22,7) NULL, -- BLU漏光
	blu_particle numeric(22,7) NULL, -- BLU异物
	blu_press_white_dot numeric(22,7) NULL, -- BLU指压白点
	blu_scratch numeric(22,7) NULL, -- BLU划伤
	blu_sheet_defect numeric(22,7) NULL, -- BLU Sheet不良
	blu_stain numeric(22,7) NULL, -- BLU污渍
	blu_white_spot numeric(22,7) NULL, -- BLU白点
	blue_mura numeric(22,7) NULL, -- 蓝斑
	bm_area_scr numeric(22,7) NULL, -- BM区划伤
	bm_area_stain numeric(22,7) NULL, -- BM区脏污
	bright_dots numeric(22,7) NULL, -- 亮点
	bright_lines numeric(22,7) NULL, -- 亮线
	camera_eye_defect numeric(22,7) NULL, -- 摄像孔不良
	cell_scr numeric(22,7) NULL, -- cell划伤
	cell_spot numeric(22,7) NULL, -- cell黑点、白点
	cell_stain numeric(22,7) NULL, -- cell黑斑、白斑；cell脏污
	cg_painting_peel_off numeric(22,7) NULL, -- 触摸屏掉漆
	chipping numeric(22,7) NULL, -- 崩边崩角
	common_short numeric(22,7) NULL, -- 十字线（交叉处是个点）
	components_defect numeric(22,7) NULL, -- 元器件缺失
	crosstalk numeric(22,7) NULL, -- 串话干扰
	dark_dots numeric(22,7) NULL, -- 暗点
	dark_line numeric(22,7) NULL, -- 暗线
	date_open numeric(22,7) NULL, -- 纵向断线（从一点开始蔓延的线不良）
	defectivequanlity numeric(22,7) NULL, -- 不良数量
	defectiverate numeric(22,7) NULL, -- 不良率
	dgs numeric(22,7) NULL, -- date侧和gate侧短路
	diffuse_zara numeric(22,7) NULL, -- 散状Zara
	dot_stabbed numeric(22,7) NULL, -- 点状刺伤
	ear_variant numeric(22,7) NULL, -- 凸耳变形
	edid numeric(22,7) NULL, -- 烧录不良，EDID数据烧入有误&芯片Dam
	electrical_logging_defect numeric(22,7) NULL, -- 电测不良
	flicker numeric(22,7) NULL, -- 闪烁
	gap_mura numeric(22,7) NULL, -- gapmura
	gate_open numeric(22,7) NULL, -- 横向断线（从一点开始蔓延的线不良）
	glue numeric(22,7) NULL, -- 溢胶
	goa_function numeric(22,7) NULL, -- GOA横纹不良
	gray_scale numeric(22,7) NULL, -- 灰阶异常
	hole_chipping numeric(22,7) NULL, -- 孔研磨不良
	hole_etch_defect numeric(22,7) NULL, -- 孔刻蚀不良
	horizontal_mura numeric(22,7) NULL, -- 横向mura
	hot_spot numeric(22,7) NULL, -- 灯柱不良
	image_sticking numeric(22,7) NULL, -- 残像
	ir_hole_defect numeric(22,7) NULL, -- IR孔不良
	laminating_bubble numeric(22,7) NULL, -- 贴合气泡
	laminating_partcle numeric(22,7) NULL, -- 贴合异物
	laminating_stain numeric(22,7) NULL, -- 贴合脏污
	led_loss numeric(22,7) NULL, -- BLU缺灯
	led_part_off numeric(22,7) NULL, -- LED点不亮
	lineation_ng numeric(22,7) NULL, -- 划线NG
	logo_defect numeric(22,7) NULL, -- Logo不良
	marginal_low_on_ink numeric(22,7) NULL, -- 油墨不良
	metal_remain numeric(22,7) NULL, -- 金属残留
	moving_fm numeric(22,7) NULL, -- 移动异物
	newton_ring numeric(22,7) NULL, -- TP色差
	no_video numeric(22,7) NULL, -- 无画面
	noise numeric(22,7) NULL, -- 杂音
	operationnumber numeric(22,7) NULL, -- 作业数量
	orderid varchar(400) NULL, -- 派单编号
	pmma numeric(22,7) NULL, -- 压克力
	pol_attach_defect numeric(22,7) NULL, -- POL贴付不良
	pol_bubble numeric(22,7) NULL, -- Pol 气泡
	pol_bubble_line numeric(22,7) NULL, -- POL气泡线
	pol_dent numeric(22,7) NULL, -- POL压痕
	pol_scr numeric(22,7) NULL, -- Pol 划伤
	pol_stain numeric(22,7) NULL, -- POL 脏污
	power_off numeric(22,7) NULL, -- 不供电
	protective_film_defect numeric(22,7) NULL, -- 保护膜不良
	quarter varchar(200) NULL, -- 季度
	rubbing_mura numeric(22,7) NULL, -- 45度斜方向条纹mura
	screen_printing numeric(22,7) NULL, -- 印刷不良
	screw_defect numeric(22,7) NULL, -- 漏打螺丝
	side_white_gap numeric(22,7) NULL, -- 边缘白gap
	silicon_rubber_defect numeric(22,7) NULL, -- 胶框不良
	sleep_current numeric(22,7) NULL, -- 开机异常
	solder_defect numeric(22,7) NULL, -- 焊接不良
	tape_defect numeric(22,7) NULL, -- 麦拉不良
	thickness_out_of_spec numeric(22,7) NULL, -- 厚度超规
	touch_broken numeric(22,7) NULL, -- Touch破损
	touch_dent numeric(22,7) NULL, -- 凹痕&凹凸点
	touch_futile numeric(22,7) NULL, -- 触膜失效/无触
	tp_bubble numeric(22,7) NULL, -- TP气泡
	tp_fm numeric(22,7) NULL, -- TP异物
	tp_protective_film_defect numeric(22,7) NULL, -- 保护膜撕不掉
	tp_scr numeric(22,7) NULL, -- TP划伤
	tp_side_damage numeric(22,7) NULL, -- Touch崩边崩角
	tp_stain numeric(22,7) NULL, -- TP脏污
	tuffy_coating numeric(22,7) NULL, -- Tuffy胶涂覆不良
	turn_on_ghost numeric(22,7) NULL, -- 开机残影
	upper_side_mura numeric(22,7) NULL, -- 顶部mura
	uv_coating numeric(22,7) NULL, -- UV涂覆不良
	v_block_mura numeric(22,7) NULL, -- 纵向mura
	wave_defect numeric(22,7) NULL, -- 水波纹等
	work_date_wid int8 NULL, -- 作业日期代理键
	y_dark_line numeric(22,7) NULL, -- 横向暗线
	y_dim_line numeric(22,7) NULL, -- 横向虚线
	y_white_line numeric(22,7) NULL, -- 横向白线
	yellow_mura numeric(22,7) NULL, -- 黄斑
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
COMMENT ON TABLE dw.tf_sd_sorting_daily IS 'sorting日报';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_sorting_daily.aa_area_scr IS 'AA区划伤';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.aa_area_stain IS 'AA区脏污';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.abnormal_display IS '画面显示异常';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.acid_membrane_defective_gum IS '抗酸膜残胶';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.aggregative_zara IS '团状Zara';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.all_black IS '黑画面';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.all_white IS '白画面';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.assembly_defect IS '组装不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.attach_skewing IS '贴合偏移';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_current_defect IS 'BLU电流值不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_label_defect IS '标签不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_light_leakage IS 'BLU漏光';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_particle IS 'BLU异物';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_press_white_dot IS 'BLU指压白点';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_scratch IS 'BLU划伤';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_sheet_defect IS 'BLU Sheet不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_stain IS 'BLU污渍';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blu_white_spot IS 'BLU白点';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.blue_mura IS '蓝斑';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bm_area_scr IS 'BM区划伤';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bm_area_stain IS 'BM区脏污';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bright_dots IS '亮点';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.bright_lines IS '亮线';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.camera_eye_defect IS '摄像孔不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cell_scr IS 'cell划伤';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cell_spot IS 'cell黑点、白点';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cell_stain IS 'cell黑斑、白斑；cell脏污';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.cg_painting_peel_off IS '触摸屏掉漆';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.chipping IS '崩边崩角';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.common_short IS '十字线（交叉处是个点）';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.components_defect IS '元器件缺失';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.crosstalk IS '串话干扰';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dark_dots IS '暗点';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dark_line IS '暗线';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.date_open IS '纵向断线（从一点开始蔓延的线不良）';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.defectivequanlity IS '不良数量';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.defectiverate IS '不良率';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dgs IS 'date侧和gate侧短路';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.diffuse_zara IS '散状Zara';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.dot_stabbed IS '点状刺伤';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.ear_variant IS '凸耳变形';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.edid IS '烧录不良，EDID数据烧入有误&芯片Dam';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.electrical_logging_defect IS '电测不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.flicker IS '闪烁';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.gap_mura IS 'gapmura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.gate_open IS '横向断线（从一点开始蔓延的线不良）';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.glue IS '溢胶';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.goa_function IS 'GOA横纹不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.gray_scale IS '灰阶异常';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.hole_chipping IS '孔研磨不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.hole_etch_defect IS '孔刻蚀不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.horizontal_mura IS '横向mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.hot_spot IS '灯柱不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.image_sticking IS '残像';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.ir_hole_defect IS 'IR孔不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.laminating_bubble IS '贴合气泡';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.laminating_partcle IS '贴合异物';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.laminating_stain IS '贴合脏污';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.led_loss IS 'BLU缺灯';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.led_part_off IS 'LED点不亮';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.lineation_ng IS '划线NG';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.logo_defect IS 'Logo不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.marginal_low_on_ink IS '油墨不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.metal_remain IS '金属残留';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.moving_fm IS '移动异物';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.newton_ring IS 'TP色差';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.no_video IS '无画面';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.noise IS '杂音';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.operationnumber IS '作业数量';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.orderid IS '派单编号';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pmma IS '压克力';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_attach_defect IS 'POL贴付不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_bubble IS 'Pol 气泡';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_bubble_line IS 'POL气泡线';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_dent IS 'POL压痕';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_scr IS 'Pol 划伤';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.pol_stain IS 'POL 脏污';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.power_off IS '不供电';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.protective_film_defect IS '保护膜不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.quarter IS '季度';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.rubbing_mura IS '45度斜方向条纹mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.screen_printing IS '印刷不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.screw_defect IS '漏打螺丝';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.side_white_gap IS '边缘白gap';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.silicon_rubber_defect IS '胶框不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.sleep_current IS '开机异常';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.solder_defect IS '焊接不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tape_defect IS '麦拉不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.thickness_out_of_spec IS '厚度超规';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.touch_broken IS 'Touch破损';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.touch_dent IS '凹痕&凹凸点';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.touch_futile IS '触膜失效/无触';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_bubble IS 'TP气泡';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_fm IS 'TP异物';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_protective_film_defect IS '保护膜撕不掉';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_scr IS 'TP划伤';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_side_damage IS 'Touch崩边崩角';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tp_stain IS 'TP脏污';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.tuffy_coating IS 'Tuffy胶涂覆不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.turn_on_ghost IS '开机残影';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.upper_side_mura IS '顶部mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.uv_coating IS 'UV涂覆不良';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.v_block_mura IS '纵向mura';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.wave_defect IS '水波纹等';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.work_date_wid IS '作业日期代理键';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.y_dark_line IS '横向暗线';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.y_dim_line IS '横向虚线';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.y_white_line IS '横向白线';
COMMENT ON COLUMN dw.tf_sd_sorting_daily.yellow_mura IS '黄斑';

-- Permissions

ALTER TABLE dw.tf_sd_sorting_daily OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_daily TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_daily TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_sorting_daily TO gr_uqry_data;
