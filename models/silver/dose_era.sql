select
  dose_era_id,
  person_id,
  drug_concept_id,
  unit_concept_id,
  dose_value,
  dose_era_start_date,
  dose_era_end_date,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'dose_era') }}
