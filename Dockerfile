FROM google/dart:2.12-beta as builder
WORKDIR /app
ADD pubspec.* /app/
RUN pub get
ADD . /app
RUN pub get --offline
RUN dart compile exe bin/server.dart -o bin/server

# alpineにしたいところだが、isinfとsbrkのシンボルが見つからない問題あり。
# FROM frolvlad/alpine-glibc:latest
FROM subfuzion/dart:slim
WORKDIR /app
COPY --from=builder /app/bin/server .
CMD []
ENTRYPOINT ["./server"]