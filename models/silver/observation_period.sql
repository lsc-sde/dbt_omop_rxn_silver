select
  observation_period_id,
  person_id,
  observation_period_start_date,
  observation_period_end_date,
  period_type_concept_id,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'observation_period') }}
