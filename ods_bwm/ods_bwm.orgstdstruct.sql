-- Drop table

-- DROP TABLE ods_bwm.orgstdstruct;

CREATE TABLE ods_bwm.orgstdstruct (
	unitid varchar(40) NOT NULL,
	punitid varchar(40) NULL,
	"oid" varchar(40) NULL,
	"label" varchar(100) NULL,
	labellength int4 NULL,
	unitindex int4 NULL,
	workers int4 NULL,
	belongworkers int4 NULL,
	unitcode varchar(100) NULL,
	unitname varchar(200) NULL,
	istempunit int4 NULL,
	creator varchar(40) NULL,
	createdate varchar(23) NULL,
	killer varchar(40) NULL,
	killdate varchar(23) NULL,
	lastsavedate varchar(23) NULL,
	postcode varchar(10) NULL,
	unitduty varchar(200) NULL,
	unitgrade varchar(40) NULL,
	iscorecenter int4 NULL,
	corecenterinfo varchar(100) NULL,
	islegal varchar(40) NULL,
	legalinfo varchar(100) NULL,
	fax varchar(20) NULL,
	director varchar(40) NULL,
	address varchar(200) NULL,
	assistant varchar(40) NULL,
	unitlevel varchar(40) NULL,
	ismanageunit int4 NULL,
	unittype varchar(40) NULL,
	manageunit varchar(40) NULL,
	editionid varchar(40) NULL,
	labelindex varchar(1200) NULL,
	isdelete int4 NULL,
	remark varchar(200) NULL,
	cpccharacter varchar(40) NULL,
	item1 varchar(40) NULL,
	item2 varchar(40) NULL,
	item3 varchar(40) NULL,
	item4 varchar(40) NULL,
	item5 varchar(40) NULL,
	item6 varchar(40) NULL,
	item7 varchar(40) NULL,
	item8 varchar(40) NULL,
	item9 varchar(40) NULL,
	item10 varchar(40) NULL,
	item11 int4 NULL,
	item12 int4 NULL,
	item13 int4 NULL,
	item14 int4 NULL,
	item15 int4 NULL,
	item16 int4 NULL,
	item17 int4 NULL,
	item18 int4 NULL,
	item19 int4 NULL,
	item20 int4 NULL,
	unitquatity varchar(40) NULL,
	createdate_utc varchar(40) NULL,
	createdate_offset numeric(6,1) NULL,
	killdate_utc varchar(19) NULL,
	killdate_offset numeric(6,1) NULL,
	lastsavedate_utc varchar(40) NULL,
	lastsavedate_offset numeric(6,1) NULL,
	gps_control int4 NULL,
	bht_control int4 NULL,
	timeorderid varchar(40) NULL,
	w_insert_dt timestamp NULL,
	w_update_dt timestamp NULL,
	src_sys_id varchar(6) NULL,
	src_sys_bsn_key varchar(200) NULL,
	is_del bpchar(10) NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE ods_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE ods_bwm.orgstdstruct IS '部门组织信息表';

-- Permissions

ALTER TABLE ods_bwm.orgstdstruct OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.orgstdstruct TO ur_uown_ods;
GRANT ALL ON TABLE ods_bwm.orgstdstruct TO gr_uapp_data;
GRANT SELECT ON TABLE ods_bwm.orgstdstruct TO gr_uqry_data;
