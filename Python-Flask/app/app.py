from flask import Flask

app = Flask(__name__)

@app.route('/', methods=['GET'])
def hello_world():
        return 'Teste com o Flask'

if __name__ == '__main__':
        app.run(debug=True,host='0.0.0.0')
