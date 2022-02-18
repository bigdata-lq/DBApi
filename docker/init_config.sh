#!/bin/sh

# 将docker启动时命令行中指定的-e参数设置到spring认识的环境变量

export DBAPI_API_CONTEXT=${API_CONTEXT:-"api"}

export SPRING_DATASOURCE_URL=${DB_URL:-"jdbc:sqlite::resource:sqlite.db"}
export SPRING_DATASOURCE_USERNAME=${DB_USERNAME:-""}
export SPRING_DATASOURCE_PASSWORD=${DB_PASSWORD:-""}
export SPRING_DATASOURCE_DRIVER_CLASS_NAME=${DB_DRIVER:-"org.sqlite.JDBC"}

export SPRING_CLOUD_NACOS_SERVER_ADDR=${NACOS_ADDRESS:-"127.0.0.1:8848"}
export SPRING_CLOUD_NACOS_DISCOVERY_USERNAME=${NACOS_USERNAME:-"nacos"}
export SPRING_CLOUD_NACOS_DISCOVERY_PASSWORD=${NACOS_PASSWORD:-"nacos"}
export SPRING_CLOUD_NACOS_DISCOVERY_NAMESPACE=${NACOS_NAMESPACE:-"public"}