select
  concept_id_1,
  concept_id_2,
  relationship_id,
  valid_start_date,
  valid_end_date,
  invalid_reason,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'concept_relationship') }}
