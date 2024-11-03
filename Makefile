# Variables
APP_NAME = main.py
FLASK_ENV = development
FLASK_RUN_PORT = 5000
LOG_FILE = app.log

.PHONY: run

run:
	@echo "Starting Flask application..."
	FLASK_APP=$(APP_NAME) FLASK_ENV=$(FLASK_ENV) flask run --host=0.0.0.0 --port=$(FLASK_RUN_PORT) > /dev/null 2>&1 &

stop:
	@echo "Stopping Flask application..."
	@PID=$$(ps aux | grep '[f]lask' | awk '{print $$2}'); \
	if [ -n "$$PID" ]; then \
		kill $$PID; \
		echo "Stopped Flask application with PID: $$PID"; \
	else \
		echo "No Flask application running"; \
	fi