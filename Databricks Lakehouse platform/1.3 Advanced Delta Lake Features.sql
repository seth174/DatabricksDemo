-- Databricks notebook source
DESCRIBE HISTORY employees

-- COMMAND ----------

select * from employees version as of 6

-- COMMAND ----------

delete from employees

-- COMMAND ----------

select * from employees

-- COMMAND ----------

restore table employees to version as of 9

-- COMMAND ----------

select * from employees

-- COMMAND ----------

Describe history employees

-- COMMAND ----------

Describe detail employees

-- COMMAND ----------

optimize employees zorder by (id)

-- COMMAND ----------

describe detail employees

-- COMMAND ----------

describe history employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

vacuum employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

vacuum employees retain 0 hours

-- COMMAND ----------

-- Dont do this in prod
SET spark.databricks.delta.retentionDurationCheck.enabled = false

-- COMMAND ----------

vacuum employees retain 0 hours

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'

-- COMMAND ----------

select * from employees@v1

-- COMMAND ----------

describe history employees

-- COMMAND ----------

select * from employees version as of 1

-- COMMAND ----------

drop table employees

-- COMMAND ----------

-- MAGIC %fs ls 'dbfs:/user/hive/warehouse/employees'
