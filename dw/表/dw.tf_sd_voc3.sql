-- Drop table

-- DROP TABLE dw.tf_sd_voc3;

CREATE TABLE dw.tf_sd_voc3 (
	row_id varchar(60) NOT NULL,
	voc3tital varchar(1020) NULL, -- VOC3标题
	overall_state varchar(1020) NULL, -- 整体状态
	cus_name_wid int8 NULL, -- 客户名称
	cus_oem_odm varchar(1020) NULL, -- 客户OEM/ODM
	"type" varchar(1020) NULL, -- 分类
	dateoccur_wid int8 NULL, -- 客户反馈日期
	custrequir varchar(1020) NULL, -- 客户要求
	cstakeson varchar(1020) NULL, -- CS担当
	model varchar(1020) NULL, -- 型号
	fgcode varchar(1020) NULL, -- FG Code
	productclassif varchar(1020) NULL, -- 产品分类
	shipmentform varchar(1020) NULL, -- 产品出货形态
	responsibledep varchar(1020) NULL, -- 责任部门
	programme varchar(1020) NULL, -- 处理方案
	personliable varchar(1020) NULL, -- 责任人
	processingdate varchar(1020) NULL, -- 处理日期
	timeinfactory timestamp NULL, -- Close时间
	clientstatus2 varchar(1020) NULL, -- 客户端Status
	compensation numeric(22,7) NULL, -- 赔偿金额
	amountaftneg numeric(22,7) NULL, -- 客户提出/协商后金额
	voc3id varchar(1020) NULL, -- VOC3单据ID
	responsiblefa varchar(1020) NULL, -- 责任工厂（多选）
	voc1_voc2_account varchar(1020) NULL, -- VOC1/VOC2/其他
	department varchar(1020) NULL, -- 所属部门科室
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
COMMENT ON TABLE dw.tf_sd_voc3 IS '其他抱怨与要求';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_voc3.voc3tital IS 'VOC3标题';
COMMENT ON COLUMN dw.tf_sd_voc3.overall_state IS '整体状态';
COMMENT ON COLUMN dw.tf_sd_voc3.cus_name_wid IS '客户名称';
COMMENT ON COLUMN dw.tf_sd_voc3.cus_oem_odm IS '客户OEM/ODM';
COMMENT ON COLUMN dw.tf_sd_voc3."type" IS '分类';
COMMENT ON COLUMN dw.tf_sd_voc3.dateoccur_wid IS '客户反馈日期';
COMMENT ON COLUMN dw.tf_sd_voc3.custrequir IS '客户要求';
COMMENT ON COLUMN dw.tf_sd_voc3.cstakeson IS 'CS担当';
COMMENT ON COLUMN dw.tf_sd_voc3.model IS '型号';
COMMENT ON COLUMN dw.tf_sd_voc3.fgcode IS 'FG Code';
COMMENT ON COLUMN dw.tf_sd_voc3.productclassif IS '产品分类';
COMMENT ON COLUMN dw.tf_sd_voc3.shipmentform IS '产品出货形态';
COMMENT ON COLUMN dw.tf_sd_voc3.responsibledep IS '责任部门';
COMMENT ON COLUMN dw.tf_sd_voc3.programme IS '处理方案';
COMMENT ON COLUMN dw.tf_sd_voc3.personliable IS '责任人';
COMMENT ON COLUMN dw.tf_sd_voc3.processingdate IS '处理日期';
COMMENT ON COLUMN dw.tf_sd_voc3.timeinfactory IS 'Close时间';
COMMENT ON COLUMN dw.tf_sd_voc3.clientstatus2 IS '客户端Status';
COMMENT ON COLUMN dw.tf_sd_voc3.compensation IS '赔偿金额';
COMMENT ON COLUMN dw.tf_sd_voc3.amountaftneg IS '客户提出/协商后金额';
COMMENT ON COLUMN dw.tf_sd_voc3.voc3id IS 'VOC3单据ID';
COMMENT ON COLUMN dw.tf_sd_voc3.responsiblefa IS '责任工厂（多选）';
COMMENT ON COLUMN dw.tf_sd_voc3.voc1_voc2_account IS 'VOC1/VOC2/其他';
COMMENT ON COLUMN dw.tf_sd_voc3.department IS '所属部门科室';

-- Permissions

ALTER TABLE dw.tf_sd_voc3 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc3 TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_voc3 TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_voc3 TO gr_uqry_data;
