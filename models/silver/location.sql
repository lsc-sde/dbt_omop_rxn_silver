select
  l.location_id,
  l.address_1,
  l.address_2,
  l.city,
  l.state,
  l.zip,
  l.county,
  l.location_source_value,
  l.country_concept_id,
  l.country_source_value,
  l.latitude,
  l.longitude,
  l.{{ adapter.quote("Version") }},
  l.{{ adapter.quote("Year") }},
  l.{{ adapter.quote("Month") }},
  l.{{ adapter.quote("Day") }},
  l.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'location') }} as l
