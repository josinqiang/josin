-- Drop table

-- DROP TABLE dw.td_com_customer;

CREATE TABLE dw.td_com_customer (
	row_wid int8 NULL,
	row_id varchar(60) NULL, -- 客户主键
	x_acc_id varchar(60) NULL, -- 客户id
	ou_num varchar(120) NULL, -- 客户编码
	x_eng_name varchar(400) NULL, -- 英文名称
	"name" varchar(400) NULL, -- 公司名称
	x_abbreviation varchar(400) NULL, -- 简称
	x_eng_abb_name varchar(400) NULL, -- 英文简称
	x_agree_flag varchar(4) NULL, -- 是否签署框架合同
	x_contract_status varchar(200) NULL, -- 合同状态
	x_parent_acc varchar(200) NULL, -- 父账户
	x_owner varchar(200) NULL, -- 责任人
	x_mob_phone varchar(200) NULL, -- 电话
	pr_con_id varchar(60) NULL, -- 主要联系人
	x_con_mob_phone varchar(120) NULL, -- 联系人电话
	x_con_email varchar(400) NULL, -- 联系人电子邮件
	x_credit_code varchar(400) NULL, -- 统一社会信用证代码
	x_taxpayer varchar(200) NULL, -- 纳税登记人
	x_taxpayer_type varchar(200) NULL, -- 纳税人类型
	x_legal_repre varchar(200) NULL, -- 法人代表
	x_set_up_date timestamp NULL, -- 成立日期
	x_reg_capital varchar(200) NULL, -- 注册资本
	x_bank varchar(400) NULL, -- 银行名称
	x_householder varchar(800) NULL, -- 户主
	x_bank_acc varchar(800) NULL, -- 账号
	decision_customer varchar(60) NULL, -- 决策方客户
	x_sales_org varchar(200) NULL, -- 销售组织
	x_sales_chan varchar(200) NULL, -- 分销渠道
	x_bu varchar(200) NULL, -- 产品组
	x_sales_group varchar(200) NULL, -- 销售组
	x_hq varchar(200) NULL, -- 决策方
	x_bu_num varchar(200) NULL, -- bu销售工号
	x_bu_name varchar(200) NULL, -- 姓名
	x_area varchar(200) NULL, -- 销售地区
	x_bsl varchar(200) NULL, -- 销售部门
	x_phone varchar(80) NULL, -- 手机
	x_email varchar(160) NULL, -- 邮箱
	x_country varchar(200) NULL, -- 国家
	x_province varchar(200) NULL, -- 省
	x_prefecture varchar(400) NULL, -- 城市
	x_street_add varchar(800) NULL, -- 街道地址
	x_postal_code varchar(200) NULL, -- 邮政编码
	x_acc_source varchar(200) NULL, -- 客户来源
	x_acc_type varchar(200) NULL, -- 客户分类
	x_acc_status varchar(200) NULL, -- 客户状态
	x_industry varchar(200) NULL, -- 行业
	x_partners varchar(200) NULL, -- 曾合作商
	x_coop_products varchar(200) NULL, -- 曾合作产品
	x_legal_socre varchar(200) NULL, -- 法务得分
	x_per_socre numeric(22,2) NULL, -- 经营状况得分
	x_bus_socre numeric(22,2) NULL, -- 业务得分
	x_credit_reason varchar(200) NULL, -- 授信原因
	x_credit_type varchar(200) NULL, -- 授信类型
	x_credit_lim_val timestamp NULL, -- 信贷额度有效期
	modify_name varchar(400) NULL, -- 公司名称
	abbreviation varchar(400) NULL, -- 简称
	country varchar(200) NULL, -- 国家
	province varchar(200) NULL, -- 省
	prefecture varchar(400) NULL, -- 城市
	street_add varchar(800) NULL, -- 街道地址
	mob_phone varchar(200) NULL, -- 电话
	postal_code varchar(200) NULL, -- 邮编
	credit_code varchar(400) NULL, -- 统一社会信用证代码
	bank varchar(400) NULL, -- 银行名称
	householder varchar(800) NULL, -- 户主
	bank_acc varchar(800) NULL, -- 账号
	apptoval_status varchar(200) NULL, -- 审批状态
	request_status varchar(60) NULL, -- 请求状态
	boe_department varchar(200) NULL, -- bu
	job_number varchar(200) NULL, -- 工号
	sales_org varchar(200) NULL, -- 销售组织
	sales_channel varchar(200) NULL, -- 分销渠道
	boe_bu varchar(200) NULL, -- 产品组
	boe_area varchar(200) NULL, -- 销售地区
	boe_bsl varchar(200) NULL, -- 销售部门
	sales_group varchar(200) NULL, -- 销售组
	boe_hq varchar(200) NULL, -- 决策方
	approval_type varchar(200) NULL, -- 审批类型
	eng_name varchar(400) NULL, -- 英文名称
	eng_abb_name varchar(400) NULL, -- 英文简称
	boe_phone varchar(80) NULL, -- 手机
	boe_email varchar(160) NULL, -- 邮箱
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
COMMENT ON TABLE dw.td_com_customer IS '客户公共维度信息';

-- Column comments

COMMENT ON COLUMN dw.td_com_customer.row_id IS '客户主键';
COMMENT ON COLUMN dw.td_com_customer.x_acc_id IS '客户id';
COMMENT ON COLUMN dw.td_com_customer.ou_num IS '客户编码';
COMMENT ON COLUMN dw.td_com_customer.x_eng_name IS '英文名称';
COMMENT ON COLUMN dw.td_com_customer."name" IS '公司名称';
COMMENT ON COLUMN dw.td_com_customer.x_abbreviation IS '简称';
COMMENT ON COLUMN dw.td_com_customer.x_eng_abb_name IS '英文简称';
COMMENT ON COLUMN dw.td_com_customer.x_agree_flag IS '是否签署框架合同';
COMMENT ON COLUMN dw.td_com_customer.x_contract_status IS '合同状态';
COMMENT ON COLUMN dw.td_com_customer.x_parent_acc IS '父账户';
COMMENT ON COLUMN dw.td_com_customer.x_owner IS '责任人';
COMMENT ON COLUMN dw.td_com_customer.x_mob_phone IS '电话';
COMMENT ON COLUMN dw.td_com_customer.pr_con_id IS '主要联系人';
COMMENT ON COLUMN dw.td_com_customer.x_con_mob_phone IS '联系人电话';
COMMENT ON COLUMN dw.td_com_customer.x_con_email IS '联系人电子邮件';
COMMENT ON COLUMN dw.td_com_customer.x_credit_code IS '统一社会信用证代码';
COMMENT ON COLUMN dw.td_com_customer.x_taxpayer IS '纳税登记人';
COMMENT ON COLUMN dw.td_com_customer.x_taxpayer_type IS '纳税人类型';
COMMENT ON COLUMN dw.td_com_customer.x_legal_repre IS '法人代表';
COMMENT ON COLUMN dw.td_com_customer.x_set_up_date IS '成立日期';
COMMENT ON COLUMN dw.td_com_customer.x_reg_capital IS '注册资本';
COMMENT ON COLUMN dw.td_com_customer.x_bank IS '银行名称';
COMMENT ON COLUMN dw.td_com_customer.x_householder IS '户主';
COMMENT ON COLUMN dw.td_com_customer.x_bank_acc IS '账号';
COMMENT ON COLUMN dw.td_com_customer.decision_customer IS '决策方客户';
COMMENT ON COLUMN dw.td_com_customer.x_sales_org IS '销售组织';
COMMENT ON COLUMN dw.td_com_customer.x_sales_chan IS '分销渠道';
COMMENT ON COLUMN dw.td_com_customer.x_bu IS '产品组';
COMMENT ON COLUMN dw.td_com_customer.x_sales_group IS '销售组';
COMMENT ON COLUMN dw.td_com_customer.x_hq IS '决策方';
COMMENT ON COLUMN dw.td_com_customer.x_bu_num IS 'bu销售工号';
COMMENT ON COLUMN dw.td_com_customer.x_bu_name IS '姓名';
COMMENT ON COLUMN dw.td_com_customer.x_area IS '销售地区';
COMMENT ON COLUMN dw.td_com_customer.x_bsl IS '销售部门';
COMMENT ON COLUMN dw.td_com_customer.x_phone IS '手机';
COMMENT ON COLUMN dw.td_com_customer.x_email IS '邮箱';
COMMENT ON COLUMN dw.td_com_customer.x_country IS '国家';
COMMENT ON COLUMN dw.td_com_customer.x_province IS '省';
COMMENT ON COLUMN dw.td_com_customer.x_prefecture IS '城市';
COMMENT ON COLUMN dw.td_com_customer.x_street_add IS '街道地址';
COMMENT ON COLUMN dw.td_com_customer.x_postal_code IS '邮政编码';
COMMENT ON COLUMN dw.td_com_customer.x_acc_source IS '客户来源';
COMMENT ON COLUMN dw.td_com_customer.x_acc_type IS '客户分类';
COMMENT ON COLUMN dw.td_com_customer.x_acc_status IS '客户状态';
COMMENT ON COLUMN dw.td_com_customer.x_industry IS '行业';
COMMENT ON COLUMN dw.td_com_customer.x_partners IS '曾合作商';
COMMENT ON COLUMN dw.td_com_customer.x_coop_products IS '曾合作产品';
COMMENT ON COLUMN dw.td_com_customer.x_legal_socre IS '法务得分';
COMMENT ON COLUMN dw.td_com_customer.x_per_socre IS '经营状况得分';
COMMENT ON COLUMN dw.td_com_customer.x_bus_socre IS '业务得分';
COMMENT ON COLUMN dw.td_com_customer.x_credit_reason IS '授信原因';
COMMENT ON COLUMN dw.td_com_customer.x_credit_type IS '授信类型';
COMMENT ON COLUMN dw.td_com_customer.x_credit_lim_val IS '信贷额度有效期';
COMMENT ON COLUMN dw.td_com_customer.modify_name IS '公司名称';
COMMENT ON COLUMN dw.td_com_customer.abbreviation IS '简称';
COMMENT ON COLUMN dw.td_com_customer.country IS '国家';
COMMENT ON COLUMN dw.td_com_customer.province IS '省';
COMMENT ON COLUMN dw.td_com_customer.prefecture IS '城市';
COMMENT ON COLUMN dw.td_com_customer.street_add IS '街道地址';
COMMENT ON COLUMN dw.td_com_customer.mob_phone IS '电话';
COMMENT ON COLUMN dw.td_com_customer.postal_code IS '邮编';
COMMENT ON COLUMN dw.td_com_customer.credit_code IS '统一社会信用证代码';
COMMENT ON COLUMN dw.td_com_customer.bank IS '银行名称';
COMMENT ON COLUMN dw.td_com_customer.householder IS '户主';
COMMENT ON COLUMN dw.td_com_customer.bank_acc IS '账号';
COMMENT ON COLUMN dw.td_com_customer.apptoval_status IS '审批状态';
COMMENT ON COLUMN dw.td_com_customer.request_status IS '请求状态';
COMMENT ON COLUMN dw.td_com_customer.boe_department IS 'bu';
COMMENT ON COLUMN dw.td_com_customer.job_number IS '工号';
COMMENT ON COLUMN dw.td_com_customer.sales_org IS '销售组织';
COMMENT ON COLUMN dw.td_com_customer.sales_channel IS '分销渠道';
COMMENT ON COLUMN dw.td_com_customer.boe_bu IS '产品组';
COMMENT ON COLUMN dw.td_com_customer.boe_area IS '销售地区';
COMMENT ON COLUMN dw.td_com_customer.boe_bsl IS '销售部门';
COMMENT ON COLUMN dw.td_com_customer.sales_group IS '销售组';
COMMENT ON COLUMN dw.td_com_customer.boe_hq IS '决策方';
COMMENT ON COLUMN dw.td_com_customer.approval_type IS '审批类型';
COMMENT ON COLUMN dw.td_com_customer.eng_name IS '英文名称';
COMMENT ON COLUMN dw.td_com_customer.eng_abb_name IS '英文简称';
COMMENT ON COLUMN dw.td_com_customer.boe_phone IS '手机';
COMMENT ON COLUMN dw.td_com_customer.boe_email IS '邮箱';

-- Permissions

ALTER TABLE dw.td_com_customer OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_customer TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_customer TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_customer TO gr_uqry_data;
