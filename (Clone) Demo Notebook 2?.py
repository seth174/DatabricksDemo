# Databricks notebook source
# MAGIC %fs ls '/databricks-datasets'

# COMMAND ----------

dbutils.help()

# COMMAND ----------

files = dbutils.fs.ls('/databricks-datasets/')

# COMMAND ----------

display(files)

# COMMAND ----------


