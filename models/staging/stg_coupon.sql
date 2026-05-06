select
    id as coupon_id,
    codice,
    sconto
from {{ source('raw_pay', 'coupon') }}