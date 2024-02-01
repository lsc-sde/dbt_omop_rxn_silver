select
  op.observation_period_id,
  op.person_id,
  op.observation_period_start_date,
  op.observation_period_end_date,
  op.period_type_concept_id,
  op.{{ adapter.quote("Version") }},
  op.{{ adapter.quote("Year") }},
  op.{{ adapter.quote("Month") }},
  op.{{ adapter.quote("Day") }},
  op.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'observation_period') }} as op
