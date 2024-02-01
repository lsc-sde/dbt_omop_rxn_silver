# DBT OMOP Bronze to Silver Transformation

__Data Science Team, Lancashire Teaching Hospitals NHS Foundation Trust__

## Introduction

This repository has the transformations, tests and snapshots for generating a clean 'silver' OMOP layer from the raw 'bronze' layer.

Additional supporting models that extend the OMOP CDM are also included as part of this project.

## Requirements

Python >= 3.11 is required.

Run `pip install -r requirements.txt` in a new Python environment to install the dependencies.

## Instructions

1. Clone the repository.

2. Create a ```.dbt``` folder in your user profile and create a file called ```profiles.yml```

3. Copy the following into the file:

```yaml
dbt_omop_rxn_silver:
  target: dev
  outputs:
    dev:
      type: databricks
      catalog: hive_metastore
      schema: dbt_omop
      host: <databricks-workspace-id>.azuredatabricks.net
      http_path: <eg/sql/1.0/warehouses/warehouse-id>
      token: <databricks-personal-access-token>
```

4. Run `dbt deps` to setup the dbt dependencies.

5. Run `dbt run -s "dbt_omop_rxn_silver"` to run the entire package or select specific models.
