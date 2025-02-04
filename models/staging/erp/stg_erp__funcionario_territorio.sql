with
    fonte_funcionario_territorio as (
        select *
        from {{ source('erp', 'employee_territories') }}
    )


    , renomeado as (
        select 
            cast (EMPLOYEE_ID as int) as id_funcionario
            , cast (TERRITORY_ID as int) as id_territorio_funcionario
        from fonte_funcionario_territorio
    )

select *
from renomeado