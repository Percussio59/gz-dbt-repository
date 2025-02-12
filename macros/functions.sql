{% macro margin_percent(revenue, purchase) %}
ROUND(safe_divide(revenue,purchase),2)
{% endmacro %}
