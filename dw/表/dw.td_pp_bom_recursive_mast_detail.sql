-- Drop table

-- DROP TABLE dw.td_pp_bom_recursive_mast_detail;

CREATE TABLE dw.td_pp_bom_recursive_mast_detail (
	row_wid int8 NULL, -- �����
	client varchar(9) NULL DEFAULT NULL::character varying, -- �ͻ���
	factory_code varchar(12) NULL DEFAULT NULL::character varying, -- ����
	search_material_code varchar(255) NULL, -- ��ѯ����
	"level" varchar(255) NULL DEFAULT NULL::character varying, -- �㼶
	material_code varchar(255) NULL DEFAULT NULL::character varying, -- ����
	bom_no varchar(255) NULL DEFAULT NULL::character varying, -- ���ϵ�/BOM��
	component varchar(255) NULL DEFAULT NULL::character varying, -- ���
	sub_bom_no varchar(100) NULL DEFAULT NULL::character varying, -- ��һ��BOM��
	sub_bom_effective_start_date varchar(100) NULL DEFAULT NULL::character varying, -- ��һ��BOM����Ч��ʼ����
	sub_bom_node_no varchar(100) NULL DEFAULT NULL::character varying, -- ��һ��BOM�нڵ���
	"type" varchar(50) NULL DEFAULT NULL::character varying, -- ����
	w_insert_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	w_update_dt timestamp NULL DEFAULT NULL::timestamp without time zone,
	src_sys_id varchar(6) NULL DEFAULT NULL::character varying,
	src_sys_bsn_key varchar(300) NULL DEFAULT NULL::character varying,
	src_crt_dt timestamp NULL,
	src_upd_dt timestamp NULL,
	is_del bpchar(1) NULL DEFAULT NULL::bpchar,
	last_update_date date NULL
)
WITH (
	appendonly=true,
	orientation=column,
	compresstype=zstd
)
TABLESPACE edw_tablespace

DISTRIBUTED BY (src_sys_id, src_sys_bsn_key);
CREATE INDEX td_pp_bom_recursive_mast_detail_src_sys_bsn_key_idx ON dw.td_pp_bom_recursive_mast_detail USING btree (src_sys_bsn_key);
COMMENT ON TABLE dw.td_pp_bom_recursive_mast_detail IS 'BOM ���ϵ��ݹ���ϸ';

-- Column comments

COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.row_wid IS '�����';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.client IS '�ͻ���';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.factory_code IS '����';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.search_material_code IS '��ѯ����';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail."level" IS '�㼶';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.material_code IS '����';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.bom_no IS '���ϵ�/BOM��';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.component IS '���';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.sub_bom_no IS '��һ��BOM��';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.sub_bom_effective_start_date IS '��һ��BOM����Ч��ʼ����';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail.sub_bom_node_no IS '��һ��BOM�нڵ���';
COMMENT ON COLUMN dw.td_pp_bom_recursive_mast_detail."type" IS '����';

-- Permissions

ALTER TABLE dw.td_pp_bom_recursive_mast_detail OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_pp_bom_recursive_mast_detail TO ur_uown_edw;
GRANT SELECT ON TABLE dw.td_pp_bom_recursive_mast_detail TO gr_uqry_data;
GRANT ALL ON TABLE dw.td_pp_bom_recursive_mast_detail TO gr_uapp_data;
