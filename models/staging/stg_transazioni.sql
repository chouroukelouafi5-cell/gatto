select
    id as transaction_id,
    id_ordine as order_id,
    data_transazione,
    importo
from {{ source('raw_pay', 'transazioni') }}