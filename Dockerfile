FROM google/dart:2.12 as builder
WORKDIR /app
ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline
RUN dart compile exe bin/server.dart -o bin/server

FROM gcr.io/distroless/base:debug
WORKDIR /app
COPY --from=builder /app/bin/server .
CMD []
ENTRYPOINT ["./server"]