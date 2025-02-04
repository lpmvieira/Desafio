with
    fonte_ordem_itens as (
        select *
        from {{ source('erp', 'order_details') }}
    )


    , renomeado as (
        select 
            cast(ORDER_ID as int) as id_pedido
            , cast(PRODUCT_ID as int) as fk_produto
            , cast(discount as numeric(18,2)) as desconto_perc
            , cast(UNIT_PRICE as numeric(18,2)) as preco_da_unidade
            , cast(quantity as int) as quantidade
        from fonte_ordem_itens
    )

select *
from renomeado