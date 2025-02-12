 {% macro margin_percent(arg1, arg2) %}
     ROUND(safe_divide({{arg1}},{{arg2}}),2)
 {% endmacro %}