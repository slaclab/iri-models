# iri-models

Use `datamodel-code-generator` to create pydantic models for IRI APIs using their `openapi.json`.

To add to your project, copy the commit sha you are interested in (see [commit history page](https://github.com/slaclab/iri-models/commits/main/)):

```sh
SHA=<sha_goes_here>
uv add "git+https://github.com/slaclab/iri-models@${SHA}#subdirectory=nersc" # for NERSC models
uv add "git+https://github.com/slaclab/iri-models@${SHA}#subdirectory=s3df" # for S3DF models
```

Requires Python >= 3.12.

## Usage

```python
from iri_models.nersc.models import Job, JobStatus  # or iri_models.s3df.models
```

There should not be too many meaningful differences between these models, as they all stem from the same upstream [repo](https://github.com/doe-iri/iri-facility-api-python).

## Regenerating models

Run `make` (or `make nersc` / `make s3df`). Codegen config lives in each subdir's `pyproject.toml` under `[tool.datamodel-codegen]`.
