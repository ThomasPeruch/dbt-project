{% macro select_where_paciente() %}
where data_nascimento is not null
    and (cpf is not null and TRIM(cpf) != '')
{% endmacro %}