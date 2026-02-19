# Troubleshooting

## `output.json` not generated

- Check input path exists.
- Check write permissions for `./out`.
- Run `./scripts/smoke_test.sh`.

## Docker build fails

- Confirm Docker daemon is running.
- Rebuild without cache: `docker compose -f docker/docker-compose.yml build --no-cache`.

## Schema validation fails

- Re-check required fields in `docs/input-output-spec.md`.
- Compare with `examples/expected_output.json`.
