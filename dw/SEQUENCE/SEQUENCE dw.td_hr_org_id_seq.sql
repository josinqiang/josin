-- DROP SEQUENCE dw.td_hr_org_id_seq;

CREATE SEQUENCE dw.td_hr_org_id_seq
	NO MINVALUE
	NO MAXVALUE

-- Permissions

ALTER SEQUENCE dw.td_hr_org_id_seq OWNER TO ur_uown_edw;
GRANT ALL ON SEQUENCE dw.td_hr_org_id_seq TO ur_uown_edw;
