CREATE TABLE tbsell (
  sellid VARCHAR(5)  NOT NULL  ,
  selldate DATE  NULL  ,
  total DECIMAL(8,2)  NULL    ,
PRIMARY KEY(sellid));



CREATE TABLE tbtype (
  typeid VARCHAR(2)  NOT NULL  ,
  typename VARCHAR(20)  NULL    ,
PRIMARY KEY(typeid));



CREATE TABLE tbcategory (
  catid VARCHAR(2)  NOT NULL  ,
  catname VARCHAR(20)  NULL    ,
PRIMARY KEY(catid));



CREATE TABLE tbproduct (
  itemid VARCHAR(2)  NOT NULL  ,
  tbtype_typeid VARCHAR(2)  NOT NULL  ,
  tbcategory_catid VARCHAR(2)  NOT NULL  ,
  itemname VARCHAR(30)  NULL  ,
  unitprice INTEGER UNSIGNED  NULL  ,
  picture VARCHAR(50)  NULL  ,
  detail VARCHAR(255)  NULL    ,
PRIMARY KEY(itemid)  ,
INDEX tbproduct_FKIndex1(tbcategory_catid)  ,
INDEX tbproduct_FKIndex2(tbtype_typeid),
  FOREIGN KEY(tbcategory_catid)
    REFERENCES tbcategory(catid)
      ON DELETE NO ACTION
      ON UPDATE CASCADE,
  FOREIGN KEY(tbtype_typeid)
    REFERENCES tbtype(typeid)
      ON DELETE NO ACTION
      ON UPDATE CASCADE);



CREATE TABLE tbselldetail (
  tbsell_sellid VARCHAR(5)  NOT NULL  ,
  tbproduct_itemid VARCHAR(2)  NOT NULL  ,
  unitprice INTEGER UNSIGNED  NULL  ,
  qty INTEGER UNSIGNED  NULL  ,
  sellstatus INTEGER(1) UNSIGNED  NULL  ,
  donum INTEGER(1) UNSIGNED  NULL    ,
PRIMARY KEY(tbsell_sellid, tbproduct_itemid)  ,
INDEX tbsell_has_tbproduct_FKIndex1(tbsell_sellid)  ,
INDEX tbsell_has_tbproduct_FKIndex2(tbproduct_itemid),
  FOREIGN KEY(tbsell_sellid)
    REFERENCES tbsell(sellid)
      ON DELETE NO ACTION
      ON UPDATE CASCADE,
  FOREIGN KEY(tbproduct_itemid)
    REFERENCES tbproduct(itemid)
      ON DELETE NO ACTION
      ON UPDATE CASCADE);




