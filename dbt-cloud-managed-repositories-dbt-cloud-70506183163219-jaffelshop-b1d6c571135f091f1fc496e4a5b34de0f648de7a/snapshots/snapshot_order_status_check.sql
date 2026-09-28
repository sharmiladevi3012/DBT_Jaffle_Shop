{% snapshot snapshot_order_status_check %}

{{ 
    config(
        target_schema = 'my_snapshots',
        strategy = 'check',
        unique_key = 'order_id',
        check_cols = ['status'],
        invalidate_hard_deletes = True
    )
}}

select * from {{ ref('orders') }}

{% endsnapshot %}