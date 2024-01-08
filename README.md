Sure, here is the Markdown README that takes into account the `setup.sh` script:


# Flask Status Code App

This simple Flask application exposes a single route (`/status/<status_code>`) that returns the specified status code along with a corresponding message. The application also logs requests to the console at the INFO level.

**Installation**

1. Clone the repository:

```bash
git clone [https://github.com/Bagansio/http-status.git](https://github.com/Bagansio/http-status.git) /opt/http-status
```

2. Install the required dependencies:

```bash
sudo apt update -y
sudo apt install python3 pip git -y
```

3. Install Gunicorn:

```bash
sudo apt install gunicorn -y
```

4. Install application dependencies:

```bash
cd /opt/http-status
sudo pip install -r requirements.txt
```

5. Run the application:

```bash
sudo gunicorn --bind :80 --chdir /opt/http-status/src main:app


The application will start listening on port 80. You can access the route for a specific status code using the following format:


http://localhost:80/status/<status_code>
```

For example, to access the route for status code 200, use the following URL:

```
http://localhost:80/status/200
```

This will return the following response:

```
Code 200


To change the log level, modify the `app.logger.setLevel()` statement in the `src/main.py` file. For example, to set the log level to DEBUG, use:

python
app.logger.setLevel(logging.DEBUG)
```

This will log more detailed information about the application's interactions.```