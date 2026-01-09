{% macro no_nulls(model) %}
select * from {{model}} where 
{% for col in adapter.dbt_utils.dbt_utils.get_filtered_columns_in_relation(model) %}
{{col.column}} is null or 
{% endfor %}
FALSE
{% endmacro %}