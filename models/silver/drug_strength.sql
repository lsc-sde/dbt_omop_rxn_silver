select
  drug_concept_id,
  ingredient_concept_id,
  amount_value,
  amount_unit_concept_id,
  numerator_value,
  numerator_unit_concept_id,
  denominator_value,
  denominator_unit_concept_id,
  box_size,
  valid_start_date,
  valid_end_date,
  invalid_reason,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'drug_strength') }}
