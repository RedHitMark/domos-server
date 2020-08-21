FROM python:3.8.5

# Upgrade pip
RUN python -m pip install --upgrade pip

# Move in server folder
WORKDIR /server

# Copy requirements.txt and install all dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files in server directory
COPY . .

# Expose Flask server port
EXPOSE 5151

# Run flask application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5151"]