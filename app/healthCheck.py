from flask import Blueprint, current_app


healthCheck = Blueprint("healthCheck", __name__, url_prefix="/health-check")


@healthCheck.route('/server-status')
def serverHealthCheck():
    current_app.logger.info("ok")
    return 'It works!'

