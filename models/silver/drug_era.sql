select
  de.drug_era_id,
  de.person_id,
  de.drug_concept_id,
  de.drug_era_start_date,
  de.drug_era_end_date,
  de.drug_exposure_count,
  de.gap_days,
  de.{{ adapter.quote("Version") }},
  de.{{ adapter.quote("Year") }},
  de.{{ adapter.quote("Month") }},
  de.{{ adapter.quote("Day") }},
  de.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'drug_era') }} as de
