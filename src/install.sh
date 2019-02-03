# -----------------------------------------------------------------------------
# - Project....: Sales History
# - File.......: install.sh
# - Author.....: Sergio Campos
# - Last update: 03-FEB-2019
# - Description: bash file for deploy all project elements.
# - Version....: 1.0
# -----------------------------------------------------------------------------

#!/bin/bash

DOMAIN_HOME="/app/oracle/biee/user_projects/domains/bi"
export DOMAIN_HOME

# 
# Step 1: install database objects
# 

sqlplus "sh/Admin123@(DESCRIPTION = (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))(CONNECT_DATA = (SERVER = DEDICATED) (SERVICE_NAME = pdborcl)))" @./ddl/00_EXECUTE_ALL.sql

#
# Step 2: deploy RPD
#

$DOMAIN_HOME/bitools/bin/datamodel.sh uploadrpd \
    -I ./obiee/rpd/SalesHistory.rpd \
    -W Admin123 \
    -SI ssi \
    -U weblogic \
    -P Admin123

#
# Step 3: deploy reports and dashboards
#

$DOMAIN_HOME/bitools/bin/runcat.sh \
    -cmd unarchive \
    -inputFile ./obiee/reporting/SalesHistory.catalog \
    -folder /shared \
    -overwrite all \
    -online http://localhost:7780/analytics/saw.dll \
    -credentials ./obiee/reporting/credentials.properties 
