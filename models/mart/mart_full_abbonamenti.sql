with ordini as (
    select * from {{ ref('stg_ordini') }}
),
utenti as (
    select * from {{ ref('stg_utenti') }}
),
piani as (
    select * from {{ ref('stg_piani') }}
),
coupon as (
    select * from {{ ref('stg_coupon') }}
),
transazioni as (
    select * from {{ ref('stg_transazioni') }}
)

select 
    o.order_id,
    o.data_ordine,
    u.nome as nome_utente,
    u.cognome as cognome_utente,
    p.nome_piano,
    p.prezzo as prezzo_listino,
    c.codice as codice_coupon,
    c.sconto as sconto_applicato,
    t.importo as importo_pagato,
    t.data_transazione
from ordini o
left join utenti u on o.user_id = u.user_id
left join piani p on o.plan_id = p.plan_id
left join coupon c on o.coupon_id = c.coupon_id
left join transazioni t on o.order_id = t.order_id