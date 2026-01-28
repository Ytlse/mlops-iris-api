links:
	@echo "Prometheus: http://localhost:9090"
	@echo "Grafana: http://localhost:3000"
build-api:
	docker build -t mlops-iris-api:latest -f src/api/Dockerfile .
run-api:
	docker run --rm -d -p 8000:8000 --name mlops-iris-api mlops-iris-api:latest
stop-api:
	docker stop mlops-iris-api