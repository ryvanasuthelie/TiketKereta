--------------------------------------------------------
--  File created - Wednesday-July-01-2020   
--------------------------------------------------------
DROP SEQUENCE "RYVANA_07014"."ID_KERETA";
DROP SEQUENCE "RYVANA_07014"."ID_PEMBELI";
DROP SEQUENCE "RYVANA_07014"."ID_RUTE";
DROP SEQUENCE "RYVANA_07014"."ID_TIKET";
DROP TABLE "RYVANA_07014"."KERETA" cascade constraints;
DROP TABLE "RYVANA_07014"."PEMBELI" cascade constraints;
DROP TABLE "RYVANA_07014"."RUTE" cascade constraints;
DROP TABLE "RYVANA_07014"."TIKET" cascade constraints;
--------------------------------------------------------
--  DDL for Sequence ID_KERETA
--------------------------------------------------------

   CREATE SEQUENCE  "RYVANA_07014"."ID_KERETA"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_PEMBELI
--------------------------------------------------------

   CREATE SEQUENCE  "RYVANA_07014"."ID_PEMBELI"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_RUTE
--------------------------------------------------------

   CREATE SEQUENCE  "RYVANA_07014"."ID_RUTE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_TIKET
--------------------------------------------------------

   CREATE SEQUENCE  "RYVANA_07014"."ID_TIKET"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table KERETA
--------------------------------------------------------

  CREATE TABLE "RYVANA_07014"."KERETA" 
   (	"ID_KERETA" NUMBER(*,0), 
	"NAMA_KERETA" VARCHAR2(150 BYTE), 
	"JADWAL" VARCHAR2(150 BYTE), 
	"NOMOR_KURSI" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PEMBELI
--------------------------------------------------------

  CREATE TABLE "RYVANA_07014"."PEMBELI" 
   (	"ID_PEMBELI" NUMBER(*,0), 
	"NAMA_PEMBELI" VARCHAR2(150 BYTE), 
	"TANGGAL_LAHIR" VARCHAR2(150 BYTE), 
	"EMAIL" VARCHAR2(150 BYTE), 
	"NO_TELP" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table RUTE
--------------------------------------------------------

  CREATE TABLE "RYVANA_07014"."RUTE" 
   (	"ID_RUTE" NUMBER(*,0), 
	"TUJUAN" VARCHAR2(150 BYTE), 
	"STASIUN_PERSINGGAHAN" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table TIKET
--------------------------------------------------------

  CREATE TABLE "RYVANA_07014"."TIKET" 
   (	"ID_TIKET" NUMBER(*,0), 
	"ID_KERETA" NUMBER(*,0), 
	"ID_RUTE" NUMBER(*,0), 
	"ID_PEMBELI" NUMBER(*,0), 
	"HARGA_TIKET" NUMBER(*,0), 
	"TANGGAL_KEBERANGKATAN" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into RYVANA_07014.KERETA
SET DEFINE OFF;
Insert into RYVANA_07014.KERETA (ID_KERETA,NAMA_KERETA,JADWAL,NOMOR_KURSI) values (1,'Purbo','17-07-2020',23);
commit;
REM INSERTING into RYVANA_07014.PEMBELI
SET DEFINE OFF;
Insert into RYVANA_07014.PEMBELI (ID_PEMBELI,NAMA_PEMBELI,TANGGAL_LAHIR,EMAIL,NO_TELP) values (1,'Pembeli','27-01-1997','email@gmail.com',1234567);
Insert into RYVANA_07014.PEMBELI (ID_PEMBELI,NAMA_PEMBELI,TANGGAL_LAHIR,EMAIL,NO_TELP) values (2,'sasa','ssas','sas',1212);
Insert into RYVANA_07014.PEMBELI (ID_PEMBELI,NAMA_PEMBELI,TANGGAL_LAHIR,EMAIL,NO_TELP) values (3,'sdsd','dsds','dsds',32323);
Insert into RYVANA_07014.PEMBELI (ID_PEMBELI,NAMA_PEMBELI,TANGGAL_LAHIR,EMAIL,NO_TELP) values (4,'dsds','ewwe','ewwew',2323);
Insert into RYVANA_07014.PEMBELI (ID_PEMBELI,NAMA_PEMBELI,TANGGAL_LAHIR,EMAIL,NO_TELP) values (5,'dsds','ewwe','ewwew',2323);
commit;
REM INSERTING into RYVANA_07014.RUTE
SET DEFINE OFF;
Insert into RYVANA_07014.RUTE (ID_RUTE,TUJUAN,STASIUN_PERSINGGAHAN) values (1,'Surabaya','Madiun');
commit;
REM INSERTING into RYVANA_07014.TIKET
SET DEFINE OFF;
Insert into RYVANA_07014.TIKET (ID_TIKET,ID_KERETA,ID_RUTE,ID_PEMBELI,HARGA_TIKET,TANGGAL_KEBERANGKATAN) values (1,1,1,4,323232,'ddsdsd');
Insert into RYVANA_07014.TIKET (ID_TIKET,ID_KERETA,ID_RUTE,ID_PEMBELI,HARGA_TIKET,TANGGAL_KEBERANGKATAN) values (2,1,1,5,32344,'eeeee');
commit;
--------------------------------------------------------
--  DDL for Index PK_KERETA
--------------------------------------------------------

  CREATE UNIQUE INDEX "RYVANA_07014"."PK_KERETA" ON "RYVANA_07014"."KERETA" ("ID_KERETA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PEMBELI
--------------------------------------------------------

  CREATE UNIQUE INDEX "RYVANA_07014"."PK_PEMBELI" ON "RYVANA_07014"."PEMBELI" ("ID_PEMBELI") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_TIKET
--------------------------------------------------------

  CREATE UNIQUE INDEX "RYVANA_07014"."PK_TIKET" ON "RYVANA_07014"."TIKET" ("ID_TIKET") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_RUTE
--------------------------------------------------------

  CREATE UNIQUE INDEX "RYVANA_07014"."PK_RUTE" ON "RYVANA_07014"."RUTE" ("ID_RUTE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table TIKET
--------------------------------------------------------

  ALTER TABLE "RYVANA_07014"."TIKET" ADD CONSTRAINT "PK_TIKET" PRIMARY KEY ("ID_TIKET")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RYVANA_07014"."TIKET" MODIFY ("ID_TIKET" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RUTE
--------------------------------------------------------

  ALTER TABLE "RYVANA_07014"."RUTE" ADD CONSTRAINT "PK_RUTE" PRIMARY KEY ("ID_RUTE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RYVANA_07014"."RUTE" MODIFY ("ID_RUTE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table KERETA
--------------------------------------------------------

  ALTER TABLE "RYVANA_07014"."KERETA" ADD CONSTRAINT "PK_KERETA" PRIMARY KEY ("ID_KERETA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RYVANA_07014"."KERETA" MODIFY ("ID_KERETA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PEMBELI
--------------------------------------------------------

  ALTER TABLE "RYVANA_07014"."PEMBELI" ADD CONSTRAINT "PK_PEMBELI" PRIMARY KEY ("ID_PEMBELI")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "RYVANA_07014"."PEMBELI" MODIFY ("ID_PEMBELI" NOT NULL ENABLE);
