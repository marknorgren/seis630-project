--Entity_type data
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
--ATTR_type data
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
Insert into ATTR_TYPE values('CLName');

--Relationship type
insert into REL_TYPE(RNAME, RTYPE) values('Advises','Ternary');
insert into REL_TYPE(RNAME, RTYPE) values('Registers_for','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('TA''s','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Owns','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has','binary');
insert into REL_TYPE(RNAME, RTYPE) values('Is_Held_In','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has_Dorm','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Offers','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Works_in','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Chairs','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Teaches','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Is_within','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Consists','Binary');
insert into REL_TYPE(RNAME, RTYPE) values('Has_Dean','Binary');

--Derives data
Insert into DERIVES(ANAME, ATT_ANAME,DV_DATATYPE,DV_DOMAIN, DV_LENGTH, DV_PRECISION, DV_SCALE) 
             values('Age','DOB','Num','Num',null,null,null);

--super
Insert into SPECIALIZATION(SNAME, ENAME, STOTAL, SOVERLAPPING) values ('ISA','Person',null,'1');
Insert into SPECIALIZATION(SNAME, ENAME, STOTAL, SOVERLAPPING) values ('Must_be','Student','1','0');

--sub
insert into SUB(ENAME, SNAME) values ('Faculty','ISA');
insert into SUB(ENAME, SNAME) values ('Student','ISA');
insert into SUB(ENAME, SNAME) values ('Grad_student','Must_be');
insert into SUB(ENAME, SNAME) values ('UG_student','Must_be');


--IS_IN
Insert into IS_IN(ANAME, ATT_ANAME,II_DATATYPE,II_DOMAIN,II_LENGTH,II_PRECISION,II_SCALE) 
           values('Fname', 'Name', 'char', 'short_text', 10, null, null);
Insert into IS_IN(ANAME, ATT_ANAME,II_DATATYPE,II_DOMAIN,II_LENGTH,II_PRECISION,II_SCALE) 
           values('Minit', 'Name', 'char', null, 1, null, null);
Insert into IS_IN(ANAME, ATT_ANAME,II_DATATYPE,II_DOMAIN,II_LENGTH,II_PRECISION,II_SCALE) 
           values('Lname', 'Name', 'char', 'short_text', 10, null, null);

--CONTAINS - PERSON
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE) 
              values('SSN','Person', 'Integer', 'num', 'y', 'PK', 9, null, null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
              values('Age','Person', 'Integer', 'num', 'n', null, null, null, null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
              values('DOB','Person', 'date', 'date', 'n', null, null, null, null,null); 
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('Name','Person', 'varchar',null, 'n', null, 21, null, null,'y');
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('Street','Person', 'char', 'short_text', 'n', null, 10, null, null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('City','Person', 'char', 'short_text', 'n', null, 10, null, null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('State','Person', 'char', 'null', 'n', null, 2, null, null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('Zip','Person', 'Integer', 'Num', 'n', null, 5, null, null,null);
--CONTAINS - Student
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
              values('Degree','Student', 'char', 'null', 'n', null, 3, null, null,'y');
--CONTAINs - Faculty
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('Salary','Faculty', 'decimal', 'null', 'n', null, 10, 10, 2, null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('Is_tenured','Faculty', 'boolean', 'null', 'n', null, null, null, null, null);
	--CONTAINS - Grant
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
              values('Date','Grant', 'Date', 'null', 'n', null, null, null, null, null); 
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN, CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
            	values('Title','Grant', 'Text', 'varchar', 'y', 'Text', 27, null, null, null);	
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('Amt','Grant', 'Integer','Num','n', null,20,20,2,null);	

--contains -section
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('Date','Section','Date',null,'n',null,null,null,null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('Sec#','Section','Integer','Num','y','PK',null,null,null,null);
--contains -room
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('RM#','Room','Integer','Num','y','PK',null,null,null,null);
--contains -course
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('C#','Course','Integer','Num','y','PK',4,null,null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('CName','Course','varchar','Short_Text','y','CK',10,null,null,null);
--Contains -department
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
              values('Dname','Department','char','Short_Text','y','PK',null,null,null,null);
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('No_of_Faculty','Department','Integer','Num','n',null,null,null,null,null);
--Contains -college
Insert into CONTAINS(ANAME, ENAME, CN_DATATYPE, CN_DOMAIN,  CN_IS_KEY, CN_KEYTYPE, CN_LENGTH, CN_PRECISION, CN_SCALE,CN_MULTIVALUE)
    	         values('CLName','College','carchar','Text','y','PK',27,null,null,null);
               
--Is_used_by -registers_for
Insert into IS_USED_BY(RNAME,ANAME,IU_DATATYPE, IU_DOMAIN, IU_LENGTH, IU_PRECISION, IU_SCALE, IU_MULTIVALUE)
                values('Registers_for','Date','Date',null,null,null,null,null);
Insert into IS_USED_BY(RNAME,ANAME,IU_DATATYPE, IU_DOMAIN, IU_LENGTH, IU_PRECISION, IU_SCALE, IU_MULTIVALUE)
                values('Registers_for','Grade','char','Grade',2,null,null,null);
--Is_used_by TAs
Insert into IS_USED_BY(RNAME,ANAME,IU_DATATYPE, IU_DOMAIN, IU_LENGTH, IU_PRECISION, IU_SCALE, IU_MULTIVALUE)
                values('TA''s','Salary','Decimal',null,10,10,2,null);


--Relates -Faculty
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Faculty','Works_in','Faculty','M',null, null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Faculty','Chairs','Faculty','1','1','1');
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Faculty','Teaches','Faculty','1',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Faculty','Owns','Faculty','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Faculty','Advises','Faculty','1',null,null);             
--Relates -Grant             
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Grant','Owns','Grant','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Grant','Advises','Grant','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Grant','Consists','CG','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Grant','Consists','PG','1',null,null);
--Relates Grad_student
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Grad_student','Advises','Grad_student','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Grad_student','TA''s','Grad_student','M','1','M');
--Relates UG_student
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('UG_student','Has_Dorm','UG_student','M',null,null);
--Relates -Student
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Student','Registers_for','Registers','M',null,null);
--Relates-Section
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Section','Registers_for','Section','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Section','Is_Held_In','Section','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Section', 'TA''s','Section','M',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Section','Has','Section','M', null, null);
--Relates -Room
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Room','Is_Held_In','Room','1',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Room','Has_Dorm','Room','1',null,null);
--Relates -Course
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Course','Has','Course','1',null,null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Course','Teaches','Course','M', null, null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Course','Offers','Course','M', null, null);
--Relates -Department
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Department', 'Offers','Department','M', null, null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Department','Is_within','Department','M', null, null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Department','Works_in','Department','1',null, null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Department','Chairs','Department','1', null, null);
--Relates -College
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('College','Is_within','College','1', null, null);
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('College','Has_Dean','College','1', null, null);
--Relates -Person
Insert into RELATES(ENAME, RNAME, RL_ROLE, RL_CARD, RL_MIN_CARD, RL_MAX_CARD)
             values('Person','Has_Dean','Person','1', null, null);
             

