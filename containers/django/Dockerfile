FROM python:3.7
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
RUN git clone https://github.com/junkhp/esuits_junki.git /app/
ADD ./local_settings.py /app/config/local_settings.py
RUN pip install --no-cache-dir -r requirements.txt
COPY ./entrypoint.sh /app/entrypoint.sh
ENTRYPOINT [ "/app/entrypoint.sh" ]