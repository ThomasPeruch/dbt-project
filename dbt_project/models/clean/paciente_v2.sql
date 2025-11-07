{{ config(
    materialized='table', 
    post_hook='ALTER TABLE {{this}} ADD PRIMARY KEY (id)') 
}}

select 
    gen_random_uuid() as id,
    id_paciente as id_origem,
    INITCAP(TRIM( nome)) as nome,
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
    LOWER( email) as email,
    telefone as telefone
from {{ source('raw', 'paciente') }}
where data_nascimento is not null
    and (cpf is not null and TRIM(cpf) != '')