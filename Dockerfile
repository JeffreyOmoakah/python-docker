# 
FROM python:3.11-slim

# set the working directory
WORKDIR /app

# install dependencies
COPY . /app
RUN pip install -r requirements.txt

# copy the src to the folder
COPY ./src ./src

#  start the server
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]