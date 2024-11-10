# Create a virtual environment
# https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/
python3 -m venv .venv

# Activate the virtual environment
source .venv/bin/activate
which python

# Install Robot Framework and the Browser library
cd .venv
pip3 install --upgrade --requirement requirements.txt

rfbrowser clean-node
rfbrowser init

sudo npx -y playwright install-deps

pip install robotframework-jsonlibrary