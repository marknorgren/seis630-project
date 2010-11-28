spool Team7_project01_data.txt
set echo on;
set linesize 175;
set pagesize 175;

--
--Team 7
--Delete from Is_used_by;
--Delete from contains;
--Delete from derives;
--Delete from is_in;
--Delete from sub;
--Delete from specialization;
--Delete from relates;
--Delete from rel_type;
--Delete from attr_type;
--Delete from Entity_type;

--print Entity_type
DESC ENTITY_TYPE;
SELECT * from ENTITY_TYPE;

--print Attr_type
DESC Attr_type;
SELECT * from Attr_type;

--print Rel_type;
DESC Rel_type;
SELECT * from Rel_type;
--print relates;
DESC relates;
SELECT * from relates;
--print specialization
DESC specialization;
SELECT * from specialization;
--print sub 
DESC sub;
SELECT * from sub;
--print in_in,which partains to composit and composed attributes
DESC Is_in;
SELECT * from Is_in;
-- prints derives table partains to derived attributes from another attribute
DESC derives;
SELECT * from derives;
--Print Contains table, entity contains attributes
DESC contains;
SELECT * from contains;

--is used by
DESC Is_Used_By;
SELECT * from Is_used_by;

spool off;