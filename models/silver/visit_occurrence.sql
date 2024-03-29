select
  vo.visit_occurrence_id,
  vo.person_id,
  vo.visit_concept_id,
  vo.visit_start_date,
  vo.visit_start_datetime,
  vo.visit_end_date,
  vo.visit_end_datetime,
  vo.visit_type_concept_id,
  vo.provider_id,
  vo.care_site_id,
  vo.visit_source_value,
  vo.visit_source_concept_id,
  vo.admitted_from_concept_id,
  vo.admitted_from_source_value,
  vo.discharged_to_concept_id,
  vo.discharged_to_source_value,
  vo.preceding_visit_occurrence_id,
  vo.{{ adapter.quote("Version") }},
  vo.{{ adapter.quote("Year") }},
  vo.{{ adapter.quote("Month") }},
  vo.{{ adapter.quote("Day") }},
  vo.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'visit_occurrence') }} as vo
inner join {{ ref('person') }} as p
  on vo.person_id = p.person_id
where
  vo.visit_start_date >= to_date(p.birth_datetime)
-- ToDo: Add a clause to exclude visits after death
