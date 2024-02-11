select
  stcm.source_code,
  stcm.source_concept_id,
  stcm.source_vocabulary_id,
  stcm.source_code_description,
  stcm.target_concept_id,
  stcm.target_vocabulary_id,
  stcm.valid_start_date,
  stcm.valid_end_date,
  stcm.invalid_reason,
  stcm.{{ adapter.quote("Version") }},
  stcm.{{ adapter.quote("Year") }},
  stcm.{{ adapter.quote("Month") }},
  stcm.{{ adapter.quote("Day") }},
  stcm.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('vocab', 'source_to_concept_map') }} as stcm
