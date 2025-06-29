# Databricks notebook source
# MAGIC %md
# MAGIC #Silver Notebook
# MAGIC

# COMMAND ----------

# MAGIC %md
# MAGIC ##Read NOCS Data

# COMMAND ----------

df = spark.read.format('parquet')\
                .option('head',True)\
                .option('inferschema', True)\
                .load('abfss://bronze@olympicprojdlchintu.dfs.core.windows.net/nocs')

display(df.limit(15))

# COMMAND ----------

# MAGIC %md
# MAGIC dropping column

# COMMAND ----------

df = df.drop('country')

display(df.limit(15))

# COMMAND ----------

from pyspark.sql.functions import *
from pyspark.sql.types import *

# COMMAND ----------

# MAGIC %md
# MAGIC Having Only First Word of Tag By Using Split

# COMMAND ----------

df = df.withColumn('tag', split( col('tag'), '-' )[0])

display(df.limit(15))

# COMMAND ----------

df.write.format('delta')\
        .mode('append')\
        .option('path', 'abfss://silver@olympicprojdlchintu.dfs.core.windows.net/nocs')\
        .saveAsTable('olympicolympic.silver.nocs.silver.nocs')

# COMMAND ----------

df.write.format('delta')\
        .mode('append')\
        .saveAsTable('olympic.silver.nocs_man')