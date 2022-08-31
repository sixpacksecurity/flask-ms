FROM python:slim
RUN apt update && apt upgrade -y
RUN useradd -d /home/testuser -m -s /bin/bash testuser
USER testuser
WORKDIR /tmp/app
ENV FLASK_RUN_HOST 0.0.0.0
COPY app.py .
COPY requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "-m", "flask", "run"]