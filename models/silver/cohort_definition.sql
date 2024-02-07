
    select
        cohort_definition_id,
        cohort_definition_name,
        cohort_definition_description,
        definition_type_concept_id,
        cohort_definition_syntax,
        subject_concept_id,
        cohort_initiation_date,
        Version,
        Year,
        Month,
        Day,
        ProcessInstanceId

    from {{ source('omop', 'cohort_definition') }}
