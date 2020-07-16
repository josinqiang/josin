-- Drop table

-- DROP TABLE dw.tf_qm_oem_pnlinput_polish_ledger;

CREATE TABLE dw.tf_qm_oem_pnlinput_polish_ledger (
	id numeric(19) NULL, -- 主键
	factory varchar(510) NULL, -- 物权工厂
	inspection_point_id numeric(19) NULL, -- 录入点
	is_check varchar(510) NULL, -- 是否审核
	sampling_date_wid int8 NULL, -- 复判日期代理键
	total_week numeric(10) NULL, -- 周别
	oem_temp_wid int8 NULL, -- 供应商潜在编码代理键
	oem_factory varchar(510) NULL, -- slimming工厂
	active_type varchar(510) NULL, -- 业务类型
	thickness varchar(510) NULL, -- 厚度
	product_size varchar(510) NULL, -- 尺寸
	fg_code_wid int8 NULL, -- fg-code代理键
	po varchar(510) NULL, -- po
	work_order_no varchar(510) NULL, -- 工单号
	check_num numeric(10) NULL, -- 抽检数
	cf_polish_num numeric(10) NULL, -- cf面抛光数量
	cf_polish_ratio numeric NULL, -- cf面抛光比例(%)
	tf_polish_num numeric(10) NULL, -- tft面抛光数量
	tf_polish_ratio numeric NULL, -- tft面抛送比例(%
	single_polish_num numeric(10) NULL, -- 单面抛光数量
	single_polish_ratio numeric NULL, -- 单面抛光比例
	double_polish_num numeric(10) NULL, -- 双面抛光数量
	double_polish_ratio numeric NULL, -- 双面抛光比例
	remark varchar(510) NULL, -- 备注
	attachment varchar(510) NULL, -- 附件
	inspector varchar(510) NULL, -- 检验员
	creator_name varchar(200) NULL, -- 录入人
	created_time timestamp NULL, -- 录入时间
	last_modifier varchar(510) NULL, -- 最后修改人
	last_modified_time timestamp NULL, -- 最后修改时间
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
COMMENT ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger IS '事实表-Slimming抛光台账';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.id IS '主键';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.factory IS '物权工厂';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.inspection_point_id IS '录入点';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.is_check IS '是否审核';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.sampling_date_wid IS '复判日期代理键';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.total_week IS '周别';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.oem_temp_wid IS '供应商潜在编码代理键';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.oem_factory IS 'slimming工厂';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.active_type IS '业务类型';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.thickness IS '厚度';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.product_size IS '尺寸';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.fg_code_wid IS 'fg-code代理键';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.po IS 'po';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.work_order_no IS '工单号';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.check_num IS '抽检数';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.cf_polish_num IS 'cf面抛光数量';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.cf_polish_ratio IS 'cf面抛光比例(%)';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.tf_polish_num IS 'tft面抛光数量';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.tf_polish_ratio IS 'tft面抛送比例(%';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.single_polish_num IS '单面抛光数量';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.single_polish_ratio IS '单面抛光比例';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.double_polish_num IS '双面抛光数量';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.double_polish_ratio IS '双面抛光比例';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.remark IS '备注';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.attachment IS '附件';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.inspector IS '检验员';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.creator_name IS '录入人';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.created_time IS '录入时间';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.last_modifier IS '最后修改人';
COMMENT ON COLUMN dw.tf_qm_oem_pnlinput_polish_ledger.last_modified_time IS '最后修改时间';

-- Permissions

ALTER TABLE dw.tf_qm_oem_pnlinput_polish_ledger OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_qm_oem_pnlinput_polish_ledger TO gr_uqry_data;
