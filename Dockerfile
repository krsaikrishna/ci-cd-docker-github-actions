# Use slim python image
FROM python:3.11-slim

# set workdir
WORKDIR /app

# copy requirements & install
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# copy app source
COPY app /app

# expose port
EXPOSE 5000

# default command
CMD ["python", "app.py"]
