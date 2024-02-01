select
  cc.concept_class_id,
  cc.concept_class_name,
  cc.concept_class_concept_id,
  cc.{{ adapter.quote("Version") }},
  cc.{{ adapter.quote("Year") }},
  cc.{{ adapter.quote("Month") }},
  cc.{{ adapter.quote("Day") }},
  cc.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'concept_class') }} as cc
