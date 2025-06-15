from flask import Flask, request, jsonify
import random

app = Flask(__name__)

@app.route("/generate", methods=["POST"])
def generate():
    prompt = request.json.get("prompt", "")
    response = f"Generated text for: {prompt} — {random.randint(1, 1000)}"
    return jsonify({"response": response})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
