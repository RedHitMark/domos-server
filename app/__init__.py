from flask import Flask

from app import healthCheck

app = Flask(__name__)
app.register_blueprint(healthCheck.healthCheck)

@app.route("/")
def index():
    return "Welcome on Domos System<br>Endpoint available are:\n"