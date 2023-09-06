# Makefile for Python Project requested a basic, readable makefile from chatGPT to understand how these funciton

# Variables
PYTHON := python3
VENV := venv
SRC_DIR := pythonproject/src
TEST_DIR := pythonproject/tests
REQUIREMENTS := requirements.txt

# Phony targets
.PHONY: all venv install test format lint clean

# Default target
all: venv install test format lint

# Create a virtual environment
venv:
	$(PYTHON) -m venv $(VENV)

# Install project dependencies
install: venv
	$(VENV)/bin/pip install --upgrade pip -r  $(REQUIREMENTS)

# Run unit tests
test: install
	$(VENV)/bin/pytest $(TEST_DIR)

# Format code with Black
format: install
	$(VENV)/bin/black $(SRC_DIR)

# Lint code with Flake8
lint: install
	$(VENV)/bin/pylint $(SRC_DIR)

# Clean up generated files and virtual environment
clean:
	rm -rf $(VENV) __pycache__ .pytest_cache
