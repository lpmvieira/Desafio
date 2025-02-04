with
    fonte_categorias as (
        select *
        from {{ source('erp', 'categories') }}
    )


    , renomeado as (
        select 
            cast (CATEGORY_ID as int) as id_categoria
            , cast (CATEGORY_NAME as string) as nome_categoria
            , cast (DESCRIPTION as string) as descricao_categoria
        from fonte_categorias
    )

select *
from renomeado