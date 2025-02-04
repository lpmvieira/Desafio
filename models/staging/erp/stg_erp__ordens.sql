with
    fonte_ordem as (
        select *
        from {{ source('erp', 'orders') }}
    )


    , renomeado as (
        select 
            cast(ORDER_ID as int) id_pedido
            , cast(EMPLOYEE_ID as int) as fk_funcionario
            , cast(CUSTOMER_ID as string) as fk_cliente
            , cast(SHIP_VIA as int) as fk_transportadora
            , cast(ORDER_ID as int) numero_pedido
            , cast(ORDER_DATE as date) as data_do_pedido
            , cast(SHIPPED_DATE as date) as data_do_envio
            , cast(REQUIRED_DATE as date) as data_requerida_entrega
            , cast(FREIGHT as numeric) as frete
            , cast(SHIP_NAME as string) as nm_destinatario
            , cast(SHIP_CITY as string) as cidade_destinatario
            , cast(SHIP_REGION as string) as regiao_destinatario
            , cast(SHIP_COUNTRY as string) as pais_destinatario
        from fonte_ordem
    )

select *
from renomeado