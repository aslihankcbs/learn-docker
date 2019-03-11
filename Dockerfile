FROM microsoft/dotnet:2.1-aspnetcore-runtime AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM microsoft/dotnet:2.1-sdk AS build
WORKDIR /src
COPY ["LearnDocker/LearnDocker.csproj", "LearnDocker/"]
RUN dotnet restore "LearnDocker/LearnDocker.csproj"
COPY . .
WORKDIR "/src/LearnDocker"
RUN dotnet build "LearnDocker.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "LearnDocker.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "LearnDocker.dll"]