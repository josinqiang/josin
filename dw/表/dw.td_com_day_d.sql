-- Drop table

-- DROP TABLE dw.td_com_day_d;

CREATE TABLE dw.td_com_day_d (
	day_wid int8 NOT NULL, -- 日期主键
	day_name varchar(120) NULL, -- 日期格式1
	day_date date NULL, -- 日期格式2
	day_desc varchar(120) NULL, -- 日期格式3
	day_in_month varchar(120) NULL, -- 当月第几天
	last_day_in_month bpchar(1) NOT NULL, -- 当月最后一天
	day_in_week bpchar(1) NULL, -- 本周第几天
	day_in_week_zh_desc varchar(120) NULL, -- 一周第几天_中文
	day_in_week_en_s_desc varchar(120) NULL, -- 一周第几天_英文简称
	day_in_week_en_desc varchar(120) NULL, -- 一周第几天_英文全称
	week_in_month bpchar(1) NULL, -- 当月第几周
	decade_in_month int8 NULL,
	decade_name varchar(120) NULL,
	decade_desc varchar(120) NULL,
	week_wid int8 NULL,
	week_name varchar(120) NULL,
	week_desc varchar(120) NULL,
	week_in_year int8 NULL,
	first_day_of_week date NULL, -- 本周第一天_日期
	last_day_of_week date NULL, -- 本周最后一天_日期
	month_wid int8 NULL, -- 月主键
	month_name varchar(120) NULL, -- 月份_文字
	month_shot_name varchar(120) NULL, -- 月份简称
	month_desc varchar(120) NULL, -- 月份描述
	month_in_year int8 NULL, -- 本年第几月
	month_number int8 NULL, -- 月份_数字
	first_day_of_month date NULL, -- 当月第一天
	last_day_of_month date NULL, -- 当月最后一天
	quarter_wid int8 NULL, -- 季度主键
	quarter_name varchar(120) NULL, -- 季度名称
	quarter_desc varchar(120) NULL, -- 季度描述
	quarter_in_year int8 NULL, -- 当月第几季
	first_day_of_quarter date NULL, -- 本季度第一天
	last_day_of_quarter date NULL, -- 本季度最后一天
	half_year_wid int8 NULL, -- 上半年主键
	half_year_name varchar(120) NULL, -- 上半年名称
	half_year_desc varchar(120) NULL, -- 上半年描述
	half_in_year int8 NULL, -- 上半年标识
	year_wid int8 NULL, -- 年度主键
	year_name varchar(120) NULL, -- 年度名称
	year_desc varchar(120) NULL, -- 年度描述
	first_day_of_year date NULL, -- 本年第一天
	last_day_of_year date NULL, -- 本年最后一天
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
CREATE INDEX td_com_day_d_day_date_idx ON dw.td_com_day_d USING btree (day_date);
CREATE INDEX td_com_day_d_day_wid_idx ON dw.td_com_day_d USING btree (day_wid);
COMMENT ON TABLE dw.td_com_day_d IS '日期公共维度表';

-- Column comments

COMMENT ON COLUMN dw.td_com_day_d.day_wid IS '日期主键';
COMMENT ON COLUMN dw.td_com_day_d.day_name IS '日期格式1';
COMMENT ON COLUMN dw.td_com_day_d.day_date IS '日期格式2';
COMMENT ON COLUMN dw.td_com_day_d.day_desc IS '日期格式3';
COMMENT ON COLUMN dw.td_com_day_d.day_in_month IS '当月第几天';
COMMENT ON COLUMN dw.td_com_day_d.last_day_in_month IS '当月最后一天';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week IS '本周第几天';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week_zh_desc IS '一周第几天_中文';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week_en_s_desc IS '一周第几天_英文简称';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week_en_desc IS '一周第几天_英文全称';
COMMENT ON COLUMN dw.td_com_day_d.week_in_month IS '当月第几周';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_week IS '本周第一天_日期';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_week IS '本周最后一天_日期';
COMMENT ON COLUMN dw.td_com_day_d.month_wid IS '月主键';
COMMENT ON COLUMN dw.td_com_day_d.month_name IS '月份_文字';
COMMENT ON COLUMN dw.td_com_day_d.month_shot_name IS '月份简称';
COMMENT ON COLUMN dw.td_com_day_d.month_desc IS '月份描述';
COMMENT ON COLUMN dw.td_com_day_d.month_in_year IS '本年第几月';
COMMENT ON COLUMN dw.td_com_day_d.month_number IS '月份_数字';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_month IS '当月第一天';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_month IS '当月最后一天';
COMMENT ON COLUMN dw.td_com_day_d.quarter_wid IS '季度主键';
COMMENT ON COLUMN dw.td_com_day_d.quarter_name IS '季度名称';
COMMENT ON COLUMN dw.td_com_day_d.quarter_desc IS '季度描述';
COMMENT ON COLUMN dw.td_com_day_d.quarter_in_year IS '当月第几季';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_quarter IS '本季度第一天';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_quarter IS '本季度最后一天';
COMMENT ON COLUMN dw.td_com_day_d.half_year_wid IS '上半年主键';
COMMENT ON COLUMN dw.td_com_day_d.half_year_name IS '上半年名称';
COMMENT ON COLUMN dw.td_com_day_d.half_year_desc IS '上半年描述';
COMMENT ON COLUMN dw.td_com_day_d.half_in_year IS '上半年标识';
COMMENT ON COLUMN dw.td_com_day_d.year_wid IS '年度主键';
COMMENT ON COLUMN dw.td_com_day_d.year_name IS '年度名称';
COMMENT ON COLUMN dw.td_com_day_d.year_desc IS '年度描述';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_year IS '本年第一天';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_year IS '本年最后一天';

-- Permissions

ALTER TABLE dw.td_com_day_d OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_day_d TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_day_d TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_day_d TO gr_uqry_data;
