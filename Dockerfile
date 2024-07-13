FROM python:3.8

EXPOSE 3111

ADD /techtrends .

RUN pip install -r requirements.txt

RUN python init_db.py

CMD ["python", "app.py"]

