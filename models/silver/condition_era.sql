select
  condition_era_id,
  person_id,
  condition_concept_id,
  condition_era_start_date,
  condition_era_end_date,
  condition_occurrence_count,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'condition_era') }}
