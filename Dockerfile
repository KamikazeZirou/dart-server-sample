FROM google/dart:2.12-beta as builder
WORKDIR /app
ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline
RUN dart compile exe bin/server.dart -o bin/server

# glibc入りalpineを使う。
# dartの実行バイナリがglibcに依存している。
FROM frolvlad/alpine-glibc:latest
WORKDIR /app
COPY --from=builder /app/bin/server .
CMD []
ENTRYPOINT ["./server"]