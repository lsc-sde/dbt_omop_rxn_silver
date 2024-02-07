select
  v.vocabulary_id,
  v.vocabulary_name,
  v.vocabulary_reference,
  v.vocabulary_version,
  v.vocabulary_concept_id,
  v.{{ adapter.quote("Version") }},
  v.{{ adapter.quote("Year") }},
  v.{{ adapter.quote("Month") }},
  v.{{ adapter.quote("Day") }},
  v.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'vocabulary') }} as v
