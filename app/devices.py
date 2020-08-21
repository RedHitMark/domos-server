from flask import Blueprint, current_app


devices = Blueprint("devices", __name__, url_prefix="/devices")


@devices.route('/new')
def addNewDevice():
    current_app.logger.info("ok")
    return 'Work in progress'
