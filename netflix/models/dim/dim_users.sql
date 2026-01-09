WITH ratings as (
    select distinct user_id
    from {{ref('src_ratings')}}
),
tags as(
    select distinct user_id
    from {{ref('src_tags')}}
)
SELECT DISTINCT user_id
from (
    select * from ratings
    UNION
    select * from tags
)