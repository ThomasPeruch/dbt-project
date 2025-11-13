{% macro upsert_paciente(source_table, target_table, fl_origem) %}
    {% set query %}
        INSERT INTO {{ target_table }} (
            {{ get_columns_paciente() }}
        )
        {{ select_columns_paciente(source_table, fl_origem) }}
        {{ on_conflict_paciente() }}
    {% endset %}

    {% do run_query(query) %}
    {{ log("Upsert realizado com sucesso na tabela " ~ target_table, info=True) }}
{% endmacro %}
