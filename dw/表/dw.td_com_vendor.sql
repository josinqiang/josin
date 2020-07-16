-- Drop table

-- DROP TABLE dw.td_com_vendor;

CREATE TABLE dw.td_com_vendor (
	row_wid int8 NULL, -- 代理键
	vendor_no varchar(30) NULL, -- 供应商正式编号
	mdm_no varchar(60) NULL, -- 合作伙伴编码
	vendor_no_temp varchar(30) NULL, -- 供应商临时编码
	ven_type_code varchar(12) NULL, -- 账户组
	ven_type_name varchar(24) NULL, -- 账户组名称
	ven_property_code varchar(12) NULL, -- 供应商属性编码
	ven_property_name varchar(24) NULL, -- 供应商属性名称
	direct_deal_code varchar(3) NULL, -- 是否直接交易标识符
	direct_deal_name varchar(45) NULL, -- 是否直接交易
	e_nature_code varchar(6) NULL, -- 企业性质
	e_nature_name varchar(45) NULL, -- 企业性质名称
	ipo_type_code varchar(3) NULL, -- 上市类型编码
	ipo_type_name varchar(45) NULL, -- 上市类型名称
	name_zh varchar(240) NULL, -- 名称1(中文)
	name_en varchar(240) NULL, -- 名称2(英文)
	lanu_code varchar(9) NULL, -- 语言编码
	lanu_name varchar(96) NULL, -- 语言名称
	country_code varchar(9) NULL, -- 国家编码
	country_name varchar(54) NULL, -- 国家名称
	city_code varchar(9) NULL, -- 城市
	cityp_code varchar(54) NULL, -- 区
	capital_addr varchar(150) NULL, -- 资质归属地
	post_code1 varchar(30) NULL, -- 邮编
	staff_sum numeric(10) NULL, -- 员工人数
	regtime varchar(24) NULL, -- 成立日期
	credit_code varchar(60) NULL, -- 统一社会信用代码
	address varchar(765) NULL, -- 地址
	protal_url varchar(300) NULL, -- 网址
	pro_capacity varchar(150) NULL, -- 生产能力
	reg_money numeric(13,2) NULL, -- 注册资金
	currency varchar(15) NULL, -- 货币
	annual_sales numeric(13,2) NULL, -- 年销售额
	business_scope varchar(150) NULL, -- 经营范围
	products varchar(150) NULL, -- 供应产品
	main_customer varchar(300) NULL, -- 主要客户
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(1) NULL,
	client_code varchar(20) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_com_vendor IS '供应商基本信息';

-- Column comments

COMMENT ON COLUMN dw.td_com_vendor.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_com_vendor.vendor_no IS '供应商正式编号';
COMMENT ON COLUMN dw.td_com_vendor.mdm_no IS '合作伙伴编码';
COMMENT ON COLUMN dw.td_com_vendor.vendor_no_temp IS '供应商临时编码';
COMMENT ON COLUMN dw.td_com_vendor.ven_type_code IS '账户组';
COMMENT ON COLUMN dw.td_com_vendor.ven_type_name IS '账户组名称';
COMMENT ON COLUMN dw.td_com_vendor.ven_property_code IS '供应商属性编码';
COMMENT ON COLUMN dw.td_com_vendor.ven_property_name IS '供应商属性名称';
COMMENT ON COLUMN dw.td_com_vendor.direct_deal_code IS '是否直接交易标识符';
COMMENT ON COLUMN dw.td_com_vendor.direct_deal_name IS '是否直接交易';
COMMENT ON COLUMN dw.td_com_vendor.e_nature_code IS '企业性质';
COMMENT ON COLUMN dw.td_com_vendor.e_nature_name IS '企业性质名称';
COMMENT ON COLUMN dw.td_com_vendor.ipo_type_code IS '上市类型编码';
COMMENT ON COLUMN dw.td_com_vendor.ipo_type_name IS '上市类型名称';
COMMENT ON COLUMN dw.td_com_vendor.name_zh IS '名称1(中文)';
COMMENT ON COLUMN dw.td_com_vendor.name_en IS '名称2(英文)';
COMMENT ON COLUMN dw.td_com_vendor.lanu_code IS '语言编码';
COMMENT ON COLUMN dw.td_com_vendor.lanu_name IS '语言名称';
COMMENT ON COLUMN dw.td_com_vendor.country_code IS '国家编码';
COMMENT ON COLUMN dw.td_com_vendor.country_name IS '国家名称';
COMMENT ON COLUMN dw.td_com_vendor.city_code IS '城市';
COMMENT ON COLUMN dw.td_com_vendor.cityp_code IS '区';
COMMENT ON COLUMN dw.td_com_vendor.capital_addr IS '资质归属地';
COMMENT ON COLUMN dw.td_com_vendor.post_code1 IS '邮编';
COMMENT ON COLUMN dw.td_com_vendor.staff_sum IS '员工人数';
COMMENT ON COLUMN dw.td_com_vendor.regtime IS '成立日期';
COMMENT ON COLUMN dw.td_com_vendor.credit_code IS '统一社会信用代码';
COMMENT ON COLUMN dw.td_com_vendor.address IS '地址';
COMMENT ON COLUMN dw.td_com_vendor.protal_url IS '网址';
COMMENT ON COLUMN dw.td_com_vendor.pro_capacity IS '生产能力';
COMMENT ON COLUMN dw.td_com_vendor.reg_money IS '注册资金';
COMMENT ON COLUMN dw.td_com_vendor.currency IS '货币';
COMMENT ON COLUMN dw.td_com_vendor.annual_sales IS '年销售额';
COMMENT ON COLUMN dw.td_com_vendor.business_scope IS '经营范围';
COMMENT ON COLUMN dw.td_com_vendor.products IS '供应产品';
COMMENT ON COLUMN dw.td_com_vendor.main_customer IS '主要客户';

-- Permissions

ALTER TABLE dw.td_com_vendor OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_vendor TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_vendor TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_vendor TO gr_uqry_data;
