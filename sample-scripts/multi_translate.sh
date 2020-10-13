#!/bin/bash
set -e

CACHE_DIR="translate-cache"
SERVICE_ACCOUNT_KEY="../gcloud/gcloud_service_account.json"
COMMON_ARGS=( "--srcFile=en/fruits.json" "--srcLng=en" "--srcFormat=nested-json" "--targetFormat=nested-json" "--service=google-translate" "--serviceConfig=$SERVICE_ACCOUNT_KEY" "--cacheDir=$CACHE_DIR" "--matcher=i18next" )

# Run "npm install --global attranslate" before you try this example
attranslate "${COMMON_ARGS[@]}" --targetFile='es/fruits.json' --targetLng='es'
attranslate "${COMMON_ARGS[@]}" --targetFile='zh/fruits.json' --targetLng='zh'
attranslate "${COMMON_ARGS[@]}" --targetFile='de/fruits.json' --targetLng='de'
