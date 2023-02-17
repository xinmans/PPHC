FROM python:3.8

RUN pip install --upgrade pip
RUN pip install mkdocs

WORKDIR /app

COPY . /app/docs
COPY mkdocs.yml /app/mkdocs.yml

RUN mkdir ./docs/overrides && mkdocs build

EXPOSE 8000

CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]
