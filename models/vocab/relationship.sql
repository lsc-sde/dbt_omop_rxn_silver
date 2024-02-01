select
  relationship_id,
  relationship_name,
  is_hierarchical,
  defines_ancestry,
  reverse_relationship_id,
  relationship_concept_id,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'relationship') }}
