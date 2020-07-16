-- Drop table

-- DROP TABLE dw.tf_sd_sorting_applicationform;

CREATE TABLE dw.tf_sd_sorting_applicationform (
	row_id varchar(60) NOT NULL,
	approvalorderid varchar(200) NULL, -- 审批单编号
	application_date_wid int8 NULL, -- 提交时间代理键
	terminaltime timestamp NULL, -- 结束时间
	draftername varchar(200) NULL, -- 起草人
	draftingnumber varchar(200) NULL, -- 工号
	centraldepartment varchar(200) NULL, -- 本部
	drafterdepartment varchar(200) NULL, -- 部门
	administrative varchar(200) NULL, -- 科室
	formtype varchar(200) NULL, -- 表单类型
	title varchar(400) NULL, -- 标题
	boeshippingfactory varchar(200) NULL, -- 出货工厂
	businesstype varchar(200) NULL, -- 业务类型
	sortingquantity varchar(200) NULL, -- Sorting数量
	sortingamount varchar(200) NULL, -- Sorting金额
	billstatus varchar(200) NULL, -- 整体关单状态
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
COMMENT ON TABLE dw.tf_sd_sorting_applicationform IS 'Sorting申请单';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.approvalorderid IS '审批单编号';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.application_date_wid IS '提交时间代理键';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.terminaltime IS '结束时间';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.draftername IS '起草人';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.draftingnumber IS '工号';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.centraldepartment IS '本部';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.drafterdepartment IS '部门';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.administrative IS '科室';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.formtype IS '表单类型';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.title IS '标题';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.boeshippingfactory IS '出货工厂';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.businesstype IS '业务类型';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.sortingquantity IS 'Sorting数量';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.sortingamount IS 'Sorting金额';
COMMENT ON COLUMN dw.tf_sd_sorting_applicationform.billstatus IS '整体关单状态';

-- Permissions

ALTER TABLE dw.tf_sd_sorting_applicationform OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_applicationform TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_sorting_applicationform TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_sorting_applicationform TO gr_uqry_data;
