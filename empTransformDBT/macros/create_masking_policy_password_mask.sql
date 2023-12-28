
{% macro create_masking_policy_password_mask(node_database,node_schema) %}

CREATE OR REPLACE MASKING POLICY {{node_database}}.{{node_schema}}.password_mask AS (val string) RETURNS string ->
  CASE
    WHEN CURRENT_ROLE() IN ('ACCOUNTADMIN') THEN val
    ELSE '*********'
  END

{% endmacro %}