{% macro incremental_condition(column_name, lookback_window=3) %}

{% if is_incremental() %}
AND {{ column_name }} > (SELECT max({{ column_name }}) - interval '{{ lookback_window }} day' FROM {{ this }})

{% endif %}

{% endmacro %}