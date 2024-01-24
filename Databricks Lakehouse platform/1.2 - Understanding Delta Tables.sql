-- Databricks notebook source
create table employees
(id INT, name STRING, salary DOUBLE)

-- COMMAND ----------


select * from employees

-- COMMAND ----------


insert into employees
values 
  (1, "seth", 1001),
  (2, "seth1", 1002),
  (3, "seth2", 1003),
  (4, "seth3", 1004),
  (5, "seth4", 1005),
  (6, "seth5", 1006)

-- COMMAND ----------

DESCRIBE DETAIL employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------



update employees
set name = 'Adam'
where id = 1;

update employees
set name = 'Bob'
where id = 2;

update employees
set name = 'Seth'
where id = 3;

update employees
set name = 'Alex'
where id = 4;

update employees
set name = 'John'
where id = 5;

update employees
set name = 'Jim'
where id = 6;

-- COMMAND ----------

update employees 
set salary = salary + 100
where name like 'A%'

-- COMMAND ----------

select * from employees

-- COMMAND ----------

Describe Detail employees

-- COMMAND ----------

Describe history employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees/_delta_log'

-- COMMAND ----------

-- MAGIC %fs head 'dbfs:/user/hive/warehouse/employees/_delta_log/00000000000000000009.json'
-- MAGIC

-- COMMAND ----------


