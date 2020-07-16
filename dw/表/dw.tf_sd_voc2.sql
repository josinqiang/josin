-- Drop table

-- DROP TABLE dw.tf_sd_voc2;

CREATE TABLE dw.tf_sd_voc2 (
	row_id varchar(60) NOT NULL,
	voc2_title varchar(1020) NULL, -- VOC2标题
	overall_state varchar(200) NULL, -- 整体状态
	cus_name_wid int8 NULL, -- 客户名称代理键
	cust_oemodm varchar(200) NULL, -- 客户OEM/ODM
	"type" varchar(200) NULL, -- 类型
	cufe_time_wid int8 NULL, -- 客户反馈时间代理键
	clie_status varchar(200) NULL, -- 客户端生产状态
	cust_req varchar(1020) NULL, -- 客户要求
	csfe_time timestamp NULL, -- CS反馈厂内时间
	csta_on varchar(200) NULL, -- CS担当
	model varchar(200) NULL, -- 型号
	prod_clas varchar(200) NULL, -- 产品分类
	ship_n varchar(200) NULL, -- 产品出货形态
	panel_fact varchar(200) NULL, -- Panel工厂
	ship_fact varchar(200) NULL, -- 出货工厂
	ispr_returned bpchar(4) NULL, -- 不良品是否返回
	retu_time timestamp NULL, -- 不良品返回时间
	retu_msg varchar(800) NULL, -- 返回品 FGCode及返回数量（pcs）
	comm_time timestamp NULL, -- 样品委托时间
	plan_handling varchar(4000) NULL, -- 厂内产品处理（处理方式+处理数量）
	comp_factory timestamp NULL, -- 客户端Close时间
	clie_status2 varchar(200) NULL, -- 客户端Status
	reportstage varchar(200) NULL, -- 流程节点编号
	customercode varchar(200) NULL, -- 客户代码
	cusfilename varchar(1020) NULL, -- 客户端终版报告文件名
	voc2id varchar(1020) NULL, -- VOC2单据ID
	badpicnames varchar(200) NULL, -- 不良图片文件名
	firstname varchar(1020) NULL, -- 初版附件文件名
	endname varchar(1020) NULL, -- 终版附件文件名
	voctype varchar(200) NULL, -- VOC区分
	department varchar(200) NULL, -- 所属部门科室
	input_number numeric(22) NULL, -- 投入数
	bad_mumber numeric(22) NULL, -- 不良数
	high_n varchar(200) NULL, -- 高发不良名称
	factoryconf varchar(4000) NULL, -- 厂内改善效果确认
	personlia varchar(200) NULL, -- 责任人
	infactorytime timestamp NULL, -- 厂内Close时间
	infactoryclosetat numeric(22) NULL, -- 厂内CloseTAT/时
	factorystatus varchar(200) NULL, -- 厂内Status
	first_days numeric(22,7) NULL, -- 初版报告审核通过TAT/时
	final_days numeric(22,7) NULL, -- 终版报告审核通过TAT/时
	res_fac varchar(200) NULL, -- 责任工厂
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
COMMENT ON TABLE dw.tf_sd_voc2 IS 'Sorting、DOA、Field不良CIP改善';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_voc2.voc2_title IS 'VOC2标题';
COMMENT ON COLUMN dw.tf_sd_voc2.overall_state IS '整体状态';
COMMENT ON COLUMN dw.tf_sd_voc2.cus_name_wid IS '客户名称代理键';
COMMENT ON COLUMN dw.tf_sd_voc2.cust_oemodm IS '客户OEM/ODM';
COMMENT ON COLUMN dw.tf_sd_voc2."type" IS '类型';
COMMENT ON COLUMN dw.tf_sd_voc2.cufe_time_wid IS '客户反馈时间代理键';
COMMENT ON COLUMN dw.tf_sd_voc2.clie_status IS '客户端生产状态';
COMMENT ON COLUMN dw.tf_sd_voc2.cust_req IS '客户要求';
COMMENT ON COLUMN dw.tf_sd_voc2.csfe_time IS 'CS反馈厂内时间';
COMMENT ON COLUMN dw.tf_sd_voc2.csta_on IS 'CS担当';
COMMENT ON COLUMN dw.tf_sd_voc2.model IS '型号';
COMMENT ON COLUMN dw.tf_sd_voc2.prod_clas IS '产品分类';
COMMENT ON COLUMN dw.tf_sd_voc2.ship_n IS '产品出货形态';
COMMENT ON COLUMN dw.tf_sd_voc2.panel_fact IS 'Panel工厂';
COMMENT ON COLUMN dw.tf_sd_voc2.ship_fact IS '出货工厂';
COMMENT ON COLUMN dw.tf_sd_voc2.ispr_returned IS '不良品是否返回';
COMMENT ON COLUMN dw.tf_sd_voc2.retu_time IS '不良品返回时间';
COMMENT ON COLUMN dw.tf_sd_voc2.retu_msg IS '返回品 FGCode及返回数量（pcs）';
COMMENT ON COLUMN dw.tf_sd_voc2.comm_time IS '样品委托时间';
COMMENT ON COLUMN dw.tf_sd_voc2.plan_handling IS '厂内产品处理（处理方式+处理数量）';
COMMENT ON COLUMN dw.tf_sd_voc2.comp_factory IS '客户端Close时间';
COMMENT ON COLUMN dw.tf_sd_voc2.clie_status2 IS '客户端Status';
COMMENT ON COLUMN dw.tf_sd_voc2.reportstage IS '流程节点编号';
COMMENT ON COLUMN dw.tf_sd_voc2.customercode IS '客户代码';
COMMENT ON COLUMN dw.tf_sd_voc2.cusfilename IS '客户端终版报告文件名';
COMMENT ON COLUMN dw.tf_sd_voc2.voc2id IS 'VOC2单据ID';
COMMENT ON COLUMN dw.tf_sd_voc2.badpicnames IS '不良图片文件名';
COMMENT ON COLUMN dw.tf_sd_voc2.firstname IS '初版附件文件名';
COMMENT ON COLUMN dw.tf_sd_voc2.endname IS '终版附件文件名';
COMMENT ON COLUMN dw.tf_sd_voc2.voctype IS 'VOC区分';
COMMENT ON COLUMN dw.tf_sd_voc2.department IS '所属部门科室';
COMMENT ON COLUMN dw.tf_sd_voc2.input_number IS '投入数';
COMMENT ON COLUMN dw.tf_sd_voc2.bad_mumber IS '不良数';
COMMENT ON COLUMN dw.tf_sd_voc2.high_n IS '高发不良名称';
COMMENT ON COLUMN dw.tf_sd_voc2.factoryconf IS '厂内改善效果确认';
COMMENT ON COLUMN dw.tf_sd_voc2.personlia IS '责任人';
COMMENT ON COLUMN dw.tf_sd_voc2.infactorytime IS '厂内Close时间';
COMMENT ON COLUMN dw.tf_sd_voc2.infactoryclosetat IS '厂内CloseTAT/时';
COMMENT ON COLUMN dw.tf_sd_voc2.factorystatus IS '厂内Status';
COMMENT ON COLUMN dw.tf_sd_voc2.first_days IS '初版报告审核通过TAT/时';
COMMENT ON COLUMN dw.tf_sd_voc2.final_days IS '终版报告审核通过TAT/时';
COMMENT ON COLUMN dw.tf_sd_voc2.res_fac IS '责任工厂';

-- Permissions

ALTER TABLE dw.tf_sd_voc2 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc2 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc2 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_voc2 TO gr_uqry_data;
