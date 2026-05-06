select
    id as order_id,
    id_utente as user_id,
    id_piano as plan_id,
    id_metodo as method_id,
    data_ordine
from {{ source('raw_pay', 'ordini') }}