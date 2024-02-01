select
  person_id,
  death_date,
  death_datetime,
  death_type_concept_id,
  cause_concept_id,
  cause_source_value,
  cause_source_concept_id,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'death') }}
