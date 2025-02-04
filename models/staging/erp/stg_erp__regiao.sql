with
    fonte_regiao as (
        select *
        from {{ source('erp', 'region') }}
    )


    , renomeado as (
        select 
            cast(REGION_ID as int) as id_regiao
            , cast(REGION_DESCRIPTION as string) as descricao_regiao
        from fonte_regiao
    )

select *
from renomeado