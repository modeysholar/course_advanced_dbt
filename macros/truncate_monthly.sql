{% macro truncate_monthly(column_name) %}
DATE_TRUNC('month', {{column_name}})

{% endmacro %}
