{% macro insert_audits(action_name) %}

insert into raw.jaffle_shop.dbt_audits (audit_type) values ('{{ action_name }}')

{% endmacro %}