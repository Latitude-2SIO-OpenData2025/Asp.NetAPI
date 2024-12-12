FROM mcr.microsoft.com/dotnet/aspnet:7.0 AS base
WORKDIR /app
COPY . .
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "/app/out/YourApi.dll"]
EXPOSE 5000
