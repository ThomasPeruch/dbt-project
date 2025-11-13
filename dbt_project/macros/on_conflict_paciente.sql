{% macro on_conflict_paciente() %}
ON CONFLICT (cpf)
    DO UPDATE SET
    	id_origem = EXCLUDED.id_origem,
        fl_origem = 'N' ,
        dt_origem = EXCLUDED.dt_origem,
        nome = EXCLUDED.nome,
        data_nascimento = EXCLUDED.data_nascimento,
        sexo = EXCLUDED.sexo,
        nome_mae = EXCLUDED.nome_mae,
        dt_system = NOW(),
        email = EXCLUDED.email,
        telefone = EXCLUDED.telefone
{% endmacro %}