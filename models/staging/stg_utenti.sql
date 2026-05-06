select
    id as user_id,
    nome,
    cognome,
    data_nascita,
    data_registrazione
from {{ source('raw_pay', 'utenti') }}