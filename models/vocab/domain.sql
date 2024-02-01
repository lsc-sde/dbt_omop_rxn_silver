select
  d.domain_id,
  d.domain_name,
  d.domain_concept_id,
  d.{{ adapter.quote("Version") }},
  d.{{ adapter.quote("Year") }},
  d.{{ adapter.quote("Month") }},
  d.{{ adapter.quote("Day") }},
  d.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'domain') }} as d
