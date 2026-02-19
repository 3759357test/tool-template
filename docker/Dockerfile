FROM <BASE_RUNTIME_IMAGE>

WORKDIR /app
COPY examples /app/examples
COPY scripts /app/scripts

RUN chmod +x /app/scripts/*.sh

CMD ["bash", "-lc", "mkdir -p /app/out && /app/scripts/run_local.sh --input /app/examples/input.json --output /app/out/output.json && cat /app/out/output.json"]
