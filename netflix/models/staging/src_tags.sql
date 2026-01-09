{{
    config(
        materialized='table',
        on_schema_change='fail'
    )
}}

with raw_tags as(
    select * 
    from movielens.raw.raw_tags
)
select userId as user_id,
movieId as movie_id,
tag,
TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
from raw_tags
