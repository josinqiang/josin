-- Drop table

-- DROP TABLE dw.td_hr_emp_doc;

CREATE TABLE dw.td_hr_emp_doc (
	id serial NOT NULL,
	emplid varchar(44) NULL,
	empl_rcd numeric NULL,
	effdt date NULL,
	effseq numeric NULL,
	deptid varchar(40) NULL,
	position_nbr varchar(120) NULL,
	job_function varchar(12) NULL,
	hr_status varchar(4) NULL,
	hr_action varchar(12) NULL,
	action_dt date NULL,
	action_reason varchar(12) NULL,
	dept_entry_dt date NULL,
	dept_out_dt date NULL,
	position_entry_dt date NULL,
	job_entry_dt date NULL,
	b_payp_id varchar(120) NULL,
	b_workplace_id varchar(120) NULL,
	b_band_id varchar(40) NULL,
	last_hire_dt date NULL,
	resignation_date date NULL,
	transaction_type varchar(128) NULL,
	effective_date date NULL,
	expiration_date date NULL,
	current_indicator varchar(8) NULL
)
DISTRIBUTED RANDOMLY;

-- Permissions

ALTER TABLE dw.td_hr_emp_doc OWNER TO gpadmin;
GRANT ALL ON TABLE dw.td_hr_emp_doc TO gpadmin;
