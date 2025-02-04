with
    fonte_transportadoras as (
        select *
        from {{ source('erp', 'shippers') }}
    )


    , renomeado as (
        select 
            cast(SHIPPER_ID as int) as id_transportadora
            ,cast(COMPANY_NAME as varchar) as nome_transportadora
        from fonte_transportadoras
    )

select *
from renomeado