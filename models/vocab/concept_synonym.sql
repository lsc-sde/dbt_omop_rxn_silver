select
  cs.concept_id,
  cs.concept_synonym_name,
  cs.language_concept_id,
  cs.{{ adapter.quote("Version") }},
  cs.{{ adapter.quote("Year") }},
  cs.{{ adapter.quote("Month") }},
  cs.{{ adapter.quote("Day") }},
  cs.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'concept_synonym') }} as cs
