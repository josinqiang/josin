-- Drop table

-- DROP TABLE dw.tf_pp_fgcode_semi_finished_product;

CREATE TABLE dw.tf_pp_fgcode_semi_finished_product (
	row_wid int8 NULL,
	fgcode varchar(20) NULL, -- FG-Code编码
	semi_finished_product varchar(20) NULL, -- 半成品编码
	"type" varchar(20) NULL, -- 类型
	english_description varchar(4000) NULL, -- 英文描述
	property_factory varchar(4000) NULL, -- 物权工厂
	product_group varchar(4000) NULL, -- 产品组
	sbu_name varchar(4000) NULL, -- SBU名称
	is_mmg varchar(4000) NULL, -- 是否为套切（MMG）
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
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
COMMENT ON TABLE dw.tf_pp_fgcode_semi_finished_product IS 'FGCode对应半成品关系表';

-- Column comments

COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.fgcode IS 'FG-Code编码';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.semi_finished_product IS '半成品编码';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product."type" IS '类型';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.english_description IS '英文描述';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.property_factory IS '物权工厂';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.product_group IS '产品组';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.sbu_name IS 'SBU名称';
COMMENT ON COLUMN dw.tf_pp_fgcode_semi_finished_product.is_mmg IS '是否为套切（MMG）';

-- Permissions

ALTER TABLE dw.tf_pp_fgcode_semi_finished_product OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_pp_fgcode_semi_finished_product TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_pp_fgcode_semi_finished_product TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_pp_fgcode_semi_finished_product TO gr_uapp_data;
