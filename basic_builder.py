from flask import Flask
import subprocess

app = Flask(__name__)

@app.route('/')
def initiate_build():
    cmd = ["sh","./create_img.sh"]
    p = subprocess.check_call(cmd, stdout = subprocess.PIPE,
                            stderr=subprocess.PIPE,
                            stdin=subprocess.PIPE)
    print "Fine"
    return '200'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=42000)

