/* ----------------------------------------------------------------------------
 * - Project....: Sales History
 * - File.......: 01_DROP_MATERIALIZED_VIEWS.sql
 * - Author.....: Sergio Campos
 * - Last update: 03-FEB-2019
 * - Description: SQL script for dropping materialized views created 
 * -              previously.
 * - Version....: 1.0
 * ------------------------------------------------------------------------- */
 
DECLARE

  PROCEDURE drop_materialized_view(mv_name IN VARCHAR2) AS
    mv_count    NUMBER;
    v_sql       VARCHAR2(255 CHAR);
  BEGIN
    SELECT COUNT(1)
    INTO   mv_count
    FROM   user_objects
    WHERE  object_type = 'MATERIALIZED VIEW'
      AND  object_name = mv_name;
      
    v_sql := 'DROP MATERIALIZED VIEW ' || mv_name;
    EXECUTE IMMEDIATE v_sql;
  END drop_materialized_view;
  
BEGIN

  drop_materialized_view('PRODUCT_SUBCATEGORY_MV');
  drop_materialized_view('TIMES_MONTH_MV');
  drop_materialized_view('TIMES_WEEK_MV');
  
END;
/

