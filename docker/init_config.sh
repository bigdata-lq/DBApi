#!/bin/bash

# 将docker启动时命令行中指定的-e参数设置到spring认识的环境变量

export DBAPI_API_CONTEXT=${API_CONTEXT:-"api"}

export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_META_DB_URL=${DB_URL:-"jdbc:sqlite::resource:sqlite.db"}
export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_META_DB_USERNAME=${DB_USERNAME:-""}
export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_META_DB_PASSWORD=${DB_PASSWORD:-""}
export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_META_DB_DRIVER_CLASS_NAME=${DB_DRIVER:-"org.sqlite.JDBC"}

export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_ACCESS_LOG_DB_URL=${LOG_DB_URL:-"jdbc:clickhouse://127.0.0.1:8123/default"}
export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_ACCESS_LOG_DB_USERNAME=${LOG_DB_USERNAME:-"default"}
export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_ACCESS_LOG_DB_PASSWORD=${LOG_DB_PASSWORD:-"123456"}
export SPRING_DATASOURCE_DYNAMIC_DATASOURCE_ACCESS_LOG_DB_DRIVER_CLASS_NAME=${LOG_DB_DRIVER:-"ru.yandex.clickhouse.ClickHouseDriver"}

export ACCESS_LOG_WRITER=${ACCESS_LOG_WRITER:-"null"}
export ACCESS_LOG_KAFKA_TOPIC=${ACCESS_LOG_KAFKA_TOPIC:-"dbapi_access_log"}
export SPRING_KAFKA_BOOTSTRAP_SERVERS=${ACCESS_LOG_KAFKA:-"127.0.0.1:9092"}

export SPRING_CLOUD_NACOS_SERVER_ADDR=${NACOS_ADDRESS:-"127.0.0.1:8848"}
export SPRING_CLOUD_NACOS_DISCOVERY_USERNAME=${NACOS_USERNAME:-"nacos"}
export SPRING_CLOUD_NACOS_DISCOVERY_PASSWORD=${NACOS_PASSWORD:-"nacos"}
export SPRING_CLOUD_NACOS_DISCOVERY_NAMESPACE=${NACOS_NAMESPACE:-"public"}

export SPRING_REDIS_HOST=${REDIS_HOST:-"127.0.0.1"}
export SPRING_REDIS_PORT=${REDIS_PORT:-6379}
export SPRING_REDIS_DATABASE=${REDIS_DATABASE:-0}
export SPRING_REDIS_PASSWORD=${REDIS_PASSWORD:-""}