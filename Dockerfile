FROM continuumio/anaconda3:4.4.0
COPY . /usr/app/
EXPOSE 8080
WORKDIR /usr/app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt --user
CMD python app.py