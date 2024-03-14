FROM python:3.11-slim

# set the working directory
WORKDIR /code

# install dependencies
COPY ./requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt

# copy the src to the folder
COPY ./src ./src

# start the server
CMD ["uvicorn:latest", "src.main:app", "--host", "0.0.0.0", "--port", "80", "--reload"]