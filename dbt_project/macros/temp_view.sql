{% macro temp_view(source_table, target_table, fl_origem) %}
SELECT {{ get_columns_paciente() }}
FROM ( {{ select_columns_paciente(source_table, fl_origem)}} )
{% endmacro %}