-- Drop table

-- DROP TABLE dw.tf_sd_voc1;

CREATE TABLE dw.tf_sd_voc1 (
	row_id varchar(60) NOT NULL,
	voc1id varchar(120) NULL, -- VOC1单据ID
	portalid varchar(200) NULL, -- Portal ID
	finalappstatus varchar(200) NULL, -- 客户终版报告审批状态
	voc1_title varchar(1020) NULL, -- VOC1 标题
	overall_state varchar(200) NULL, -- 整体状态
	cus_name_wid int8 NULL, -- 客户名称
	cus_oem_odm varchar(1020) NULL, -- 客户OEM/ODM
	comp_level varchar(200) NULL, -- 抱怨等级
	date_occ_wid int8 NULL, -- Issue 发生日期
	bad_name varchar(200) NULL, -- 不良名称
	bad_desc varchar(1020) NULL, -- 不良描述（现象）
	input_number numeric(22) NULL, -- 投入数
	bad_mumber numeric(22) NULL, -- 不良数
	issue_ppm numeric(22,7) NULL, -- Issue发生时不良率（ppm）
	occ_stage varchar(120) NULL, -- 发生阶段
	occ_site varchar(400) NULL, -- 发生站点
	occ_con varchar(1020) NULL, -- 发生站点对应的发生条件
	client_status varchar(200) NULL, -- 客户端生产状态
	cs_first_time timestamp NULL, -- CS首次对应客户时间
	cus_req varchar(1020) NULL, -- 客户要求
	cs_fee_time timestamp NULL, -- CS反馈厂内时间
	cs_takes_on varchar(200) NULL, -- CS担当
	model varchar(400) NULL, -- 型号
	fg_code varchar(200) NULL, -- FGCode
	prod_class varchar(200) NULL, -- 产品分类
	ship_form varchar(120) NULL, -- 产品出货形态
	panel_fac varchar(120) NULL, -- Panel工厂
	ship_fac varchar(200) NULL, -- 出货工厂
	res_fac varchar(400) NULL, -- 责任工厂
	bad_clas varchar(120) NULL, -- 不良分类（预判）
	idd varchar(2000) NULL, -- 不良品ID信息（十个以内）
	is_pro_ret varchar(60) NULL, -- 不良品是否返回
	ret_qua numeric(22) NULL, -- 不良品返回数量（pcs）
	return_time timestamp NULL, -- 不良品返回时间
	comm_time timestamp NULL, -- 样品委托时间
	client_prod varchar(1020) NULL, -- 客户端产品处理（处理方式+处理数量）
	plant_hand varchar(1020) NULL, -- 厂内产品处理（处理方式+处理数量）
	cause_lea varchar(4000) NULL, -- 漏出原因
	bad_reason varchar(4000) NULL, -- 不良原因
	root_cause varchar(4000) NULL, -- 根因改善及有效性确认
	final_cause varchar(200) NULL, -- Final Report客户验证结果
	is_horizontal varchar(40) NULL, -- 是否需要横向展开
	clc_aresults varchar(1020) NULL, -- CLCA审核结果
	interception varchar(4000) NULL, -- 拦截改善及有效性确认
	cause_type varchar(1020) NULL, -- 原因类型
	person_liable varchar(200) NULL, -- 责任人
	client_clo_time timestamp NULL, -- 客户端Close时间
	final_ret_time timestamp NULL, -- 客户终版报告回复时间（CS）
	pull_thr varchar(1020) NULL, -- 拉通结果
	first_comp_time timestamp NULL, -- 初版报告完成时间
	comp_in_factory timestamp NULL, -- 厂内终版报告完成时间
	client_status2 varchar(200) NULL, -- 客户端Status
	reportstage varchar(200) NULL, -- 流程节点编号
	customercode varchar(200) NULL, -- 客户代码
	cusfilename varchar(1020) NULL, -- 客户端终版报告文件名
	infactorytime timestamp NULL, -- 厂内Close时间
	infactoryclosetat numeric(22) NULL, -- 厂内CloseTAT/时
	factorystatus varchar(200) NULL, -- 厂内Status
	badpicnames varchar(1020) NULL, -- 不良图片文件名
	firstname varchar(1020) NULL, -- 初版附件文件名
	endname varchar(1020) NULL, -- 终版附件文件名
	clcaname varchar(1020) NULL, -- CLCA附件文件名
	firstfiles varchar(1020) NULL, -- 初版附件(8D/5C)
	endfiles varchar(1020) NULL, -- 终版附件(8D/5C)
	clcafiles varchar(1020) NULL, -- CLCA附件
	badpictures varchar(1020) NULL, -- 不良图片
	impconfirm varchar(4000) NULL, -- 改善效果确认
	factcomfirm varchar(1020) NULL, -- 厂内Close确认人
	endfilesaudit varchar(4000) NULL, -- 终版报告审核
	department varchar(200) NULL, -- 所属部门科室
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
COMMENT ON TABLE dw.tf_sd_voc1 IS '客户品质Issue';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_voc1.voc1id IS 'VOC1单据ID';
COMMENT ON COLUMN dw.tf_sd_voc1.portalid IS 'Portal ID';
COMMENT ON COLUMN dw.tf_sd_voc1.finalappstatus IS '客户终版报告审批状态';
COMMENT ON COLUMN dw.tf_sd_voc1.voc1_title IS 'VOC1 标题';
COMMENT ON COLUMN dw.tf_sd_voc1.overall_state IS '整体状态';
COMMENT ON COLUMN dw.tf_sd_voc1.cus_name_wid IS '客户名称';
COMMENT ON COLUMN dw.tf_sd_voc1.cus_oem_odm IS '客户OEM/ODM';
COMMENT ON COLUMN dw.tf_sd_voc1.comp_level IS '抱怨等级';
COMMENT ON COLUMN dw.tf_sd_voc1.date_occ_wid IS 'Issue 发生日期';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_name IS '不良名称';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_desc IS '不良描述（现象）';
COMMENT ON COLUMN dw.tf_sd_voc1.input_number IS '投入数';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_mumber IS '不良数';
COMMENT ON COLUMN dw.tf_sd_voc1.issue_ppm IS 'Issue发生时不良率（ppm）';
COMMENT ON COLUMN dw.tf_sd_voc1.occ_stage IS '发生阶段';
COMMENT ON COLUMN dw.tf_sd_voc1.occ_site IS '发生站点';
COMMENT ON COLUMN dw.tf_sd_voc1.occ_con IS '发生站点对应的发生条件';
COMMENT ON COLUMN dw.tf_sd_voc1.client_status IS '客户端生产状态';
COMMENT ON COLUMN dw.tf_sd_voc1.cs_first_time IS 'CS首次对应客户时间';
COMMENT ON COLUMN dw.tf_sd_voc1.cus_req IS '客户要求';
COMMENT ON COLUMN dw.tf_sd_voc1.cs_fee_time IS 'CS反馈厂内时间';
COMMENT ON COLUMN dw.tf_sd_voc1.cs_takes_on IS 'CS担当';
COMMENT ON COLUMN dw.tf_sd_voc1.model IS '型号';
COMMENT ON COLUMN dw.tf_sd_voc1.fg_code IS 'FGCode';
COMMENT ON COLUMN dw.tf_sd_voc1.prod_class IS '产品分类';
COMMENT ON COLUMN dw.tf_sd_voc1.ship_form IS '产品出货形态';
COMMENT ON COLUMN dw.tf_sd_voc1.panel_fac IS 'Panel工厂';
COMMENT ON COLUMN dw.tf_sd_voc1.ship_fac IS '出货工厂';
COMMENT ON COLUMN dw.tf_sd_voc1.res_fac IS '责任工厂';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_clas IS '不良分类（预判）';
COMMENT ON COLUMN dw.tf_sd_voc1.idd IS '不良品ID信息（十个以内）';
COMMENT ON COLUMN dw.tf_sd_voc1.is_pro_ret IS '不良品是否返回';
COMMENT ON COLUMN dw.tf_sd_voc1.ret_qua IS '不良品返回数量（pcs）';
COMMENT ON COLUMN dw.tf_sd_voc1.return_time IS '不良品返回时间';
COMMENT ON COLUMN dw.tf_sd_voc1.comm_time IS '样品委托时间';
COMMENT ON COLUMN dw.tf_sd_voc1.client_prod IS '客户端产品处理（处理方式+处理数量）';
COMMENT ON COLUMN dw.tf_sd_voc1.plant_hand IS '厂内产品处理（处理方式+处理数量）';
COMMENT ON COLUMN dw.tf_sd_voc1.cause_lea IS '漏出原因';
COMMENT ON COLUMN dw.tf_sd_voc1.bad_reason IS '不良原因';
COMMENT ON COLUMN dw.tf_sd_voc1.root_cause IS '根因改善及有效性确认';
COMMENT ON COLUMN dw.tf_sd_voc1.final_cause IS 'Final Report客户验证结果';
COMMENT ON COLUMN dw.tf_sd_voc1.is_horizontal IS '是否需要横向展开';
COMMENT ON COLUMN dw.tf_sd_voc1.clc_aresults IS 'CLCA审核结果';
COMMENT ON COLUMN dw.tf_sd_voc1.interception IS '拦截改善及有效性确认';
COMMENT ON COLUMN dw.tf_sd_voc1.cause_type IS '原因类型';
COMMENT ON COLUMN dw.tf_sd_voc1.person_liable IS '责任人';
COMMENT ON COLUMN dw.tf_sd_voc1.client_clo_time IS '客户端Close时间';
COMMENT ON COLUMN dw.tf_sd_voc1.final_ret_time IS '客户终版报告回复时间（CS）';
COMMENT ON COLUMN dw.tf_sd_voc1.pull_thr IS '拉通结果';
COMMENT ON COLUMN dw.tf_sd_voc1.first_comp_time IS '初版报告完成时间';
COMMENT ON COLUMN dw.tf_sd_voc1.comp_in_factory IS '厂内终版报告完成时间';
COMMENT ON COLUMN dw.tf_sd_voc1.client_status2 IS '客户端Status';
COMMENT ON COLUMN dw.tf_sd_voc1.reportstage IS '流程节点编号';
COMMENT ON COLUMN dw.tf_sd_voc1.customercode IS '客户代码';
COMMENT ON COLUMN dw.tf_sd_voc1.cusfilename IS '客户端终版报告文件名';
COMMENT ON COLUMN dw.tf_sd_voc1.infactorytime IS '厂内Close时间';
COMMENT ON COLUMN dw.tf_sd_voc1.infactoryclosetat IS '厂内CloseTAT/时';
COMMENT ON COLUMN dw.tf_sd_voc1.factorystatus IS '厂内Status';
COMMENT ON COLUMN dw.tf_sd_voc1.badpicnames IS '不良图片文件名';
COMMENT ON COLUMN dw.tf_sd_voc1.firstname IS '初版附件文件名';
COMMENT ON COLUMN dw.tf_sd_voc1.endname IS '终版附件文件名';
COMMENT ON COLUMN dw.tf_sd_voc1.clcaname IS 'CLCA附件文件名';
COMMENT ON COLUMN dw.tf_sd_voc1.firstfiles IS '初版附件(8D/5C)';
COMMENT ON COLUMN dw.tf_sd_voc1.endfiles IS '终版附件(8D/5C)';
COMMENT ON COLUMN dw.tf_sd_voc1.clcafiles IS 'CLCA附件';
COMMENT ON COLUMN dw.tf_sd_voc1.badpictures IS '不良图片';
COMMENT ON COLUMN dw.tf_sd_voc1.impconfirm IS '改善效果确认';
COMMENT ON COLUMN dw.tf_sd_voc1.factcomfirm IS '厂内Close确认人';
COMMENT ON COLUMN dw.tf_sd_voc1.endfilesaudit IS '终版报告审核';
COMMENT ON COLUMN dw.tf_sd_voc1.department IS '所属部门科室';

-- Permissions

ALTER TABLE dw.tf_sd_voc1 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc1 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc1 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_voc1 TO gr_uqry_data;
