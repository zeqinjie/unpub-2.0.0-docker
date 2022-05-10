from dart

WORKDIR /app
COPY . ./
RUN dart pub get
ENTRYPOINT ["dart", "run", "bin/unpub.dart", "--database", "mongodb://mongo:27017/dart_pub"]