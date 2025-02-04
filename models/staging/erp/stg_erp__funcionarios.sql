with
    fonte_funcionarios as (
        select *
        from {{ source('erp', 'employees') }}
    )


    , renomeado as (
        select 
            cast(EMPLOYEE_ID as int) as id_funcionario
            , FIRST_NAME || ' ' || LAST_NAME as nome_funcionario
            , cast(CITY as varchar) as cidade_funcionario
            , cast(COUNTRY as varchar) as pais_funcionario
        from fonte_funcionarios
    )

select *
from renomeado