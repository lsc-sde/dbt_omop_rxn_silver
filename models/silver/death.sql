select
  d.person_id,
  d.death_date,
  d.death_datetime,
  d.death_type_concept_id,
  d.cause_concept_id,
  d.cause_source_value,
  d.cause_source_concept_id,
  d.{{ adapter.quote("Version") }},
  d.{{ adapter.quote("Year") }},
  d.{{ adapter.quote("Month") }},
  d.{{ adapter.quote("Day") }},
  d.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'death') }} as d
inner join {{ ref('person') }} as p
  on d.person_id = p.person_id
where d.death_date >= to_date(p.birth_datetime)
