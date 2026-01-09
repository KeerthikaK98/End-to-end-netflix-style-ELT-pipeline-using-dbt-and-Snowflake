select movie_id,
tag_id
from {{ref('fct_genome_score')}}
where relevance_score<=0