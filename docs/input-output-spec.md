# Input / Output Spec

이 문서는 도구의 최소 I/O 계약을 정의합니다.

## Input

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

### Required fields

- `model_source.type`
- `model_source.repo_id`

## Output

```json
{
  "tool": { "name": "<TOOL_NAME>", "version": "0.1.0" },
  "model": {
    "repo_id": "<MODEL_REPO_ID>",
    "architecture": "<MODEL_ARCHITECTURE>",
    "params_estimate": 12345678
  },
  "components": [],
  "environment": {
    "runtime": "<runtime>",
    "deps": []
  }
}
```

### Required fields

- `tool.name`
- `tool.version`
- `model.repo_id`
- `environment.runtime`
