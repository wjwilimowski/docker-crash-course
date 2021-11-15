#!/bin/bash

/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P $SA_PASSWORD -d ExampleDb -i /scripts/mocks/dbo.Examples.sql

echo 'Init db completed'
