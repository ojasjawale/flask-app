from flask import Flask, render_template, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/api/data')
def get_data():
    data = {
        'name': 'ChatGPT',
        'version': '4.0',
        'features': ['text generation', 'question answering', 'conversation', 'language translation']
    }
    return jsonify(data)

@app.route('/api')
def api_page():
    return render_template('api_response.html')

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

