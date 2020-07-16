-- Drop table

-- DROP TABLE dw.tf_pp_refund_list;

CREATE TABLE dw.tf_pp_refund_list (
	backid numeric NULL, -- 退库单序号
	refundid numeric NULL, -- 退库清单主键
	applicant_id varchar(15) NULL, -- 申请人ID
	applicant_name varchar(20) NULL, -- 申请人
	corporation_code varchar(20) NULL, -- 所属单位编码
	corporation_name varchar(40) NULL, -- 所属单位名称
	apply_date_wid int8 NULL, -- 申请时间代理键
	audit_flag varchar(3) NULL, -- 审核状态
	auditflag_name text NULL, -- 审核标志(0 未提交 1 待审核 2 审核通过 3暂停审核)
	auditor_id varchar(20) NULL, -- 审核人id
	auditor_name varchar(20) NULL, -- 审核人
	cost_center_code varchar(20) NULL, -- 成本中心编码
	title varchar(200) NULL, -- 报告标题
	spare_code varchar(40) NULL, -- 备件编码
	spare_description varchar(200) NULL, -- 备件描述
	work_order_record varchar(2000) NULL, -- 关联工单编码
	wait_for_return_quantity numeric NULL, -- 待退回数量
	right_quantity numeric(13) NULL, -- 正品数量
	right_factory_code varchar(4) NULL, -- 退库工厂
	right_inv_location varchar(4) NULL, -- 退库库位
	right_move_type varchar(3) NULL, -- 退库移动类型
	ng_factory_code varchar(4) NULL, -- 报废工厂编码
	ng_quantity numeric(13) NULL, -- 报废数量
	ng_inv_location varchar(4) NULL, -- 报废库位
	ng_move_type varchar(3) NULL, -- 报废移动类型
	other_instruction varchar(200) NULL, -- 说明
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
COMMENT ON TABLE dw.tf_pp_refund_list IS '退库单数据';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_refund_list.backid IS '退库单序号';
COMMENT ON COLUMN dw.tf_pp_refund_list.refundid IS '退库清单主键';
COMMENT ON COLUMN dw.tf_pp_refund_list.applicant_id IS '申请人ID';
COMMENT ON COLUMN dw.tf_pp_refund_list.applicant_name IS '申请人';
COMMENT ON COLUMN dw.tf_pp_refund_list.corporation_code IS '所属单位编码';
COMMENT ON COLUMN dw.tf_pp_refund_list.corporation_name IS '所属单位名称';
COMMENT ON COLUMN dw.tf_pp_refund_list.apply_date_wid IS '申请时间代理键';
COMMENT ON COLUMN dw.tf_pp_refund_list.audit_flag IS '审核状态';
COMMENT ON COLUMN dw.tf_pp_refund_list.auditflag_name IS '审核标志(0 未提交 1 待审核 2 审核通过 3暂停审核)';
COMMENT ON COLUMN dw.tf_pp_refund_list.auditor_id IS '审核人id';
COMMENT ON COLUMN dw.tf_pp_refund_list.auditor_name IS '审核人';
COMMENT ON COLUMN dw.tf_pp_refund_list.cost_center_code IS '成本中心编码';
COMMENT ON COLUMN dw.tf_pp_refund_list.title IS '报告标题';
COMMENT ON COLUMN dw.tf_pp_refund_list.spare_code IS '备件编码';
COMMENT ON COLUMN dw.tf_pp_refund_list.spare_description IS '备件描述';
COMMENT ON COLUMN dw.tf_pp_refund_list.work_order_record IS '关联工单编码';
COMMENT ON COLUMN dw.tf_pp_refund_list.wait_for_return_quantity IS '待退回数量';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_quantity IS '正品数量';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_factory_code IS '退库工厂';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_inv_location IS '退库库位';
COMMENT ON COLUMN dw.tf_pp_refund_list.right_move_type IS '退库移动类型';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_factory_code IS '报废工厂编码';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_quantity IS '报废数量';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_inv_location IS '报废库位';
COMMENT ON COLUMN dw.tf_pp_refund_list.ng_move_type IS '报废移动类型';
COMMENT ON COLUMN dw.tf_pp_refund_list.other_instruction IS '说明';

-- Permissions

ALTER TABLE dw.tf_pp_refund_list OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_refund_list TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_refund_list TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_refund_list TO gr_uqry_data;
