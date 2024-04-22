.PHONY: help
help:
	@echo '                                                                          '
	@echo 'Makefile help                                                  '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make help                           show help                          '
	@echo '                                                                          '
	@echo '   make up                             启动服务                            '
	@echo '   make down                           停止服务                            '
	@echo '   make logs                           查看日志                            '
	@echo '   make build                           编译镜像                            '
	@echo '   make run                           执行脚本                            '
	@echo '                                                                          '
	@echo '                                                                          '
	@echo '                                                                          '


.PHONY: up
up:
	docker compose up  -d


.PHONY: down
down:
	docker compose  down


.PHONY: logs
logs:
	docker compose  logs -n 100 -f


build:
	docker compose  build

