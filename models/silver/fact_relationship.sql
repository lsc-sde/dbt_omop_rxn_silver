select
  fr.domain_concept_id_1,
  fr.fact_id_1,
  fr.domain_concept_id_2,
  fr.fact_id_2,
  fr.relationship_concept_id,
  fr.{{ adapter.quote("Version") }},
  fr.{{ adapter.quote("Year") }},
  fr.{{ adapter.quote("Month") }},
  fr.{{ adapter.quote("Day") }},
  fr.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'fact_relationship') }} as fr
