-- Drop table

-- DROP TABLE dw.td_business_quota_copq_sto_local;

CREATE TABLE dw.td_business_quota_copq_sto_local (
	row_wid int8 NOT NULL, -- �����
	code varchar(100) NOT NULL,
	basis_index varchar(100) NOT NULL DEFAULT NULL::character varying, -- ����ָ��
	org_code varchar(1000) NULL DEFAULT NULL::character varying, -- ����
	sto_local varchar(1000) NULL DEFAULT NULL::character varying, -- ��λ
	oem_factory varchar(1000) NULL DEFAULT NULL::character varying, -- ������
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_crt_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_upd_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(200) NULL DEFAULT NULL::character varying,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar,
	id int8 NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
COMMENT ON TABLE dw.td_business_quota_copq_sto_local IS 'COPQ��λ';

-- Column comments

COMMENT ON COLUMN dw.td_business_quota_copq_sto_local.row_wid IS '�����';
COMMENT ON COLUMN dw.td_business_quota_copq_sto_local.basis_index IS '����ָ��';
COMMENT ON COLUMN dw.td_business_quota_copq_sto_local.org_code IS '����';
COMMENT ON COLUMN dw.td_business_quota_copq_sto_local.sto_local IS '��λ';
COMMENT ON COLUMN dw.td_business_quota_copq_sto_local.oem_factory IS '������';

-- Permissions

ALTER TABLE dw.td_business_quota_copq_sto_local OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_sto_local TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_business_quota_copq_sto_local TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_business_quota_copq_sto_local TO gr_uqry_data;
