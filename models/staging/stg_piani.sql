select
    id as plan_id,
    nome as nome_piano,
    prezzo,
    durata
from {{ source('raw_pay', 'piani') }}