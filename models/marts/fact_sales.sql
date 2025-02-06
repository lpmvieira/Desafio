with
    fact_sales as (
        select *
        from {{ ref('int_vendas__metricas_de_vendas') }}
    )

select *
from fact_sales