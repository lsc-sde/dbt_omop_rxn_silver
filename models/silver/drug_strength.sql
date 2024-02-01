select
  ds.drug_concept_id,
  ds.ingredient_concept_id,
  ds.amount_value,
  ds.amount_unit_concept_id,
  ds.numerator_value,
  ds.numerator_unit_concept_id,
  ds.denominator_value,
  ds.denominator_unit_concept_id,
  ds.box_size,
  ds.valid_start_date,
  ds.valid_end_date,
  ds.invalid_reason,
  ds.{{ adapter.quote("Version") }},
  ds.{{ adapter.quote("Year") }},
  ds.{{ adapter.quote("Month") }},
  ds.{{ adapter.quote("Day") }},
  ds.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'drug_strength') }} as ds
