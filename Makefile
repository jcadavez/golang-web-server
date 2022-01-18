.PHONY: start
start:
	@docker-compose -f docker-compose.yml build
	@docker-compose -f docker-compose.yml up -d

.PHONY: stop 
stop:
	@docker-compose -f docker-compose.yml down