.PHONY: all nersc s3df

all: nersc s3df

# Regenerate pydantic models. Codegen config lives in each
# subdir's pyproject.toml under [tool.datamodel-codegen].
nersc:
	cd nersc && uv run datamodel-codegen

s3df:
	cd s3df && uv run datamodel-codegen