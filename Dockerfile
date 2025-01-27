# Указываем базовый образ
FROM rust:latest

# Устанавливаем рабочую директорию
WORKDIR /usr/src/rust_template

# Копируем файлы Cargo.toml и Cargo.lock
COPY Cargo.toml Cargo.lock ./

# Создаем зависимые файлы
RUN cargo build --release
RUN rm src/*.rs

# Копируем исходный код
COPY . .

# Собираем проект
RUN cargo build --release

# Указываем команду для запуска приложения (это делается в docker-compose.yml)
