select
  location_id,
  address_1,
  address_2,
  city,
  state,
  zip,
  county,
  location_source_value,
  country_concept_id,
  country_source_value,
  latitude,
  longitude,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'location') }}
