-- Drop table

-- DROP TABLE ods_bpm.bo_act_dict_kv_item;

CREATE TABLE ods_bpm.bo_act_dict_kv_item (
	id varchar(36) NULL,
	orgid varchar(36) NULL,
	bindid varchar(36) NULL,
	createdate date NULL,
	createuser varchar(36) NULL,
	updatedate date NULL,
	updateuser varchar(36) NULL,
	processdefid varchar(36) NULL,
	isend numeric(2) NULL,
	itemno varchar(36) NULL, -- 代码
	cnname varchar(1000) NULL, -- 中文名称
	enname varchar(1000) NULL, -- 英文名称
	big5name varchar(1000) NULL, -- 繁体名称
	exttext1 varchar(1000) NULL, -- 扩展文本1
	exttext2 varchar(1000) NULL, -- 扩展文本2
	exttext3 varchar(1000) NULL, -- 扩展文本3
	exttext4 varchar(1000) NULL, -- 扩展文本4
	exttext5 varchar(1000) NULL, -- 扩展文本5
	exttext6 varchar(1000) NULL, -- 扩展文本6
	exttext7 varchar(1000) NULL, -- 扩展文本7
	exttext8 varchar(200) NULL, -- 扩展文本8
	exttext9 varchar(200) NULL, -- 扩展文本9
	exttext10 varchar(200) NULL, -- 扩展文本10
	extint1 numeric(38) NULL, -- 扩展整数1
	extint2 numeric(38) NULL, -- 扩展整数2
	extint3 numeric(38) NULL, -- 扩展整数3
	extint4 numeric(38) NULL, -- 扩展整数4
	extint5 numeric(38) NULL, -- 扩展整数5
	extdouble1 numeric(16,2) NULL, -- 扩展浮点1
	extdouble2 numeric(16,2) NULL, -- 扩展浮点2
	extdouble3 numeric(16,2) NULL, -- 扩展浮点3
	extdate1 date NULL, -- 扩展日期1
	extdate2 date NULL, -- 扩展日期2
	orderindex numeric(38) NULL, -- 显示顺序
	isactive numeric(38) NULL, -- 有效性
	issys numeric(38) NULL, -- 控制类型
	dictkey varchar(64) NULL, -- 所属字典
	pno varchar(36) NULL, -- 上级代码
	isleaf numeric(38) NULL, -- 节点类型
	deptids1 varchar(2000) NULL, -- 扩展部门ID1
	deptids2 varchar(2000) NULL, -- 扩展部门ID2
	deptids3 varchar(2000) NULL, -- 扩展部门ID3
	deptids4 varchar(2000) NULL, -- 扩展部门ID4
	deptids5 varchar(2000) NULL, -- 扩展部门ID5
	deptids6 varchar(2000) NULL, -- 扩展部门ID6
	deptids7 varchar(2000) NULL, -- 扩展部门ID7
	deptids8 varchar(2000) NULL, -- 扩展部门ID8
	deptids9 varchar(2000) NULL, -- 扩展部门ID9
	deptids10 varchar(2000) NULL, -- 扩展部门ID10
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
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_bpm.bo_act_dict_kv_item IS '数据字典';

-- Column comments

COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.itemno IS '代码';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.cnname IS '中文名称';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.enname IS '英文名称';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.big5name IS '繁体名称';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext1 IS '扩展文本1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext2 IS '扩展文本2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext3 IS '扩展文本3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext4 IS '扩展文本4';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext5 IS '扩展文本5';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext6 IS '扩展文本6';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext7 IS '扩展文本7';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext8 IS '扩展文本8';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext9 IS '扩展文本9';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.exttext10 IS '扩展文本10';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint1 IS '扩展整数1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint2 IS '扩展整数2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint3 IS '扩展整数3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint4 IS '扩展整数4';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extint5 IS '扩展整数5';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdouble1 IS '扩展浮点1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdouble2 IS '扩展浮点2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdouble3 IS '扩展浮点3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdate1 IS '扩展日期1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.extdate2 IS '扩展日期2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.orderindex IS '显示顺序';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.isactive IS '有效性';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.issys IS '控制类型';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.dictkey IS '所属字典';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.pno IS '上级代码';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.isleaf IS '节点类型';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids1 IS '扩展部门ID1';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids2 IS '扩展部门ID2';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids3 IS '扩展部门ID3';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids4 IS '扩展部门ID4';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids5 IS '扩展部门ID5';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids6 IS '扩展部门ID6';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids7 IS '扩展部门ID7';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids8 IS '扩展部门ID8';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids9 IS '扩展部门ID9';
COMMENT ON COLUMN ods_bpm.bo_act_dict_kv_item.deptids10 IS '扩展部门ID10';

-- Permissions

ALTER TABLE ods_bpm.bo_act_dict_kv_item OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bpm.bo_act_dict_kv_item TO ur_uown_ods;
GRANT SELECT ON TABLE ods_bpm.bo_act_dict_kv_item TO gr_uqry_data;
GRANT ALL ON TABLE ods_bpm.bo_act_dict_kv_item TO gr_uapp_data;
