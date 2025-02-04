with
    fonte_fornecedores as (
        select *
        from {{ source('erp', 'suppliers') }}
    )


    , renomeado as (
        select
            cast(c1 as int) as id_fornecedor
            , cast(c2 as varchar) as nome_fornecedor
            , cast(c6 as varchar) as cidade_fornecedor
            , cast(c9 as varchar) as pais_fornecedor
        from fonte_fornecedores
    )

select *
from renomeado
    where nome_fornecedor <> 'company_name'
    and cidade_fornecedor <> 'city'
    and pais_fornecedor <> 'country'