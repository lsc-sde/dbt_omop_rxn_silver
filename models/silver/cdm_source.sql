select
    cs.cdm_source_name,
    cs.cdm_source_abbreviation,
    cs.cdm_holder,
    cs.source_description,
    cs.source_documentation_reference,
    cs.cdm_etl_reference,
    cs.source_release_date,
    cs.cdm_release_date,
    cs.cdm_version,
    cs.cdm_version_concept_id,
    cs.vocabulary_version,
    cs.{{ adapter.quote("Version") }},
    cs.{{ adapter.quote("Year") }},
    cs.{{ adapter.quote("Month") }},
    cs.{{ adapter.quote("Day") }},
    cs.{{ adapter.quote("ProcessInstanceId") }}
from {{ source('omop', 'cdm_source') }} as cs
