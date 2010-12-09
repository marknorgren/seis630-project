/*==============================================================*/
/* Database name:  PROJECT1_PDM_REV3                            */
/* DBMS name:      ORACLE Version 8i2 (8.1.6)                   */
/* Created on:     10/6/2010 5:14:45 PM                         */
/* GROUP# 7 -Faisal Ahmed, Mohammad Rahman, Mark Norgren        */
/*==============================================================*/


drop index CONTAINS2_FK
/


drop index CONTAINS_FK
/


drop index DERIVES2_FK
/


drop index DERIVES_FK
/


drop index IS_IN2_FK
/


drop index IS_IN_FK
/


drop index IS_USED_BY2_FK
/


drop index IS_USED_BY_FK
/


drop index RELATES2_FK
/


drop index RELATES_FK
/


drop index SUPER_FK
/


drop index SUB2_FK
/


drop index SUB_FK
/


drop table RELATES cascade constraints
/


drop table IS_USED_BY cascade constraints
/


drop table CONTAINS cascade constraints
/


drop table SUB cascade constraints
/


drop table SPECIALIZATION cascade constraints
/


drop table REL_TYPE cascade constraints
/


drop table IS_IN cascade constraints
/


drop table ENTITY_TYPE cascade constraints
/


drop table DERIVES cascade constraints
/


drop table ATTR_TYPE cascade constraints
/


/*==============================================================*/
/* Table : ATTR_TYPE                                            */
/*==============================================================*/


create table ATTR_TYPE  (
   ANAME                CHAR(15)                         not null,
   constraint PK_ATTR_TYPE primary key (ANAME)
)
/


/*==============================================================*/
/* Table : DERIVES                                              */
/*==============================================================*/


create table DERIVES  (
   ANAME                CHAR(15)                         not null,
   ATT_ANAME            CHAR(15)                         not null,
   DV_DATATYPE          CHAR(15)                         not null,
   DV_DOMAIN            CHAR(20),
   DV_LENGTH            INTEGER,
   DV_PRECISION         INTEGER,
   DV_SCALE             INTEGER,
   constraint PK_DERIVES primary key (ANAME, ATT_ANAME),
   constraint FK_DERIVES_DERIVES_ATTR_TYP foreign key (ANAME)
         references ATTR_TYPE (ANAME),
   constraint FK_DERIVES_DERIVES2_ATTR_TYP foreign key (ATT_ANAME)
         references ATTR_TYPE (ANAME)
)
/


/*==============================================================*/
/* Index: DERIVES_FK                                            */
/*==============================================================*/
create index DERIVES_FK on DERIVES (
   ANAME ASC
)
/


/*==============================================================*/
/* Index: DERIVES2_FK                                           */
/*==============================================================*/
create index DERIVES2_FK on DERIVES (
   ATT_ANAME ASC
)
/


/*==============================================================*/
/* Table : ENTITY_TYPE                                          */
/*==============================================================*/


create table ENTITY_TYPE  (
   ENAME                CHAR(15)                         not null,
   constraint PK_ENTITY_TYPE primary key (ENAME)
)
/


/*==============================================================*/
/* Table : IS_IN                                                */
/*==============================================================*/


create table IS_IN  (
   ANAME                CHAR(15)                         not null,
   ATT_ANAME            CHAR(15)                         not null,
   II_DATATYPE          CHAR(15)                         not null,
   II_DOMAIN            CHAR(20),
   II_LENGTH            INTEGER,
   II_PRECISION         INTEGER,
   II_SCALE             INTEGER,
   constraint PK_IS_IN primary key (ANAME, ATT_ANAME),
   constraint FK_IS_IN_IS_IN_ATTR_TYP foreign key (ANAME)
         references ATTR_TYPE (ANAME),
   constraint FK_IS_IN_IS_IN2_ATTR_TYP foreign key (ATT_ANAME)
         references ATTR_TYPE (ANAME)
)
/


/*==============================================================*/
/* Index: IS_IN_FK                                              */
/*==============================================================*/
create index IS_IN_FK on IS_IN (
   ANAME ASC
)
/


/*==============================================================*/
/* Index: IS_IN2_FK                                             */
/*==============================================================*/
create index IS_IN2_FK on IS_IN (
   ATT_ANAME ASC
)
/


/*==============================================================*/
/* Table : REL_TYPE                                             */
/*==============================================================*/


create table REL_TYPE  (
   RNAME                CHAR(15)                         not null,
   RTYPE                CHAR(10),
   constraint PK_REL_TYPE primary key (RNAME)
)
/


/*==============================================================*/
/* Table : SPECIALIZATION                                       */
/*==============================================================*/


create table SPECIALIZATION  (
   SNAME                CHAR(15)                         not null,
   ENAME                CHAR(15)                         not null,
   STOTAL               CHAR(1),
   SOVERLAPPING         CHAR(1),
   constraint PK_SPECIALIZATION primary key (SNAME),
   constraint FK_SPECIALI_SUPER_ENTITY_T foreign key (ENAME)
         references ENTITY_TYPE (ENAME)
)
/


/*==============================================================*/
/* Index: SUPER_FK                                              */
/*==============================================================*/
create index SUPER_FK on SPECIALIZATION (
   ENAME ASC
)
/


/*==============================================================*/
/* Table : SUB                                                  */
/*==============================================================*/


create table SUB  (
   ENAME                CHAR(15)                         not null,
   SNAME                CHAR(15)                         not null,
   constraint PK_SUB primary key (ENAME, SNAME),
   constraint FK_SUB_SUB_ENTITY_T foreign key (ENAME)
         references ENTITY_TYPE (ENAME),
   constraint FK_SUB_SUB2_SPECIALI foreign key (SNAME)
         references SPECIALIZATION (SNAME)
)
/


/*==============================================================*/
/* Index: SUB_FK                                                */
/*==============================================================*/
create index SUB_FK on SUB (
   ENAME ASC
)
/


/*==============================================================*/
/* Index: SUB2_FK                                               */
/*==============================================================*/
create index SUB2_FK on SUB (
   SNAME ASC
)
/


/*==============================================================*/
/* Table : CONTAINS                                             */
/*==============================================================*/


create table CONTAINS  (
   ANAME                CHAR(15)                         not null,
   ENAME                CHAR(15)                         not null,
   CN_DATATYPE          CHAR(15)                         not null,
   CN_DOMAIN            CHAR(20),
   CN_IS_KEY            CHAR(1),
   CN_KEYTYPE           CHAR(10),
   CN_LENGTH            INTEGER,
   CN_PRECISION         INTEGER,
   CN_SCALE             INTEGER,
   CN_MULTIVALUE        CHAR(1),
   constraint PK_CONTAINS primary key (ANAME, ENAME),
   constraint FK_CONTAINS_CONTAINS_ATTR_TYP foreign key (ANAME)
         references ATTR_TYPE (ANAME),
   constraint FK_CONTAINS_CONTAINS2_ENTITY_T foreign key (ENAME)
         references ENTITY_TYPE (ENAME)
)
/


/*==============================================================*/
/* Index: CONTAINS_FK                                           */
/*==============================================================*/
create index CONTAINS_FK on CONTAINS (
   ANAME ASC
)
/


/*==============================================================*/
/* Index: CONTAINS2_FK                                          */
/*==============================================================*/
create index CONTAINS2_FK on CONTAINS (
   ENAME ASC
)
/


/*==============================================================*/
/* Table : IS_USED_BY                                           */
/*==============================================================*/


create table IS_USED_BY  (
   RNAME                CHAR(15)                         not null,
   ANAME                CHAR(15)                         not null,
   IU_DATATYPE          CHAR(15)                         not null,
   IU_DOMAIN            CHAR(20),
   IU_LENGTH            INTEGER,
   IU_PRECISION         INTEGER,
   IU_SCALE             INTEGER,
   IU_MULTIVALUE        CHAR(1),
   constraint PK_IS_USED_BY primary key (RNAME, ANAME),
   constraint FK_IS_USED__IS_USED_B_REL_TYPE foreign key (RNAME)
         references REL_TYPE (RNAME),
   constraint FK_IS_USED__IS_USED_B_ATTR_TYP foreign key (ANAME)
         references ATTR_TYPE (ANAME)
)
/


/*==============================================================*/
/* Index: IS_USED_BY_FK                                         */
/*==============================================================*/
create index IS_USED_BY_FK on IS_USED_BY (
   RNAME ASC
)
/


/*==============================================================*/
/* Index: IS_USED_BY2_FK                                        */
/*==============================================================*/
create index IS_USED_BY2_FK on IS_USED_BY (
   ANAME ASC
)
/


/*==============================================================*/
/* Table : RELATES                                              */
/*==============================================================*/


create table RELATES  (
   ENAME                CHAR(15)                         not null,
   RNAME                CHAR(15)                         not null,
   RL_ROLE              CHAR(15)                         not null,
   RL_CARD              CHAR(1),
   RL_MIN_CARD          CHAR(2),
   RL_MAX_CARD          CHAR(2),
   constraint PK_RELATES primary key (ENAME, RNAME,RL_ROLE),
   constraint FK_RELATES_RELATES_ENTITY_T foreign key (ENAME)
         references ENTITY_TYPE (ENAME),
   constraint FK_RELATES_RELATES2_REL_TYPE foreign key (RNAME)
         references REL_TYPE (RNAME)
)
/


/*==============================================================*/
/* Index: RELATES_FK                                            */
/*==============================================================*/
create index RELATES_FK on RELATES (
   ENAME ASC
)
/


/*==============================================================*/
/* Index: RELATES2_FK                                           */
/*==============================================================*/
create index RELATES2_FK on RELATES (
   RNAME ASC
)
/


