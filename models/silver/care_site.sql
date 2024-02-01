select
  care_site_id,
  care_site_name,
  place_of_service_concept_id,
  location_id,
  care_site_source_value,
  place_of_service_source_value,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'care_site') }}
