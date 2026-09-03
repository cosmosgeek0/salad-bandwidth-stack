#!/bin/sh
set -eu

: "${HONEYGAIN_EMAIL:?HONEYGAIN_EMAIL is required}"
: "${HONEYGAIN_PASSWORD:?HONEYGAIN_PASSWORD is required}"

machine_id="${SALAD_MACHINE_ID:-local}"
device_name="${HONEYGAIN_DEVICE_NAME:-salad-${machine_id}}"

exec /app/honeygain \
  -tou-accept \
  -email "$HONEYGAIN_EMAIL" \
  -pass "$HONEYGAIN_PASSWORD" \
  -device "$device_name"
