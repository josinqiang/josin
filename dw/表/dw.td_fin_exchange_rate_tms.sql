-- Drop table

-- DROP TABLE dw.td_fin_exchange_rate_tms;

CREATE TABLE dw.td_fin_exchange_rate_tms (
	row_wid int8 NULL,
	erid numeric NULL,
	rate_date timestamp NULL, -- ��������
	from_currency varchar(8) NULL, -- ԭʼ����
	to_currency varchar(8) NULL, -- Ŀ�����
	midprice numeric(13,5) NULL, -- �м��
	initprice numeric(13,5) NULL, -- �г����̼�
	avgprice numeric(13,5) NULL, -- 57�վ��߼۸�
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
COMMENT ON TABLE dw.td_fin_exchange_rate_tms IS '����������';

-- Column comments

COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.rate_date IS '��������';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.from_currency IS 'ԭʼ����';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.to_currency IS 'Ŀ�����';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.midprice IS '�м��';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.initprice IS '�г����̼�';
COMMENT ON COLUMN dw.td_fin_exchange_rate_tms.avgprice IS '57�վ��߼۸�';

-- Permissions

ALTER TABLE dw.td_fin_exchange_rate_tms OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_exchange_rate_tms TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_fin_exchange_rate_tms TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_fin_exchange_rate_tms TO gr_uqry_data;
