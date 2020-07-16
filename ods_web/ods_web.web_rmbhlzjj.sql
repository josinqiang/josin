-- Drop table

-- DROP TABLE ods_web.web_rmbhlzjj;

CREATE TABLE ods_web.web_rmbhlzjj (
	usd numeric(30,10) NULL,
	eur numeric(30,10) NULL,
	jpy numeric(30,10) NULL,
	hkd numeric(30,10) NULL,
	gbp numeric(30,10) NULL,
	myr numeric(30,10) NULL,
	rub numeric(30,10) NULL,
	aud numeric(30,10) NULL,
	cad numeric(30,10) NULL,
	nzd numeric(30,10) NULL,
	sgd numeric(30,10) NULL,
	chf numeric(30,10) NULL,
	zar numeric(30,10) NULL,
	krw numeric(30,10) NULL,
	aed numeric(30,10) NULL,
	sar numeric(30,10) NULL,
	huf numeric(30,10) NULL,
	pln numeric(30,10) NULL,
	dkk numeric(30,10) NULL,
	sek numeric(30,10) NULL,
	nok numeric(30,10) NULL,
	try numeric(30,10) NULL,
	php numeric(30,10) NULL,
	thb numeric(30,10) NULL,
	rate_date timestamp NULL,
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
COMMENT ON TABLE ods_web.web_rmbhlzjj IS '人民币汇率中间价';

-- Permissions

ALTER TABLE ods_web.web_rmbhlzjj OWNER TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.web_rmbhlzjj TO ur_uown_ods;
GRANT ALL ON TABLE ods_web.web_rmbhlzjj TO gr_uapp_data;
GRANT SELECT ON TABLE ods_web.web_rmbhlzjj TO gr_uqry_data;
