#!/bin/bash

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -i /scripts/create_db.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d ExampleDb -i /scripts/tables/dbo.Examples.sql

echo 'Create db completed'