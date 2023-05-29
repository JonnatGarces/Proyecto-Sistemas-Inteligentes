
from flask import Flask, render_template, request, jsonify
import openai

app = Flask(__name__)
openai.api_key ="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"

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/get_response', methods=['POST'])
def get_response():
    user_input = request.form['input']
    
    # Llamar al modelo de OpenAI para obtener la respuesta
    response = openai.Completion.create(
        engine='davinci-codex',
        prompt=user_input,
        max_tokens=100,
        n=1,
        stop=None,
        temperature=0.7
    )

    return jsonify(response.choices[0].text.strip())

if __name__ == '__main__':
    app.run()
