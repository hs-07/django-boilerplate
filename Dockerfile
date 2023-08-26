FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN pip install --upgrade pip 

COPY ./requirements.txt . 

RUN pip install -r  requirements.txt

COPY . .

RUN make install

EXPOSE 8000