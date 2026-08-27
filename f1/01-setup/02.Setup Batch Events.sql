-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Setup Batch Events
-- MAGIC 1. Create control schema
-- MAGIC 1. Create batch_events table
-- MAGIC 1. Insert an event record

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### 1. Create control schema

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS f1.control
    MANAGED LOCATION 'abfss://formula1@f1extdl.dfs.core.windows.net/control';

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### 2. Create batch_events table

-- COMMAND ----------

CREATE TABLE IF NOT EXISTS f1.control.batch_events
(
    batch_id INT,
    event_timestamp TIMESTAMP
)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### 3. Insert an event record

-- COMMAND ----------

INSERT INTO f1.control.batch_events
VALUES (1, current_timestamp());

-- COMMAND ----------

INSERT INTO f1.control.batch_events
VALUES (2, current_timestamp());

-- COMMAND ----------

SELECT * FROM f1.control.batch_events;