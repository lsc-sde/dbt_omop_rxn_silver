select
  cs.care_site_id,
  cs.care_site_name,
  cs.place_of_service_concept_id,
  cs.location_id,
  cs.care_site_source_value,
  cs.place_of_service_source_value,
  cs.{{ adapter.quote("Version") }},
  cs.{{ adapter.quote("Year") }},
  cs.{{ adapter.quote("Month") }},
  cs.{{ adapter.quote("Day") }},
  cs.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'care_site') }} as cs
