select
  ancestor_concept_id,
  descendant_concept_id,
  min_levels_of_separation,
  max_levels_of_separation,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'concept_ancestor') }}
