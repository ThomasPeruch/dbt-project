{% macro select_columns_paciente(source_table,fl_origem) %}
    SELECT 
        id_origem as id_origem,
        INITCAP(TRIM(nome)) as nome,
        dt_origem as dt_origem,
        REGEXP_REPLACE( cpf, '[^0-9]', '', 'g') as cpf,
        data_nascimento as data_nascimento,
        CASE
            WHEN UPPER(sexo) = 'M' THEN 'Masculino'
            WHEN UPPER(sexo) = 'MACULINO' THEN 'Masculino'
            WHEN UPPER(sexo) = 'HOMEM' THEN 'Masculino'
            WHEN UPPER(sexo) = 'MULHER' THEN 'Feminino'
            WHEN UPPER(sexo) = 'F' THEN 'Feminino'
            WHEN UPPER(sexo) = 'FEMININO' THEN 'Feminino'
        END AS sexo,
        INITCAP(TRIM( nome_mae)) as nome_mae,
        NOW() as dt_system,
        LOWER( email) as email,
        telefone as telefone,
        'N' as fl_origem
    FROM {{source_table}}
    where data_nascimento is not null
    and (cpf is not null and TRIM(cpf) != '')
{% endmacro %}