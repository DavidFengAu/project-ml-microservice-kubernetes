FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app

## Step 2:
COPY . app.py /app/
COPY . model_data /app/

## Step 3:
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
# hadolint ignore=DL3013

## Step 4:
EXPOSE 80

## Step 5:
CMD ["python", "app.py"]

