# Название вашего проекта
PROJECT_NAME = rust_template

# Команды для управления контейнерами
BUILD = docker-compose build
RUN = docker-compose up
REMOVE = docker-compose down
REMOVE_IMAGES = docker rmi $$(docker images -f "dangling=true" -q)

# Команды
.PHONY: all build run down clean remove-images
# Основная команда: сборка и запуск
all: build run
# Сборка приложения
build:
	$(BUILD)

# Запуск приложения
run:
	$(RUN)

# Остановка и удаление контейнеров
down:
	$(REMOVE)

# Очистка ненужных образов
clean:
	$(REMOVE_IMAGES)


up:build run
# Полное удаление контейнеров и образов
remove-images:
	$(REMOVE) && $(REMOVE_IMAGES)
