FROM mcr.microsoft.com/dotnet/runtime:7.0
ARG TARGETARCH
COPY output/${TARGETARCH}/ /weather
WORKDIR /weather
CMD ./weather