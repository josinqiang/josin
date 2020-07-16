-- Drop table

-- DROP TABLE dw.td_pp_bom_recursive_mast_detail;

CREATE TABLE dw.td_pp_bom_recursive_mast_detail (
	row_wid int8 NULL, -- 代理键
	client varchar(9) NULL DEFAULT NULL::character varying, -- 客户端
	factory_code varchar(12) NULL DEFAULT NULL::character varying, -- 工厂
	search_material_code varchar(255) NULL, -- 查询物料
	"level" varchar(255) NULL DEFAULT NULL::character varying, -- 层级
	material_code varchar(255) NULL DEFAULT NULL::character varying, -- 物料
	bom_no varchar(255) NULL DEFAULT NULL::character varying, -- 物料单/BOM单
	component varchar(255) NULL DEFAULT NULL::character varying, -- 组件
	sub_bom_no varchar(100) NULL DEFAULT NULL::character varying, -- 下一级BOM单
	sub_bom_effective_start_date varchar(100) NULL DEFAULT NULL::character varying, -- 下一级BOM行有效起始日期
	sub_bom_node_no varchar(100) NULL DEFAULT NULL::character varying, -- 下一级BOM行节点数
	"type" varchar(50) NULL DEFAULT NULL::character varying, -- 类型
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(300) NULL DEFAULT NULL::character varying,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar,
	last_update_date date NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
CREATE INDEX td_pp_bom_recursive_mast_detail_src_sys_bsn_key_idx ON dw.td_pp_bom_recursive_mast_detail USING btree (src_sys_bsn_key);
COMMENT ON TABLE dw.td_pp_bom_recursive_mast_detail IS 'BOM 物料单递归明细';

-- Column comments

COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.client IS '客户端';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.factory_code IS '工厂';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.search_material_code IS '查询物料';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail."level" IS '层级';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.material_code IS '物料';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.bom_no IS '物料单/BOM单';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.component IS '组件';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.sub_bom_no IS '下一级BOM单';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.sub_bom_effective_start_date IS '下一级BOM行有效起始日期';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.sub_bom_node_no IS '下一级BOM行节点数';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail."type" IS '类型';

-- Permissions

ALTER TABLE dw.td_pp_bom_recursive_mast_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_bom_recursive_mast_detail TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_pp_bom_recursive_mast_detail TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_pp_bom_recursive_mast_detail TO gr_uapp_data;
