# Salad Honeygain Test

Honeygain-only AMD64 container for the first Salad profitability test.

Required runtime secrets:

- `HONEYGAIN_EMAIL`
- `HONEYGAIN_PASSWORD`

The launcher uses `SALAD_MACHINE_ID` to assign each replica a distinct Honeygain device name. For local testing, provide `HONEYGAIN_DEVICE_NAME` explicitly.

Build locally:

```sh
docker build --platform linux/amd64 -t salad-honeygain .
```

Run locally using the ignored secret file:

```sh
docker run --rm --env-file salad-secrets.env -e HONEYGAIN_DEVICE_NAME=salad-local-test salad-honeygain
```

Never commit `salad-secrets.env`.
