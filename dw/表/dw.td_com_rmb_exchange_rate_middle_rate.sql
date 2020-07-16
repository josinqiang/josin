-- Drop table

-- DROP TABLE dw.td_com_rmb_exchange_rate_middle_rate;

CREATE TABLE dw.td_com_rmb_exchange_rate_middle_rate (
	row_wid int8 NULL,
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
COMMENT ON TABLE dw.td_com_rmb_exchange_rate_middle_rate IS '人民币汇率中间价';

-- Permissions

ALTER TABLE dw.td_com_rmb_exchange_rate_middle_rate OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_rmb_exchange_rate_middle_rate TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_rmb_exchange_rate_middle_rate TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_rmb_exchange_rate_middle_rate TO gr_uqry_data;
