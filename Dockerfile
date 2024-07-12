FROM python:3.10

ENV PYTHONUNBUFFERED=1

WORKDIR /iterio_project

RUN apt-get update && apt-get install -y nodejs npm

COPY docker_functionality/entrypoint.sh docker_functionality/entrypoint.sh
COPY docker_functionality/requirements.txt docker_functionality/requirements.txt

RUN pip install --no-cache-dir -r docker_functionality/requirements.txt

COPY docker_functionality/package.json ./
RUN npm install

COPY . .

EXPOSE 8000

ENTRYPOINT ["docker_functionality/entrypoint.sh"]
