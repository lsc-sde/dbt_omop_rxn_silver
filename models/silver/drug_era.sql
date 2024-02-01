select
  drug_era_id,
  person_id,
  drug_concept_id,
  drug_era_start_date,
  drug_era_end_date,
  drug_exposure_count,
  gap_days,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'drug_era') }}
