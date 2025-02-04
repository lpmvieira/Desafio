with
    dim_funcionarios as (
        select *
        from {{ ref('stg_erp__funcionarios') }}
    )

select *
from dim_funcionarios