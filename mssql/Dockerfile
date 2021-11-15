FROM mcr.microsoft.com/mssql/server:2017-latest
EXPOSE 1433
COPY scripts/ scripts/
CMD ["bash", "/scripts/entrypoint.sh"]