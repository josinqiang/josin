-- Drop table

-- DROP TABLE dw.tf_pp_bom_list_copy1;

CREATE TABLE dw.tf_pp_bom_list_copy1 (
	days date NULL, -- 日期
	client varchar(300) NULL, -- 客户端
	material_code varchar(300) NULL, -- 物料号
	factory_code varchar(300) NULL, -- 工厂
	bom_no varchar(300) NULL, -- bom号
	node_num varchar(300) NULL, -- 节点数
	effective_start_date varchar(300) NULL, -- 有效起止日期
	modified_no varchar(300) NULL, -- 更改编号
	delete_flag varchar(300) NULL, -- 删除id，用于对应节点的料号在对应的更改编号上是否删除
	component varchar(300) NULL, -- bom组件
	uom varchar(300) NULL, -- 单位
	quantity numeric NULL, -- 数量
	std_quantity numeric NULL, -- 基本数量
	per_used numeric NULL, -- 使用可能性按%(可选项目)
	group_code varchar(300) NULL, -- 组
	std_used_quantity numeric NULL, -- bom标准用量
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_upd_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(300) NULL,
	is_del bpchar(1) NULL,
	effective_end_date varchar(300) NULL -- 有效截止日期
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (days);
COMMENT ON TABLE dw.tf_pp_bom_list_copy1 IS 'PP BOM清单';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.days IS '日期';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.client IS '客户端';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.material_code IS '物料号';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.factory_code IS '工厂';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.bom_no IS 'bom号';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.node_num IS '节点数';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.effective_start_date IS '有效起止日期';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.modified_no IS '更改编号';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.delete_flag IS '删除id，用于对应节点的料号在对应的更改编号上是否删除';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.component IS 'bom组件';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.uom IS '单位';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.quantity IS '数量';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.std_quantity IS '基本数量';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.per_used IS '使用可能性按%(可选项目)';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.group_code IS '组';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.std_used_quantity IS 'bom标准用量';
COMMENT ON COLUMN dw.tf_pp_bom_list_copy1.effective_end_date IS '有效截止日期';

-- Permissions

ALTER TABLE dw.tf_pp_bom_list_copy1 OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_bom_list_copy1 TO ur_uown_edw;
