with
    dim_calendar as (
        {{ dbt_date.get_date_dimension("1996-01-01", "1999-01-01")}}
    )

select *
from dim_calendar