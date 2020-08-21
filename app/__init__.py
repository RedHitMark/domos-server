from flask import Flask

from app import healthCheck
from app import devices

app = Flask(__name__)

app.register_blueprint(healthCheck.healthCheck)
app.register_blueprint(devices.devices)


@app.route("/")
def index():
    return "Welcome on Domos System<br>Endpoint available are:\n"
