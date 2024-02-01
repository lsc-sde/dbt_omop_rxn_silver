select
  note_id,
  person_id,
  note_date,
  note_datetime,
  note_type_concept_id,
  note_class_concept_id,
  note_title,
  note_text,
  encoding_concept_id,
  language_concept_id,
  provider_id,
  visit_occurrence_id,
  visit_detail_id,
  note_source_value,
  note_event_id,
  note_event_field_concept_id,
  {{ adapter.quote("Version") }},
  {{ adapter.quote("Year") }},
  {{ adapter.quote("Month") }},
  {{ adapter.quote("Day") }},
  {{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'note') }}
