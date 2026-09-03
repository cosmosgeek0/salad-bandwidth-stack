FROM honeygain/honeygain@sha256:159d120caac9f482074d3e8d82d4cc247cd07e65af37bcc8e6b89c60674d5ed4

COPY --chmod=755 entrypoint.sh /app/salad-entrypoint.sh

ENTRYPOINT ["/app/salad-entrypoint.sh"]
