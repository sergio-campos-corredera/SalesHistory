/* ----------------------------------------------------------------------------
 * - Project....: Sales History
 * - File.......: 02_CREATE_MATERIALIZED_VIEWS.sql
 * - Author.....: Sergio Campos
 * - Last update: 03-FEB-2019
 * - Description: SQL script for creating materialized views which will be used
 * -              in OBIEE.
 * - Version....: 1.0
 * ------------------------------------------------------------------------- */

--------------------------------------------------------
--  DDL for Materialized View PRODUCT_SUBCATEGORY_MV
--------------------------------------------------------

CREATE MATERIALIZED VIEW "SH"."PRODUCT_SUBCATEGORY_MV" ("PROD_SUBCATEGORY", 
                                                        "PROD_SUBCATEGORY_ID", 
                                                        "PROD_SUBCATEGORY_DESC", 
                                                        "PROD_CATEGORY", 
                                                        "PROD_CATEGORY_ID", 
                                                        "PROD_CATEGORY_DESC", 
                                                        "PROD_TOTAL", 
                                                        "PROD_TOTAL_ID")
AS  SELECT  DISTINCT  PROD_SUBCATEGORY,
                      PROD_SUBCATEGORY_ID,
                      PROD_SUBCATEGORY_DESC,
                      PROD_CATEGORY,
                      PROD_CATEGORY_ID,
                      PROD_CATEGORY_DESC,
                      PROD_TOTAL,
                      PROD_TOTAL_ID
    FROM PRODUCTS;


--------------------------------------------------------
--  DDL for Materialized View TIMES_MONTH_MV
--------------------------------------------------------

CREATE MATERIALIZED VIEW "SH"."TIMES_MONTH_MV" ("CALENDAR_MONTH_NUMBER", 
                                                "FISCAL_MONTH_NUMBER", 
                                                "CALENDAR_MONTH_DESC", 
                                                "CALENDAR_MONTH_ID", 
                                                "FISCAL_MONTH_DESC", 
                                                "FISCAL_MONTH_ID", 
                                                "DAYS_IN_CAL_MONTH", 
                                                "DAYS_IN_FIS_MONTH", 
                                                "END_OF_CAL_MONTH", 
                                                "END_OF_FIS_MONTH", 
                                                "CALENDAR_MONTH_NAME", 
                                                "FISCAL_MONTH_NAME", 
                                                "CALENDAR_QUARTER_DESC", 
                                                "CALENDAR_QUARTER_ID", 
                                                "FISCAL_QUARTER_DESC", 
                                                "FISCAL_QUARTER_ID", 
                                                "DAYS_IN_CAL_QUARTER", 
                                                "DAYS_IN_FIS_QUARTER", 
                                                "END_OF_CAL_QUARTER", 
                                                "END_OF_FIS_QUARTER", 
                                                "CALENDAR_QUARTER_NUMBER", 
                                                "FISCAL_QUARTER_NUMBER", 
                                                "CALENDAR_YEAR", 
                                                "CALENDAR_YEAR_ID", 
                                                "FISCAL_YEAR", 
                                                "FISCAL_YEAR_ID", 
                                                "DAYS_IN_CAL_YEAR", 
                                                "DAYS_IN_FIS_YEAR", 
                                                "END_OF_CAL_YEAR", 
                                                "END_OF_FIS_YEAR")
AS  SELECT  DISTINCT  CALENDAR_MONTH_NUMBER,
                      FISCAL_MONTH_NUMBER,
                      CALENDAR_MONTH_DESC,
                      CALENDAR_MONTH_ID,
                      FISCAL_MONTH_DESC,
                      FISCAL_MONTH_ID,
                      DAYS_IN_CAL_MONTH,
                      DAYS_IN_FIS_MONTH,
                      END_OF_CAL_MONTH,
                      END_OF_FIS_MONTH,
                      CALENDAR_MONTH_NAME,
                      FISCAL_MONTH_NAME,
                      CALENDAR_QUARTER_DESC,
                      CALENDAR_QUARTER_ID,
                      FISCAL_QUARTER_DESC,
                      FISCAL_QUARTER_ID,
                      DAYS_IN_CAL_QUARTER,
                      DAYS_IN_FIS_QUARTER,
                      END_OF_CAL_QUARTER,
                      END_OF_FIS_QUARTER,
                      CALENDAR_QUARTER_NUMBER,
                      FISCAL_QUARTER_NUMBER,
                      CALENDAR_YEAR,
                      CALENDAR_YEAR_ID,
                      FISCAL_YEAR,
                      FISCAL_YEAR_ID,
                      DAYS_IN_CAL_YEAR,
                      DAYS_IN_FIS_YEAR,
                      END_OF_CAL_YEAR,
                      END_OF_FIS_YEAR
    FROM TIMES;


--------------------------------------------------------
--  DDL for Materialized View TIMES_WEEK_MV
--------------------------------------------------------

CREATE MATERIALIZED VIEW "SH"."TIMES_WEEK_MV" ( "CALENDAR_WEEK_NUMBER", 
                                                "FISCAL_WEEK_NUMBER", 
                                                "WEEK_ENDING_DAY", 
                                                "WEEK_ENDING_DAY_ID", 
                                                "CALENDAR_MONTH_NUMBER", 
                                                "FISCAL_MONTH_NUMBER", 
                                                "CALENDAR_MONTH_DESC", 
                                                "CALENDAR_MONTH_ID", 
                                                "FISCAL_MONTH_DESC", 
                                                "FISCAL_MONTH_ID", 
                                                "DAYS_IN_CAL_MONTH", 
                                                "DAYS_IN_FIS_MONTH", 
                                                "END_OF_CAL_MONTH", 
                                                "END_OF_FIS_MONTH", 
                                                "CALENDAR_MONTH_NAME", 
                                                "FISCAL_MONTH_NAME", 
                                                "CALENDAR_QUARTER_DESC", 
                                                "CALENDAR_QUARTER_ID", 
                                                "FISCAL_QUARTER_DESC", 
                                                "FISCAL_QUARTER_ID", 
                                                "DAYS_IN_CAL_QUARTER", 
                                                "DAYS_IN_FIS_QUARTER", 
                                                "END_OF_CAL_QUARTER", 
                                                "END_OF_FIS_QUARTER", 
                                                "CALENDAR_QUARTER_NUMBER", 
                                                "FISCAL_QUARTER_NUMBER", 
                                                "CALENDAR_YEAR", 
                                                "CALENDAR_YEAR_ID", 
                                                "FISCAL_YEAR", 
                                                "FISCAL_YEAR_ID", 
                                                "DAYS_IN_CAL_YEAR", 
                                                "DAYS_IN_FIS_YEAR", 
                                                "END_OF_CAL_YEAR", 
                                                "END_OF_FIS_YEAR")
AS  SELECT  DISTINCT  CALENDAR_WEEK_NUMBER,
                      FISCAL_WEEK_NUMBER,
                      WEEK_ENDING_DAY,
                      WEEK_ENDING_DAY_ID,
                      CALENDAR_MONTH_NUMBER,
                      FISCAL_MONTH_NUMBER,
                      CALENDAR_MONTH_DESC,
                      CALENDAR_MONTH_ID,
                      FISCAL_MONTH_DESC,
                      FISCAL_MONTH_ID,
                      DAYS_IN_CAL_MONTH,
                      DAYS_IN_FIS_MONTH,
                      END_OF_CAL_MONTH,
                      END_OF_FIS_MONTH,
                      CALENDAR_MONTH_NAME,
                      FISCAL_MONTH_NAME,
                      CALENDAR_QUARTER_DESC,
                      CALENDAR_QUARTER_ID,
                      FISCAL_QUARTER_DESC,
                      FISCAL_QUARTER_ID,
                      DAYS_IN_CAL_QUARTER,
                      DAYS_IN_FIS_QUARTER,
                      END_OF_CAL_QUARTER,
                      END_OF_FIS_QUARTER,
                      CALENDAR_QUARTER_NUMBER,
                      FISCAL_QUARTER_NUMBER,
                      CALENDAR_YEAR,
                      CALENDAR_YEAR_ID,
                      FISCAL_YEAR,
                      FISCAL_YEAR_ID,
                      DAYS_IN_CAL_YEAR,
                      DAYS_IN_FIS_YEAR,
                      END_OF_CAL_YEAR,
                      END_OF_FIS_YEAR
FROM TIMES;