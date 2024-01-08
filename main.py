from flask import Flask, Response

app = Flask(__name__)

@app.route("/status/<status_code>")
def status(status_code):
    return f"Code {status_code}", status_code

if __name__ == "__main__":
  #    app = create_app()
  print(" Starting app...")
  app.run(host="0.0.0.0", port=5000)