-- Databricks notebook source
show tables

-- COMMAND ----------

show tables in global_temp

-- COMMAND ----------

select * from global_temp.global_temp_view_latest_phones

-- COMMAND ----------

drop table if exists smartphones;

drop view if exists view_apple_phones;

drop view if exists global_temp.global_temp_view_latest_phones
