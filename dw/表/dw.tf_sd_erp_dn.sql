-- Drop table

-- DROP TABLE dw.tf_sd_erp_dn;

CREATE TABLE dw.tf_sd_erp_dn (
	vbeln varchar(30) NULL, -- 销售凭证
	posnr varchar(18) NULL, -- 交货项目
	werks varchar(12) NULL, -- 工厂
	lgort varchar(12) NULL, -- 库存地点
	charg varchar(30) NULL, -- 批号
	lfimg numeric(13,3) NULL, -- 实际已交货量（按销售单位）
	vgbel varchar(30) NULL, -- 参考单据的单据编号
	vgpos varchar(18) NULL, -- 参考项目的项目号
	spart varchar(6) NULL, -- 产品组
	zfphm_customer_invoice varchar(30) NULL, -- HF：发票号码
	matnr_customer_invoice varchar(60) NULL, -- 物料号
	zntpr_customer_invoice numeric(13,4) NULL, -- HF：单价4位小数
	vgbel_customer_invoice varchar(30) NULL, -- 参考单据的单据编号
	vgpos_customer_invoice varchar(18) NULL, -- 参考项目的项目号
	erdat_customer_invoice varchar(24) NULL, -- 记录的创建日期
	product_type varchar(32) NULL, -- 产品类型
	posnr_vbap varchar(18) NULL, -- 交货项目
	matnr_vbap varchar(60) NULL, -- 物料号
	kdmat_vbap varchar(105) NULL, -- 客户所用的物料编号
	kwmeng_vbap numeric(15,3) NULL, -- 以销售单位表示的累计订单数量
	erdat_vbap varchar(24) NULL, -- 记录的创建日期
	vbeln_vbak varchar(30) NULL, -- 销售凭证
	erdat_vbak varchar(24) NULL, -- 记录创建时间
	spart_vbak varchar(6) NULL, -- 产品组
	vbeln_vbkd varchar(30) NULL, -- 销售凭证
	bstkd_vbkd varchar(105) NULL, -- 客户采购订单编号
	zckpz_ztie_yd_item varchar(54) NULL, -- 参考凭证号码
	zckxm_ztie_yd_item varchar(18) NULL, -- 参考凭证的项目编号
	werks_ztie_yd_hd varchar(12) NULL, -- 工厂
	zwlbh_ztie_yd_hd varchar(60) NULL, -- 物流编号
	zfdhm_ztie_yd_hd varchar(450) NULL, -- 分单号
	zcjfs_ztie_yd_hd varchar(9) NULL, -- 成交方式
	zysfs_ztie_yd_hd varchar(6) NULL, -- 运输方式
	zyszl_ztie_yd_hd varchar(3) NULL, -- 运输种类
	zjzxh_ztie_yd_hd varchar(600) NULL, -- 集装箱号
	zetat_ztie_yd_hd varchar(24) NULL, -- 预计到达目的地日期(ETA)
	zetdt_ztie_yd_hd varchar(24) NULL, -- 预计提货日期(ETD)
	zatd_pol_ztie_yd_hd varchar(24) NULL, -- 实际起运日期（起运港或机场）
	zqyd_ztie_yd_hd varchar(300) NULL, -- 起运地
	zmdd_ztie_yd_hd varchar(300) NULL, -- 目的地
	zatd_onboard_ztie_yd_hd varchar(24) NULL, -- ON BOARD DATE
	erdat_likp varchar(24) NULL, -- 记录的创建日期
	vbeln_likp varchar(30) NULL, -- 销售凭证
	lfart_likp varchar(12) NULL, -- 交货类型
	kunnr_likp varchar(30) NULL, -- 送达方
	kunag_likp varchar(30) NULL, -- 售达方
	lifex_likp varchar(105) NULL, -- 交货单的外部标识
	zfphm_customer_invoice_head varchar(30) NULL, -- HF：发票号码
	zconpo varchar(90) NULL, -- HF：No & Date P/O
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
COMMENT ON TABLE dw.tf_sd_erp_dn IS 'ERP DN信息';

-- Column comments

COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln IS '销售凭证';
COMMENT ON COLUMN dw.tf_sd_erp_dn.posnr IS '交货项目';
COMMENT ON COLUMN dw.tf_sd_erp_dn.werks IS '工厂';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lgort IS '库存地点';
COMMENT ON COLUMN dw.tf_sd_erp_dn.charg IS '批号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lfimg IS '实际已交货量（按销售单位）';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgbel IS '参考单据的单据编号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgpos IS '参考项目的项目号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.spart IS '产品组';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zfphm_customer_invoice IS 'HF：发票号码';
COMMENT ON COLUMN dw.tf_sd_erp_dn.matnr_customer_invoice IS '物料号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zntpr_customer_invoice IS 'HF：单价4位小数';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgbel_customer_invoice IS '参考单据的单据编号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vgpos_customer_invoice IS '参考项目的项目号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_customer_invoice IS '记录的创建日期';
COMMENT ON COLUMN dw.tf_sd_erp_dn.product_type IS '产品类型';
COMMENT ON COLUMN dw.tf_sd_erp_dn.posnr_vbap IS '交货项目';
COMMENT ON COLUMN dw.tf_sd_erp_dn.matnr_vbap IS '物料号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kdmat_vbap IS '客户所用的物料编号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kwmeng_vbap IS '以销售单位表示的累计订单数量';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_vbap IS '记录的创建日期';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln_vbak IS '销售凭证';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_vbak IS '记录创建时间';
COMMENT ON COLUMN dw.tf_sd_erp_dn.spart_vbak IS '产品组';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln_vbkd IS '销售凭证';
COMMENT ON COLUMN dw.tf_sd_erp_dn.bstkd_vbkd IS '客户采购订单编号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zckpz_ztie_yd_item IS '参考凭证号码';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zckxm_ztie_yd_item IS '参考凭证的项目编号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.werks_ztie_yd_hd IS '工厂';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zwlbh_ztie_yd_hd IS '物流编号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zfdhm_ztie_yd_hd IS '分单号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zcjfs_ztie_yd_hd IS '成交方式';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zysfs_ztie_yd_hd IS '运输方式';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zyszl_ztie_yd_hd IS '运输种类';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zjzxh_ztie_yd_hd IS '集装箱号';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zetat_ztie_yd_hd IS '预计到达目的地日期(ETA)';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zetdt_ztie_yd_hd IS '预计提货日期(ETD)';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zatd_pol_ztie_yd_hd IS '实际起运日期（起运港或机场）';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zqyd_ztie_yd_hd IS '起运地';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zmdd_ztie_yd_hd IS '目的地';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zatd_onboard_ztie_yd_hd IS 'ON BOARD DATE';
COMMENT ON COLUMN dw.tf_sd_erp_dn.erdat_likp IS '记录的创建日期';
COMMENT ON COLUMN dw.tf_sd_erp_dn.vbeln_likp IS '销售凭证';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lfart_likp IS '交货类型';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kunnr_likp IS '送达方';
COMMENT ON COLUMN dw.tf_sd_erp_dn.kunag_likp IS '售达方';
COMMENT ON COLUMN dw.tf_sd_erp_dn.lifex_likp IS '交货单的外部标识';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zfphm_customer_invoice_head IS 'HF：发票号码';
COMMENT ON COLUMN dw.tf_sd_erp_dn.zconpo IS 'HF：No & Date P/O';

-- Permissions

ALTER TABLE dw.tf_sd_erp_dn OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_dn TO ur_uown_edw;
GRANT ALL ON TABLE dw.tf_sd_erp_dn TO gr_uapp_data;
GRANT SELECT ON TABLE dw.tf_sd_erp_dn TO gr_uqry_data;
