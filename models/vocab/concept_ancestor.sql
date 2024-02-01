select
  ca.ancestor_concept_id,
  ca.descendant_concept_id,
  ca.min_levels_of_separation,
  ca.max_levels_of_separation,
  ca.{{ adapter.quote("Version") }},
  ca.{{ adapter.quote("Year") }},
  ca.{{ adapter.quote("Month") }},
  ca.{{ adapter.quote("Day") }},
  ca.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'concept_ancestor') }} as ca
