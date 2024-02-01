select
  ee.episode_id,
  ee.event_id,
  ee.episode_event_field_concept_id,
  ee.{{ adapter.quote("Version") }},
  ee.{{ adapter.quote("Year") }},
  ee.{{ adapter.quote("Month") }},
  ee.{{ adapter.quote("Day") }},
  ee.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'episode_event') }} as ee
