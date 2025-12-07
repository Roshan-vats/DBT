{% macro get_schema(base_name) %}
  {# 
    This macro returns the appropriate schema name based on the target environment.
    DEV (local/DBT Cloud IDE) -> RVATS
    PROD (scheduled job) -> Use the provided base_name
  #}
  
  {% if target.name == 'dev' or target.name == 'ci' %}
    {# For development/CI environments #}
    {% set schema_name = 'RVATS' %}
  {% elif target.name == 'prod' %}
    {# For production environment #}
    {% set schema_name = base_name %}
  {% else %}
    {# Default to RVATS for any other environment #}
    {% set schema_name = 'RVATS' %}
  {% endif %}
  
  {{ return(schema_name) }}
  
{% endmacro %}