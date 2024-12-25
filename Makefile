setup:
	docker compose run --rm app make setup
start:
	docker compose up
ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
prepare-env:
	cp -n .env.example .env
