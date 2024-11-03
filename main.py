from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return '''
    <!doctype html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <title>Front Page</title>
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
            }
        </style>
      </head>
      <body>
        <h1>Successful request</h1>
      </body>
    </html>
    '''

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
