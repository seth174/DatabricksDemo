-- Databricks notebook source
create table if not exists smartphones
(id int, name STRING, brand STRING, year INT)



-- COMMAND ----------

--Insert 10 rows into smartphones table
insert into smartphones
values 
    (1, 'Galaxy S21', 'Samsung', 2021),
    (2, 'iPhone 12', 'Apple', 2020),
    (3, 'Pixel 5', 'Google', 2020),
    (4, 'OnePlus 9 Pro', 'OnePlus', 2021),
    (5, 'Mi 11', 'Xiaomi', 2021),
    (6, 'ROG Phone 5', 'Asus', 2021),
    (7, 'Mate 40 Pro', 'Huawei', 2020),
    (8, 'LG V60 ThinQ', 'LG', 2020),
    (9, 'Zenfone 8', 'Asus', 2021),
    (10, 'Galaxy Z Fold 2', 'Samsung', 2020);


-- COMMAND ----------

show tables

-- COMMAND ----------

CREATE view view_apple_phones
as select * from smartphones where brand = 'Apple'

-- COMMAND ----------

select * from view_apple_phones

-- COMMAND ----------

show tables

-- COMMAND ----------

create temp view temp_view_phones_brands
as select distinct brand from smartphones

-- COMMAND ----------

select * from temp_view_phones_brands

-- COMMAND ----------

show tables

-- COMMAND ----------

create global temp view global_temp_view_latest_phones
as select * from smartphones where year > '2020'

-- COMMAND ----------

select * from global_temp.global_temp_view_latest_phones

-- COMMAND ----------

show tables

-- COMMAND ----------

show tables in global_temp
