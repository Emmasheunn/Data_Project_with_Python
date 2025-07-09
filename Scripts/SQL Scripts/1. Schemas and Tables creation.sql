/*
=========================================================================================
                         Schemas and Table Creation
=========================================================================================
*/
/*
-----------------------------------------------------------------------------------------
Objective: This SQL script creates all schemas required in the project and also creates
the tables for the source system data as it is.
The Script checks if the shema already exists, it them creates one if it doesn't.
-----------------------------------------------------------------------------------------
*/
-- Creating database schemas after checking for existence
CREATE SCHEMA IF NOT EXISTS crm;
CREATE SCHEMA IF NOT EXISTS erp;
CREATE SCHEMA IF NOT EXISTS stg;
CREATE SCHEMA IF NOT EXISTS prep;

-- Creating database tables with respective source systems abbr as schema
-- NOTE: All fields have been set to TEXT to accomodate data quality issues from source system
CREATE TABLE crm.cust_info (
  cst_id TEXT,
  cst_key TEXT,
  cst_firstname TEXT,
  cst_lastname TEXT,
  cst_marital_status TEXT,
  cst_gndr TEXT,
  cst_create_date TEXT
);

CREATE TABLE crm.prd_info (
  prd_id TEXT,
  prd_key TEXT,
  prd_nm TEXT,
  prd_cost TEXT,
  prd_line TEXT,
  prd_start_dt TEXT,
  prd_end_dt TEXT
);

CREATE TABLE crm.sales_details (
  sls_ord_num TEXT,
  sls_prd_key TEXT,
  sls_cust_id TEXT,
  sls_order_dt TEXT,
  sls_ship_dt TEXT,
  sls_due_dt TEXT,
  sls_sales TEXT,
  sls_quantity TEXT,
  sls_price TEXT
);

CREATE TABLE erp.cust_az12 (
  cid TEXT,
  bdate TEXT,
  gen TEXT
);

CREATE TABLE erp.loc_a101 (
  cid TEXT,
  cntry TEXT
);

CREATE TABLE erp.px_cat_g1v2 (
  id TEXT,
  cat TEXT,
  subcat TEXT,
  maintenance TEXT
);
