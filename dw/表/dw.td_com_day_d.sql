-- Drop table

-- DROP TABLE dw.td_com_day_d;

CREATE TABLE dw.td_com_day_d (
	day_wid int8 NOT NULL, -- ��������
	day_name varchar(120) NULL, -- ���ڸ�ʽ1
	day_date date NULL, -- ���ڸ�ʽ2
	day_desc varchar(120) NULL, -- ���ڸ�ʽ3
	day_in_month varchar(120) NULL, -- ���µڼ���
	last_day_in_month bpchar(1) NOT NULL, -- �������һ��
	day_in_week bpchar(1) NULL, -- ���ܵڼ���
	day_in_week_zh_desc varchar(120) NULL, -- һ�ܵڼ���_����
	day_in_week_en_s_desc varchar(120) NULL, -- һ�ܵڼ���_Ӣ�ļ��
	day_in_week_en_desc varchar(120) NULL, -- һ�ܵڼ���_Ӣ��ȫ��
	week_in_month bpchar(1) NULL, -- ���µڼ���
	decade_in_month int8 NULL,
	decade_name varchar(120) NULL,
	decade_desc varchar(120) NULL,
	week_wid int8 NULL,
	week_name varchar(120) NULL,
	week_desc varchar(120) NULL,
	week_in_year int8 NULL,
	first_day_of_week date NULL, -- ���ܵ�һ��_����
	last_day_of_week date NULL, -- �������һ��_����
	month_wid int8 NULL, -- ������
	month_name varchar(120) NULL, -- �·�_����
	month_shot_name varchar(120) NULL, -- �·ݼ��
	month_desc varchar(120) NULL, -- �·�����
	month_in_year int8 NULL, -- ����ڼ���
	month_number int8 NULL, -- �·�_����
	first_day_of_month date NULL, -- ���µ�һ��
	last_day_of_month date NULL, -- �������һ��
	quarter_wid int8 NULL, -- ��������
	quarter_name varchar(120) NULL, -- ��������
	quarter_desc varchar(120) NULL, -- ��������
	quarter_in_year int8 NULL, -- ���µڼ���
	first_day_of_quarter date NULL, -- �����ȵ�һ��
	last_day_of_quarter date NULL, -- ���������һ��
	half_year_wid int8 NULL, -- �ϰ�������
	half_year_name varchar(120) NULL, -- �ϰ�������
	half_year_desc varchar(120) NULL, -- �ϰ�������
	half_in_year int8 NULL, -- �ϰ����ʶ
	year_wid int8 NULL, -- �������
	year_name varchar(120) NULL, -- �������
	year_desc varchar(120) NULL, -- �������
	first_day_of_year date NULL, -- �����һ��
	last_day_of_year date NULL, -- �������һ��
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
COMMENT ON TABLE dw.td_com_day_d IS '���ڹ���ά�ȱ�';

-- Column comments

COMMENT ON COLUMN dw.td_com_day_d.day_wid IS '��������';
COMMENT ON COLUMN dw.td_com_day_d.day_name IS '���ڸ�ʽ1';
COMMENT ON COLUMN dw.td_com_day_d.day_date IS '���ڸ�ʽ2';
COMMENT ON COLUMN dw.td_com_day_d.day_desc IS '���ڸ�ʽ3';
COMMENT ON COLUMN dw.td_com_day_d.day_in_month IS '���µڼ���';
COMMENT ON COLUMN dw.td_com_day_d.last_day_in_month IS '�������һ��';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week IS '���ܵڼ���';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week_zh_desc IS 'һ�ܵڼ���_����';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week_en_s_desc IS 'һ�ܵڼ���_Ӣ�ļ��';
COMMENT ON COLUMN dw.td_com_day_d.day_in_week_en_desc IS 'һ�ܵڼ���_Ӣ��ȫ��';
COMMENT ON COLUMN dw.td_com_day_d.week_in_month IS '���µڼ���';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_week IS '���ܵ�һ��_����';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_week IS '�������һ��_����';
COMMENT ON COLUMN dw.td_com_day_d.month_wid IS '������';
COMMENT ON COLUMN dw.td_com_day_d.month_name IS '�·�_����';
COMMENT ON COLUMN dw.td_com_day_d.month_shot_name IS '�·ݼ��';
COMMENT ON COLUMN dw.td_com_day_d.month_desc IS '�·�����';
COMMENT ON COLUMN dw.td_com_day_d.month_in_year IS '����ڼ���';
COMMENT ON COLUMN dw.td_com_day_d.month_number IS '�·�_����';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_month IS '���µ�һ��';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_month IS '�������һ��';
COMMENT ON COLUMN dw.td_com_day_d.quarter_wid IS '��������';
COMMENT ON COLUMN dw.td_com_day_d.quarter_name IS '��������';
COMMENT ON COLUMN dw.td_com_day_d.quarter_desc IS '��������';
COMMENT ON COLUMN dw.td_com_day_d.quarter_in_year IS '���µڼ���';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_quarter IS '�����ȵ�һ��';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_quarter IS '���������һ��';
COMMENT ON COLUMN dw.td_com_day_d.half_year_wid IS '�ϰ�������';
COMMENT ON COLUMN dw.td_com_day_d.half_year_name IS '�ϰ�������';
COMMENT ON COLUMN dw.td_com_day_d.half_year_desc IS '�ϰ�������';
COMMENT ON COLUMN dw.td_com_day_d.half_in_year IS '�ϰ����ʶ';
COMMENT ON COLUMN dw.td_com_day_d.year_wid IS '�������';
COMMENT ON COLUMN dw.td_com_day_d.year_name IS '�������';
COMMENT ON COLUMN dw.td_com_day_d.year_desc IS '�������';
COMMENT ON COLUMN dw.td_com_day_d.first_day_of_year IS '�����һ��';
COMMENT ON COLUMN dw.td_com_day_d.last_day_of_year IS '�������һ��';

-- Permissions

ALTER TABLE dw.td_com_day_d OWNER TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_day_d TO ur_uown_edw;
GRANT ALL ON TABLE dw.td_com_day_d TO gr_uapp_data;
GRANT SELECT ON TABLE dw.td_com_day_d TO gr_uqry_data;
