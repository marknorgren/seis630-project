--  Faisal 
--  Derives
--  Relationship_Type
--  Sub
--  IS_USED_BY
Insert into ENTITY_TYPE values('Person');
Insert into ENTITY_TYPE values('Student');
Insert into ENTITY_TYPE values('Faculty');
Insert into ENTITY_TYPE values('Grad_student');
Insert into ENTITY_TYPE values('Grant');
Insert into ENTITY_TYPE values('UG_student');
Insert into ENTITY_TYPE values('Section');
Insert into ENTITY_TYPE values('Room');
Insert into ENTITY_TYPE values('Course');
Insert into ENTITY_TYPE values('Department');
Insert into ENTITY_TYPE values('College');

Insert into ATTR_TYPE values('SSN');
Insert into ATTR_TYPE values('Name');
Insert into ATTR_TYPE values('Fname');
Insert into ATTR_TYPE values('Minit');
Insert into ATTR_TYPE values('Lname');
Insert into ATTR_TYPE values('Age');
Insert into ATTR_TYPE values('DOB');
Insert into ATTR_TYPE values('Street');
Insert into ATTR_TYPE values('City');
Insert into ATTR_TYPE values('State');
Insert into ATTR_TYPE values('Zip');
Insert into ATTR_TYPE values('Salary');
Insert into ATTR_TYPE values('Is_tenured');
Insert into ATTR_TYPE values('Degree');
Insert into ATTR_TYPE values('Date');
Insert into ATTR_TYPE values('Grade');
Insert into ATTR_TYPE values('Title');
Insert into ATTR_TYPE values('Amt');
Insert into ATTR_TYPE values('Sec#');
Insert into ATTR_TYPE values('RM#');
Insert into ATTR_TYPE values('C#');
Insert into ATTR_TYPE values('CName');
Insert into ATTR_TYPE values('Dname');
Insert into ATTR_TYPE values('No_of_Faculty');

--Derives
Insert into DERIVES(ANAME, ATT_ANAME,DV_DATATYPE,DV_DOMAIN, DV_LENGTH, DV_PRECISION, DV_SCALE) values('age','DOB','DATE',null,3,3,0);
 
 --Relationship type
insert into REL_TYPE(RNAME, RTYPE) values('Advices','Ternary');
insert into REL_TYPE(RNAME, RTYPE) values('registers_for','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('TAs','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Owns','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has','binary');
insert into REL_TYPE(RNAME, RTYPE) values('Is_held_in','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has_dorm','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Offers','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Works_in','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Chairs','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Teaches','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Is_within','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Consists','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has_dean','Binary');
--sub
insert into SUB(ENAME, SNAME) values ('Person','Faculty');
insert into SUB(ENAME, SNAME) values ('Person','Student');
insert into SUB(ENAME, SNAME) values ('Student','Grad_student');
insert into SUB(ENAME, SNAME) values ('Student','UG_student');


--super
Insert into SPECIALIZATION(SNAME, ENAME, STOTAL, SOVERLAPPING) values ('Person','Faculty','T','O');
Insert into SPECIALIZATION(SNAME, ENAME, STOTAL, SOVERLAPPING) values ('Studet','Grad_Student','T','D');
Insert into SPECIALIZATION(SNAME, ENAME, STOTAL, SOVERLAPPING) values ('Studet','UG_Student','T','D');





--------------------------------------------------------------------------------

--IS_IN
Insert into
IS_IN(ANAME, ATT_ANAME,II_DATA_TYPE,II_DOMAIN,II_LENGTH,II_PRECISION,II_SCALE) 
values('FNAME', 'NAME', 'char(10)', 'short_text', 10, null, null);

Insert into 
IS_IN(ANAME, ATT_ANAME,II_DATA_TYPE,II_DOMAIN,II_LENGTH,II_PRECISION,II_SCALE) 
values('MINIT', 'NAME', 'char(1)', null, 1, null, null);

Insert into 
IS_IN(ANAME, ATT_ANAME,II_DATA_TYPE,II_DOMAIN,II_LENGTH,II_PRECISION,II_SCALE) 
values('LNAME', 'NAME', 'char(10)', 'short_text', 10, null, null);




--Specialization
Insert into Specialization(SNAME, ENAME, STOTAL, SOVERLAPPING) 

values('Person', 'Faculty', false, true);

Insert into Specialization(SNAME, ENAME, STOTAL, SOVERLAPPING)
    values('Person', 'Student', false, true);
Insert into Specialization(SNAME, ENAME, STOTAL, SOVERLAPPING)
    values('Student', 'Grad_Student', false, true);
Insert into Specialization(SNAME, ENAME, STOTAL, SOVERLAPPING)
    values('Student', 'UG_Student', false, true);



Insert into ENTITY_TYPE values('Person');
Insert into ENTITY_TYPE values('Student');
Insert into ENTITY_TYPE values('Faculty');
Insert into ENTITY_TYPE values('Grad_student');
Insert into ENTITY_TYPE values('Grant');
Insert into ENTITY_TYPE values('UG_student');
Insert into ENTITY_TYPE values('Section');
Insert into ENTITY_TYPE values('Room');
Insert into ENTITY_TYPE values('Course');
Insert into ENTITY_TYPE values('Department');
Insert into ENTITY_TYPE values('College');

Insert into ATTR_TYPE values('SSN');
Insert into ATTR_TYPE values('Name');
Insert into ATTR_TYPE values('Fname');
Insert into ATTR_TYPE values('Minit');
Insert into ATTR_TYPE values('Lname');
Insert into ATTR_TYPE values('Age');
Insert into ATTR_TYPE values('DOB');
Insert into ATTR_TYPE values('Street');
Insert into ATTR_TYPE values('City');
Insert into ATTR_TYPE values('State');
Insert into ATTR_TYPE values('Zip');
Insert into ATTR_TYPE values('Salary');
Insert into ATTR_TYPE values('Is_tenured');
Insert into ATTR_TYPE values('Degree');
Insert into ATTR_TYPE values('Date');
Insert into ATTR_TYPE values('Grade');
Insert into ATTR_TYPE values('Title');
Insert into ATTR_TYPE values('Amt');
Insert into ATTR_TYPE values('Sec#');
Insert into ATTR_TYPE values('RM#');
Insert into ATTR_TYPE values('C#');
Insert into ATTR_TYPE values('CName');
Insert into ATTR_TYPE values('Dname');
Insert into ATTR_TYPE values('No_of_Faculty');


--CONTAINS - PERSON
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE) 
     values('SSN','Person', 'int', 'num', 'y', 'PK', 15, null, null,null);

Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Age','Person', 'int', 'num', 'n', null, 15, null, null,null);

Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('DOB','Person', 'date', 'num', 'n', null, 15, null, null,null); --what should date length be?
	
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('DOB','Person', 'date', 'num', 'n', null, 15, null, null,null);

Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Street','Person', 'char(10)', 'short_text', 'n', null, 10, null, null,null);
	
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Street','Person', 'char(10)', 'short_text', 'n', null, 10, null, null,null);

Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('City','Person', 'char(10)', 'short_text', 'n', null, 10, null, null,null);

Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('State','Person', 'char(2)', 'null', 'n', null, 2, null, null,null);

Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Zip','Person', 'char(2)', 'null', 'n', null, 2, null, null,null);
	
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Zip','Person', 'char(2)', 'null', 'n', null, 2, null, null,null);
	
--CONTAINS - Student
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Degree','Student', 'char(3)', 'null', 'n', null, 3, null, null,'y');

--CONTAINs - Faculty
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Salary','Faculty', 'decimal(10,2)', 'null', 'n', null, 10, 2, null, null);
	
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Is_tenured','Faculty', 'boolean', 'null', 'n', null, 1, null, null, null);
	
--CONTAINS - Grant
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Date','Grant', 'Date', 'null', 'n', null, 15, null, null, null);  --what should date length be?

Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	values('Title','Grant', 'Text', 'varchar(27)', 'y', 'Text', 27, null, null, null);	
	
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
	         values('Title','Amt', 'Amount'  ,'decimal(20,2)', 'n', 'Text'      , 20        , 2           , null    , null);	

	




Insert into IS_IN values('Person','SSN','number(9)'

--Derives
Insert into DERIVES(ANAME, ATT_ANAME,DV_DATATYPE,DV_DOMAIN, DV_LENGTH, DV_PRECISION, DV_SCALE) values('age','DOB','DATE',null,3,3,0);

--Relationship type
insert into REL_TYPE(RNAME, RTYPE) values('Advices','Ternary');
insert into REL_TYPE(RNAME, RTYPE) values('registers_for','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('TAs','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Owns','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has','binary');
insert into REL_TYPE(RNAME, RTYPE) values('Is_held_in','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has_dorm','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Offers','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Works_in','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Chairs','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Teaches','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Is_within','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Consists','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has_dean','Binary');

--sub
insert into SUB(ENAME, SNAME) values ('Person','Faculty');
insert into SUB(ENAME, SNAME) values ('Person','Student');
insert into SUB(ENAME, SNAME) values ('Student','Grad_student');
insert into SUB(ENAME, SNAME) values ('Student','UG_student');


Insert into IS_USED_BY(RNAME,ANAME,IU_DATATYPE, IU_DOMAIN, IU_LENGTH, IU_PRECISION, IU_SCALE, IU_MULTIVALUE)
values('Works_in','No_of_Faculty','int','num',13,13,0,null);



