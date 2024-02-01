select
  cohort_definition_id,
  subject_id,
  cohort_start_date,
  cohort_end_date,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'cohort') }}
