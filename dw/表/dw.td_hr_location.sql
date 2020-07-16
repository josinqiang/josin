-- Drop table

-- DROP TABLE dw.td_hr_location;

CREATE TABLE dw.td_hr_location (
	row_wid int8 NOT NULL, -- 代理键
	setid varchar(20) NULL, -- 集合ID
	"location" varchar(40) NULL, -- 地点代码
	effdt timestamp NULL, -- 生效日期
	eff_status_code varchar(4) NULL, -- 状态编码
	eff_status_name varchar(8) NULL, -- 状态名称
	descr varchar(120) NULL, -- 描述
	descrshort varchar(40) NULL, -- 简短描述
	building varchar(40) NULL, -- 建筑物
	floor varchar(40) NULL, -- 楼层编号
	phone varchar(96) NULL, -- 电话
	"extension" varchar(24) NULL, -- 电话分机
	fax varchar(96) NULL, -- 传真号码
	country varchar(12) NULL, -- 国家/地区
	postal varchar(48) NULL, -- 邮政编码
	state_code varchar(24) NULL, -- 州/省编码
	state_name varchar(24) NULL, -- 州/省名称
	city_code varchar(120) NULL, -- 城市编码
	city_name varchar(120) NULL, -- 城市名称
	address1 varchar(220) NULL, -- 地址1
	address2 varchar(220) NULL, -- 地址2
	address3 varchar(220) NULL, -- 地址3
	address4 varchar(220) NULL, -- 地址4
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
COMMENT ON TABLE dw.td_hr_location IS '地点地址信息表';

-- Column comments

COMMENT ON COLUMN dw.td_hr_location.row_wid IS '代理键';
COMMENT ON COLUMN dw.td_hr_location.setid IS '集合ID';
COMMENT ON COLUMN dw.td_hr_location."location" IS '地点代码';
COMMENT ON COLUMN dw.td_hr_location.effdt IS '生效日期';
COMMENT ON COLUMN dw.td_hr_location.eff_status_code IS '状态编码';
COMMENT ON COLUMN dw.td_hr_location.eff_status_name IS '状态名称';
COMMENT ON COLUMN dw.td_hr_location.descr IS '描述';
COMMENT ON COLUMN dw.td_hr_location.descrshort IS '简短描述';
COMMENT ON COLUMN dw.td_hr_location.building IS '建筑物';
COMMENT ON COLUMN dw.td_hr_location.floor IS '楼层编号';
COMMENT ON COLUMN dw.td_hr_location.phone IS '电话';
COMMENT ON COLUMN dw.td_hr_location."extension" IS '电话分机';
COMMENT ON COLUMN dw.td_hr_location.fax IS '传真号码';
COMMENT ON COLUMN dw.td_hr_location.country IS '国家/地区';
COMMENT ON COLUMN dw.td_hr_location.postal IS '邮政编码';
COMMENT ON COLUMN dw.td_hr_location.state_code IS '州/省编码';
COMMENT ON COLUMN dw.td_hr_location.state_name IS '州/省名称';
COMMENT ON COLUMN dw.td_hr_location.city_code IS '城市编码';
COMMENT ON COLUMN dw.td_hr_location.city_name IS '城市名称';
COMMENT ON COLUMN dw.td_hr_location.address1 IS '地址1';
COMMENT ON COLUMN dw.td_hr_location.address2 IS '地址2';
COMMENT ON COLUMN dw.td_hr_location.address3 IS '地址3';
COMMENT ON COLUMN dw.td_hr_location.address4 IS '地址4';

-- Permissions

ALTER TABLE dw.td_hr_location OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_location TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_location TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_location TO gr_uqry_data;
