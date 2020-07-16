-- DROP SEQUENCE dw.td_hr_emp_doc_id_seq;

CREATE SEQUENCE dw.td_hr_emp_doc_id_seq
	NO MINVALUE
	NO MAXVALUE

-- Permissions

ALTER SEQUENCE dw.td_hr_emp_doc_id_seq OWNER TO gpadmin;
GRANT ALL ON SEQUENCE dw.td_hr_emp_doc_id_seq TO gpadmin;
