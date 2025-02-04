with
    fonte_territorio as (
        select *
        from {{ source('erp', 'territories') }}
    )


    , renomeado as (
        select 
            cast(TERRITORY_ID as int) as id_territorio
            , cast(REGION_ID as int) as fk_regiao
            , cast(TERRITORY_DESCRIPTION as string) as descricao_territorio
        from fonte_territorio
    )

select *
from renomeado