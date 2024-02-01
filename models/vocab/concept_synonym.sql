select
  concept_id,
  concept_synonym_name,
  language_concept_id,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'concept_synonym') }}
