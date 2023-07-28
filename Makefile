bash:
	docker-compose run app sh

up:
	docker-compose up
test:
	docker-compose run -e RAILS_ENV=test app bundle exec rake parallel:spec
build:
	docker-compose build
rebuild:
	docker-compose build --no-cache