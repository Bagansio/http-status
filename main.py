from flask import Flask
import logging


app = Flask(__name__)
app.logger.setLevel(logging.INFO)  # Set log level to INFO

@app.route("/status/<status_code>")
def status(status_code):
    app.logger.info(f"Received request for status code {status_code}")

    return f"Code {status_code}", status_code

if __name__ == "__main__":
    print("Starting app...")
    app.run(host="0.0.0.0", port=5000)