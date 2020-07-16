-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_b4_monovalent;

CREATE TABLE dw.tf_business_quota_copq_b4_monovalent (
	client varchar(255) NULL, -- 客户端
	"year" varchar(255) NULL, -- 记帐日期 yyyy
	"month" varchar(255) NULL, -- 记帐期间
	cost_estimate_number varchar(255) NULL, -- 没有数量结构的成本估算的成本估算编号
	valuation_area varchar(255) NULL, -- 评估范围
	category varchar(255) NULL, -- 在物料分类帐数据显示中的类别
	material_number varchar(255) NULL, -- 物料号
	total_value numeric(18,2) NULL, -- 估价的总库存价值
	single_level_price_diff numeric(18,2) NULL, -- 单级价格差异
	single_level_exchange_diff numeric(18,2) NULL, -- 单级汇率差异
	multilevel_price_diff numeric(18,2) NULL, -- 多级价格差异
	multilevel_exchange_diff numeric(18,2) NULL, -- 多级汇率差异
	total_inventory numeric(18,2) NULL, -- 总计已估计库存
	moving_average_price numeric(18,2) NULL, -- 移动平均价格/周期单价
	price_unit numeric(18,2) NULL, -- 价格单位
	cycle_price_unit numeric(18,2) NULL, -- 周期价格单位
	price numeric(18,6) NULL, -- 单价
	value_structure_type varchar(255) NULL, -- 值结构类型
	process_category varchar(255) NULL, -- 备选采购或备选消费处理类型
	po_alter_process varchar(255) NULL, -- 备选采购/过程
	currency_type_valuation_view varchar(255) NULL, -- 货币类型和评估视图
	valuation_type varchar(255) NULL, -- 评估类型
	type_price varchar(255) NULL, -- 价格类型
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar,
	price_current numeric(18,6) NULL, -- 当期生产消耗价格
	price_move_avg numeric(18,6) NULL, -- 移动平均价
	price_close_inv numeric(18,6) NULL, -- 期末库存价格
	price_his numeric(18,6) NULL, -- 历史价格
	price_pre_month numeric(18,6) NULL, -- 上月价格
	price_same_modle numeric(18,6) NULL -- 同型号价格
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
CREATE INDEX tf_business_quota_copq_b4_monovalent_client_idx ON dw.tf_business_quota_copq_b4_monovalent USING btree (client);
CREATE INDEX tf_business_quota_copq_b4_monovalent_material_number_idx ON dw.tf_business_quota_copq_b4_monovalent USING btree (material_number);
CREATE INDEX tf_business_quota_copq_b4_monovalent_month_idx ON dw.tf_business_quota_copq_b4_monovalent USING btree (month);
CREATE INDEX tf_business_quota_copq_b4_monovalent_src_sys_bsn_key_idx ON dw.tf_business_quota_copq_b4_monovalent USING btree (src_sys_bsn_key);
CREATE INDEX tf_business_quota_copq_b4_monovalent_year_idx ON dw.tf_business_quota_copq_b4_monovalent USING btree (year);
COMMENT ON TABLE dw.tf_business_quota_copq_b4_monovalent IS 'COPQ指标：ERP 成本价-B4单价';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.client IS '客户端';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent."year" IS '记帐日期 yyyy';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent."month" IS '记帐期间';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.cost_estimate_number IS '没有数量结构的成本估算的成本估算编号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.valuation_area IS '评估范围';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.category IS '在物料分类帐数据显示中的类别';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.material_number IS '物料号';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.total_value IS '估价的总库存价值';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.single_level_price_diff IS '单级价格差异';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.single_level_exchange_diff IS '单级汇率差异';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.multilevel_price_diff IS '多级价格差异';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.multilevel_exchange_diff IS '多级汇率差异';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.total_inventory IS '总计已估计库存';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.moving_average_price IS '移动平均价格/周期单价';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price_unit IS '价格单位';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.cycle_price_unit IS '周期价格单位';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price IS '单价';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.value_structure_type IS '值结构类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.process_category IS '备选采购或备选消费处理类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.po_alter_process IS '备选采购/过程';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.currency_type_valuation_view IS '货币类型和评估视图';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.valuation_type IS '评估类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.type_price IS '价格类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price_current IS '当期生产消耗价格';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price_move_avg IS '移动平均价';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price_close_inv IS '期末库存价格';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price_his IS '历史价格';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price_pre_month IS '上月价格';
COMMENT ON COLUMN dw.tf_business_quota_copq_b4_monovalent.price_same_modle IS '同型号价格';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_b4_monovalent OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_monovalent TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_b4_monovalent TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_b4_monovalent TO gr_uqry_data;
