with
    fonte_clientes as (
        select *
        from {{ source('erp', 'customers') }}
    )

    , renomeado as (
        select
            cast(c1 as varchar) as id_cliente
            , cast(c2 as varchar) as nome_empresa_cliente
            , cast(c9 as varchar) as pais_cliente
        from fonte_clientes
    )

select *
from renomeado
    where id_cliente <> 'customer_id'
    and nome_empresa_cliente <> 'company_name'
    and pais_cliente <> 'country'