FROM arm64v8/openjdk as build
WORKDIR /app
COPY . ./
RUN jar cvf theme.jar META-INF theme

FROM nginx:latest
COPY --from=build /app/theme.jar /usr/share/nginx/html/.
