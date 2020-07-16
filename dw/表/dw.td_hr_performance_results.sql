-- Drop table

-- DROP TABLE dw.td_hr_performance_results;

CREATE TABLE dw.td_hr_performance_results (
	row_wid int8 NULL,
	emplid varchar(44) NULL, -- Ա�� ID
	empl_rcd numeric NULL, -- Ա����¼
	b_perf_id varchar(120) NULL, -- ���˷���ID
	d_asses_type varchar(32) NULL, -- ��������
	d_ep_period_id varchar(200) NULL, -- ��������ID
	rating_model varchar(16) NULL, -- �ȼ�ģ��
	b_perf_gr numeric(5,2) NULL, -- ���˷���
	b_perf_gr_vsb varchar(4) NULL, -- ��Ա���ɼ�
	b_perf_comment varchar(4000) NULL, -- ��������
	b_perf_comment_vsb varchar(4) NULL, -- ��Ա���ɼ�
	b_perf_lv varchar(16) NULL, -- ���˵ȼ�
	b_adjust_lv varchar(16) NULL, -- �����ȼ�
	b_empl_coefficient numeric(2,1) NULL, -- ����ϵ��
	b_dept_coefficient numeric(2,1) NULL, -- ����ϵ��
	b_bpi_perf_res varchar(120) NULL, -- BPI��Ŀ���˽��
	b_bpi_fin_perf_res varchar(120) NULL, -- BPI���տ��˽��
	b_comment varchar(4000) NULL, -- ��ע
	b_data_source varchar(16) NULL, -- ������Դ
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
COMMENT ON TABLE dw.td_hr_performance_results IS '���£���Ч���';

-- Column comments

COMMENT ON COLUMN dw.td_hr_performance_results.emplid IS 'Ա�� ID';
COMMENT ON COLUMN dw.td_hr_performance_results.empl_rcd IS 'Ա����¼';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_id IS '���˷���ID';
COMMENT ON COLUMN dw.td_hr_performance_results.d_asses_type IS '��������';
COMMENT ON COLUMN dw.td_hr_performance_results.d_ep_period_id IS '��������ID';
COMMENT ON COLUMN dw.td_hr_performance_results.rating_model IS '�ȼ�ģ��';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_gr IS '���˷���';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_gr_vsb IS '��Ա���ɼ�';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_comment IS '��������';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_comment_vsb IS '��Ա���ɼ�';
COMMENT ON COLUMN dw.td_hr_performance_results.b_perf_lv IS '���˵ȼ�';
COMMENT ON COLUMN dw.td_hr_performance_results.b_adjust_lv IS '�����ȼ�';
COMMENT ON COLUMN dw.td_hr_performance_results.b_empl_coefficient IS '����ϵ��';
COMMENT ON COLUMN dw.td_hr_performance_results.b_dept_coefficient IS '����ϵ��';
COMMENT ON COLUMN dw.td_hr_performance_results.b_bpi_perf_res IS 'BPI��Ŀ���˽��';
COMMENT ON COLUMN dw.td_hr_performance_results.b_bpi_fin_perf_res IS 'BPI���տ��˽��';
COMMENT ON COLUMN dw.td_hr_performance_results.b_comment IS '��ע';
COMMENT ON COLUMN dw.td_hr_performance_results.b_data_source IS '������Դ';

-- Permissions

ALTER TABLE dw.td_hr_performance_results OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_performance_results TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_hr_performance_results TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_hr_performance_results TO gr_uqry_data;
