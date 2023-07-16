VENV = venv
PYTHON = $(VENV)/Scripts/python
PIP = $(VENV)/Scripts/pip


venv:
	python -m venv $(VENV)

deps: venv
	$(PYTHON) -m pip install --upgrade pip
	$(PIP) install -r requirements.txt

run: deps
	$(PYTHON) src/microphone_recognition.py

clean:
	rm -rf $(VENV) __pycache__
