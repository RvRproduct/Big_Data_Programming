FROM python:3.8-rc-slim-stretch

WORKDIR /app

COPY . /app

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

CMD ["/bin/bash"]