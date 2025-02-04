with    
    dim_transportadoras as (
        select 
            *
        from {{ ref('stg_erp__transportadoras') }}
    )

select *
from dim_transportadoras