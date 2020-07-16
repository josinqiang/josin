-- Drop table

-- DROP TABLE dw.tf_pp_operation_confirm_list;

CREATE TABLE dw.tf_pp_operation_confirm_list (
	client_code varchar(9) NULL, -- 客户端
	po_number varchar(36) NULL, -- 订单号
	operation_confirm_num varchar(30) NULL, -- 工序确认号
	item_wid int8 NULL, -- 物料编码代理键
	operation_number varchar(12) NULL, -- 工序
	sequence_num varchar(18) NULL, -- 序列
	factory_wid int8 NULL, -- 工厂代理键
	operation_confirm_lin_num varchar(24) NULL, -- 工序确认行号
	po_confirm_quantity numeric(13,3) NULL, -- 按订单单位的先前确认产量
	to_be_confirmed_quantity numeric(13,3) NULL, -- 待确认的产量
	to_be_confirmed_scrap numeric(13,3) NULL, -- 当前要确认废品
	base_unit varchar(9) NULL, -- 基本单位
	confirm_unit varchar(9) NULL, -- 确认单位
	execute_confirmed_start_date_wid int8 NULL, -- 执行开始的确认日期代理键
	execute_confirmed_start_time varchar(18) NULL, -- 执行开始的确认时间
	execute_confirmed_end_date_wid int8 NULL, -- 执行完成的确认日期代理键
	execute_confirmed_end_time varchar(18) NULL, -- 执行完成的确认日期
	entry_confirmed_date varchar(24) NULL, -- 确认输入时间
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
COMMENT ON TABLE dw.tf_pp_operation_confirm_list IS '事实表-工单报工';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.client_code IS '客户端';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.po_number IS '订单号';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.operation_confirm_num IS '工序确认号';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.item_wid IS '物料编码代理键';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.operation_number IS '工序';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.sequence_num IS '序列';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.factory_wid IS '工厂代理键';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.operation_confirm_lin_num IS '工序确认行号';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.po_confirm_quantity IS '按订单单位的先前确认产量';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.to_be_confirmed_quantity IS '待确认的产量';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.to_be_confirmed_scrap IS '当前要确认废品';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.base_unit IS '基本单位';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.confirm_unit IS '确认单位';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_start_date_wid IS '执行开始的确认日期代理键';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_start_time IS '执行开始的确认时间';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_end_date_wid IS '执行完成的确认日期代理键';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.execute_confirmed_end_time IS '执行完成的确认日期';
COMMENT ON COLUMN dw.tf_pp_operation_confirm_list.entry_confirmed_date IS '确认输入时间';

-- Permissions

ALTER TABLE dw.tf_pp_operation_confirm_list OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_operation_confirm_list TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_operation_confirm_list TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_pp_operation_confirm_list TO gr_uqry_data;
