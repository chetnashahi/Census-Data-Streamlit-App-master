FROM python:2.7
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8504
RUN mkdir ~/.streamlit
RUN cp config.toml ~/.streamlit/config.toml
RUN cp credentials.toml ~/.streamlit/credentials.toml
WORKDIR /app
ENTRYPOINT ["streamlit", "run"]
CMD ["census_app.py"]
