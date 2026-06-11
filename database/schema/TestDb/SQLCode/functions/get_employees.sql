CREATE OR REPLACE FUNCTION testdb.get_employees()
RETURNS TABLE (
    empid BIGINT,
    empname VARCHAR,
    age INT,
    contactno VARCHAR,
    phone VARCHAR,
    email VARCHAR,
    department VARCHAR,
    created_at TIMESTAMP
)
AS $$
BEGIN
    RETURN QUERY
    SELECT
        e.empid,
        e.empname,
        e.age,
        e.contactno,
        e.phone,
        e.email,
        e.department,
        e.created_at
    FROM testdb.employee e;
END;
$$
LANGUAGE plpgsql;