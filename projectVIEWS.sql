--Project Views
--SEIS630
--
--Team 7
--Faisal Ahmed
--Mark Norgren
--Mohammad Rahman


--1. This view returns the name of every entity and for that the name of every 
--attribute the entity contains and the data type for that attribute for 
--all entities that have at least 3 attributes.
CREATE VIEW entity_3_Att (Ename, Aname, Adata_type)
AS
SELECT e.ename, cn.aname, cn.cn_datatype
from Contains cn, entity_type e
where lower(e.ename)=lower(cn.ename)
and  exists (
                select count(distinct aname) 
                from contains
                having count(aname)>2
                );

--2. This view returns the name of every relationship and the name of every 
--attribute of the relationship for those relationships that have one or more 
--attribute with the data type Date

CREATE VIEW Rel_Att_Date(Rname ,Aname)
as
SELECT r.RNAME, a.ANAME
from rel_type r, attr_type a, IS_USED_BY ub
WHERE 
        lower(r.rname)=lower(ub.IU_rname)
    and lower(a.aname)=lower(ub.IU_aname)
    and lower(ub.IU_datatype)='date';
 
    
--3.	Rel_Ent_M: This view returns the name of each relationship and the names 
--of all entities it connects for those relationships that have (at least) one 
--cardinality of M.    

CREATE VIEW Rel_Ent_M(Rname, Ename)
as
Select RL_RNAME, RL_ENAME
FROM  Relates
WHERE lower(RL_card)='m';




--4.	AttDatatype_Domain: This view returns the name of each attribute and the 
--data type it has only for those attributes that also have a domain.
	
CREATE VIEW AttDatatype_Domain(AttrName, AttrType)
as
SELECT a.aname, i.II_DATATYPE
from ATTR_TYPE a, IS_IN i
where 
 a.aname = i.aname AND
 i.II_DOMAIN != NULL
union 
SELECT aa.aname, DV.DV_DATATYPE
from ATTR_TYPE aa, Derives DV
where 
 aa.aname = DV.aname AND
 DV.DV_DOMAIN != NULL;



--5.	EntKey: This view prints the name of each entity, the attributes that form 
--a primary or candidate key for the entity, and key type.
CREATE VIEW EntKey(Ename, Aname,Key_Type)
as
SELECT CN_ename, CN_aname, CN_keytype
from  contains
where
      lower(CN_is_key)='1'   --1 is key, 0 is not a key
  and TRIM(lower(CN_keytype))=ANY('primary','candidate');
  