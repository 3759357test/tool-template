# Getting Started

## Run with Docker

```bash
docker compose -f docker/docker-compose.yml up --build
```

## Run locally

```bash
./scripts/run_local.sh --input ./examples/input.json --output ./out/output.json
```

## Validate output

- Check `./out/output.json`
- Compare with `./examples/expected_output.json`
