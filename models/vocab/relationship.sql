select
  r.relationship_id,
  r.relationship_name,
  r.is_hierarchical,
  r.defines_ancestry,
  r.reverse_relationship_id,
  r.relationship_concept_id,
  r.{{ adapter.quote("Version") }},
  r.{{ adapter.quote("Year") }},
  r.{{ adapter.quote("Month") }},
  r.{{ adapter.quote("Day") }},
  r.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'relationship') }} as r
