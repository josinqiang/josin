-- Drop table

-- DROP TABLE dw.tf_qm_b4_monovalent_complete;

CREATE TABLE dw.tf_qm_b4_monovalent_complete (
	material varchar(20) NULL, -- 物料号
	years varchar(4) NULL, -- 年度
	months varchar(2) NULL, -- 月度
	consumption_price numeric(15,6) NULL, -- 当期生产消耗价格
	last_month_price numeric(15,6) NULL, -- 上月生产消耗价格
	moving_average_price numeric(15,6) NULL, -- 移动平均价
	inventory_price numeric(15,6) NULL, -- 期末库存价格
	history_price numeric(15,6) NULL, -- 历史价格
	me2m_price numeric(15,6) NULL, -- me2m价格
	same_type_price numeric(15,6) NULL, -- 同型号价格
	monovalent numeric(15,6) NULL, -- 单价
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
COMMENT ON TABLE dw.tf_qm_b4_monovalent_complete IS '单价-B4-成本价格';

-- Column comments

COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.material IS '物料号';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.years IS '年度';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.months IS '月度';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.consumption_price IS '当期生产消耗价格';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.last_month_price IS '上月生产消耗价格';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.moving_average_price IS '移动平均价';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.inventory_price IS '期末库存价格';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.history_price IS '历史价格';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.me2m_price IS 'me2m价格';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.same_type_price IS '同型号价格';
COMMENT ON COLUMN dw.tf_qm_b4_monovalent_complete.monovalent IS '单价';

-- Permissions

ALTER TABLE dw.tf_qm_b4_monovalent_complete OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_qm_b4_monovalent_complete TO ur_uown_edw;
GRANT SELECT ON TABLE dw.tf_qm_b4_monovalent_complete TO gr_uqry_data;
GRANT ALL ON TABLE dw.tf_qm_b4_monovalent_complete TO gr_uapp_data;
