FROM python:3.11-slim-buster as builder

RUN pip install mkdocs-material mkdocs-autorefs mkdocs-awesome-nav mkdocs-static-i18n

COPY . /app/
WORKDIR /app/

RUN mkdir /build
RUN mkdocs build --site-dir /build

FROM nginx:alpine
COPY --from=builder /build /usr/share/nginx/html/