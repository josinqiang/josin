-- Drop table

-- DROP TABLE dw.tf_business_quota_copq_materiel_voucher;

CREATE TABLE dw.tf_business_quota_copq_materiel_voucher (
	client varchar(10) NULL, -- 客户端
	material_voucher_no varchar(300) NULL, -- 物料凭证号
	material_voucher_year varchar(12) NULL, -- 物料凭证年度
	material_voucher_item varchar(255) NULL, -- 物料凭证中的项目
	mobile_type varchar(255) NULL, -- 移动类型
	materiel varchar(255) NULL, -- 物料
	factory varchar(255) NULL, -- 工厂
	stock_location varchar(255) NULL, -- 库存地点
	batch_no varchar(255) NULL, -- 批次，用于分析等级别
	credit_debit_flag varchar(255) NULL, -- 借贷标识
	amount numeric(13,2) NULL, -- 金额
	material_quantity numeric(13,3) NULL, -- 数量
	recevie varchar(255) NULL, -- 接收方
	cost_center varchar(255) NULL, -- 成本中心
	company varchar(255) NULL, -- 公司，用于分析工厂别
	general_ledger_account_number varchar(255) NULL, -- 总帐科目编号
	voucher_no varchar(255) NULL, -- 物料凭证号
	posting_date varchar(255) NULL, -- 过账日期
	voucher_desc varchar(255) NULL, -- 凭证抬头文本
	currency varchar(100) NULL, -- 币种
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
COMMENT ON TABLE dw.tf_business_quota_copq_materiel_voucher IS '物料凭证';

-- Column comments

COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.client IS '客户端';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_voucher_no IS '物料凭证号';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_voucher_year IS '物料凭证年度';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_voucher_item IS '物料凭证中的项目';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.mobile_type IS '移动类型';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.materiel IS '物料';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.factory IS '工厂';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.stock_location IS '库存地点';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.batch_no IS '批次，用于分析等级别';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.credit_debit_flag IS '借贷标识';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.amount IS '金额';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.material_quantity IS '数量';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.recevie IS '接收方';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.cost_center IS '成本中心';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.company IS '公司，用于分析工厂别';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.general_ledger_account_number IS '总帐科目编号';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.voucher_no IS '物料凭证号';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.posting_date IS '过账日期';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.voucher_desc IS '凭证抬头文本';
COMMENT ON COLUMN dw.tf_business_quota_copq_materiel_voucher.currency IS '币种';

-- Permissions

ALTER TABLE dw.tf_business_quota_copq_materiel_voucher OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_materiel_voucher TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_business_quota_copq_materiel_voucher TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_business_quota_copq_materiel_voucher TO gr_uqry_data;
