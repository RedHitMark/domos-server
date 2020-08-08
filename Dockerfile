FROM python:3.8.5-alpine

# Copy everything from main folder in /serverw
COPY . /server
WORKDIR /server

# Upgrade pip and install all dependencies in requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose flask server port
EXPOSE 5151

# Run flask application
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0", "--port=5151"]