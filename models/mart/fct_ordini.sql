select
    order_id,
    user_id,
    plan_id,
    data_ordine
from {{ ref('stg_ordini') }}