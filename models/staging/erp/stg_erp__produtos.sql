with
    fonte_produtos as (
        select *
        from {{ source('erp', 'products') }}
    )


    , renomeado as (
        select 
            cast(PRODUCT_ID as int) as id_produto
            , cast(SUPPLIER_ID as int) as fk_fornecedor 
            , cast(CATEGORY_ID as int) as fk_categoria
            , cast(PRODUCT_NAME as string) as nm_produto
            , cast(QUANTITY_PER_UNIT as string) as quantidade_por_unidade
            , cast(UNIT_PRICE as numeric(18,2)) as preco_por_unidade
            , cast(UNITS_IN_STOCK as int) as unidade_em_estoque
            , cast(UNITS_ON_ORDER as int) as unidade_por_pedido
        from fonte_produtos
    )

select *
from renomeado