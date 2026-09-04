FROM honeygain/honeygain@sha256:5cd8c361517d0cbae4aa2c75e13239e45f9193ab8e205d57fa29f2e695ea3ec1

COPY --chmod=755 entrypoint.sh /app/salad-entrypoint.sh

ENTRYPOINT ["/app/salad-entrypoint.sh"]
