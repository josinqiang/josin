CREATE OR REPLACE FUNCTION dw.array_position_user(v1 anyarray,v2 anyelement)
	RETURNS int4
	LANGUAGE plpgsql
	VOLATILE
AS $$
	
DECLARE
	position int;
BEGIN
    select t1.s into position
	from (
		select v1,generate_subscripts(v1,1) as s
	)t1 
	where t1.v1[s] = v2;
    RETURN position;
END;

$$
EXECUTE ON ANY;

-- Permissions

ALTER FUNCTION dw.array_position_user(anyarray,anyelement) OWNER TO gpadmin;
GRANT ALL ON FUNCTION dw.array_position_user(anyarray,anyelement) TO gpadmin;
