FROM mcr.microsoft.com/dotnet/sdk:5.0 AS base

ENV ASPNETCORE_URLS=http://+:80
EXPOSE 80
EXPOSE 443

WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build

WORKDIR /src

# copy csprojs and restore
COPY ./app.csproj .

RUN dotnet restore "./app.csproj"

# copy code and build
COPY . .

RUN dotnet build "./app.csproj" -c Release -o /app/build

# publish app
FROM build AS publish
RUN dotnet publish "./app.csproj" -c Release -o /app/publish

# final image
FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "app.dll"]