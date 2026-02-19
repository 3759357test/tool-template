# <TOOL_NAME>

한줄 소개를 여기에 작성하세요.  
예: 이 도구는 입력(JSON)으로 모델/아티팩트를 받아서 간이 AIBOM(구성요소 리스트)을 출력(JSON)합니다.

---

## TL;DR (바로 실행)

### Docker (권장)
```bash
docker compose -f docker/docker-compose.yml up --build
# 결과: ./out/output.json
```

### Local
```bash
./scripts/run_local.sh --input ./examples/input.json --output ./out/output.json
```

## What This Repo Contains

- `src/`: 구현 코드
- `tests/`: 테스트
- `docs/`: 문서(설치/설정/스펙/FAQ)
- `examples/`: 예제 입력/출력 샘플
- `docker/`: 한방 실행 도커 설정
- `scripts/`: 로컬 실행/스키마 검증/스모크 테스트

## Input / Output Spec

본 도구는 AI 전주기 공통 I/O 규격을 따릅니다.

- Spec 문서: `docs/input-output-spec.md`
- Example input: `examples/input.json`
- Example output: `examples/expected_output.json`

### Input Example
```json
{
  "model_source": {
    "type": "<MODEL_SOURCE_TYPE>",
    "repo_id": "<MODEL_REPO_ID>"
  },
  "options": {
    "include_layers": true,
    "include_dependencies": true
  }
}
```

### Output Example
```json
{
  "tool": { "name": "<TOOL_NAME>", "version": "0.1.0" },
  "model": {
    "repo_id": "<MODEL_REPO_ID>",
    "architecture": "<MODEL_ARCHITECTURE>",
    "params_estimate": 12345678
  },
  "components": [
    { "type": "<COMPONENT_TYPE_1>", "name": "<COMPONENT_NAME_1>" },
    { "type": "<COMPONENT_TYPE_2>", "name": "<COMPONENT_NAME_2>", "count": 1 }
  ],
  "environment": {
    "runtime": "<runtime>",
    "deps": [
      { "name": "<DEP_NAME_1>", "version": "x.y.z" }
    ]
  }
}
```

## Quick Start (Docker)

```bash
docker compose -f docker/docker-compose.yml up --build
```

출력 파일 위치:

- `./out/output.json`

## Local Development

### Requirements

- `<runtime>` (예: `<RUNTIME_NAME_AND_VERSION>`)
- (optional) Docker

### Run

```bash
./scripts/run_local.sh --input ./examples/input.json --output ./out/output.json
```

### Test

```bash
./scripts/smoke_test.sh
# (있으면) unit tests:
# <your test command>
```

### Validate Schema

```bash
./scripts/validate_schema.sh ./out/output.json
```

## Configuration

- 환경변수/설정파일은 `docs/configuration.md` 참고
- 기본 설정은 `configs/default.yaml` 기준

## Docs

- Getting started: `docs/getting-started.md`
- I/O spec: `docs/input-output-spec.md`
- Examples: `docs/examples.md`
- Troubleshooting: `docs/troubleshooting.md`
- FAQ: `docs/faq.md`

## Contributing

- 큰 변경은 PR 전에 Issue로 먼저 논의
- PR은 작게 쪼개서 제출
- 스펙 호환성 유지 + 테스트 통과 필수

## License

`LICENSE` 파일을 참고하세요.
