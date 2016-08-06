FROM microsoft/dotnet:latest
COPY . /app

RUN dotnet restore /app/BrightNetwork
RUN dotnet build /app/BrightNetwork
RUN dotnet restore /app/PROProtocol
RUN dotnet build /app/PROProtocol

CMD bash
