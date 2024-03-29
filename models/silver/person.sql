select
  p.person_id,
  p.gender_concept_id,
  p.year_of_birth,
  p.month_of_birth,
  p.day_of_birth,
  p.birth_datetime,
  p.race_concept_id,
  p.ethnicity_concept_id,
  p.location_id,
  p.provider_id,
  p.care_site_id,
  p.person_source_value,
  p.gender_source_value,
  p.gender_source_concept_id,
  p.race_source_value,
  p.race_source_concept_id,
  p.ethnicity_source_value,
  p.ethnicity_source_concept_id,
  p.{{ adapter.quote("Version") }},
  p.{{ adapter.quote("Year") }},
  p.{{ adapter.quote("Month") }},
  p.{{ adapter.quote("Day") }},
  p.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'person') }} as p
where p.birth_datetime <= {{ dbt.current_timestamp() }}
