select
  c.concept_id,
  c.concept_name,
  c.domain_id,
  c.vocabulary_id,
  c.concept_class_id,
  c.standard_concept,
  c.concept_code,
  c.valid_start_date,
  c.valid_end_date,
  c.invalid_reason,
  c.{{ adapter.quote("Version") }},
  c.{{ adapter.quote("Year") }},
  c.{{ adapter.quote("Month") }},
  c.{{ adapter.quote("Day") }},
  c.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'concept') }} as c
