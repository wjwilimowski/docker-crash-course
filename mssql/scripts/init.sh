#!/bin/bash

until /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -Q "SELECT 1" 2>/dev/null 1>/dev/null
do
    sleep 1
done

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i /scripts/drop_db.sql

bash /scripts/create_db.sh
bash /scripts/mocks/mocks.sh