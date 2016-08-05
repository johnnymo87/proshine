FROM microsoft/dotnet:latest
COPY . /app

RUN dotnet restore /app/BrightNetwork
RUN dotnet build /app/BrightNetwork

CMD cd /app/BrightNetwork && dotnet run
