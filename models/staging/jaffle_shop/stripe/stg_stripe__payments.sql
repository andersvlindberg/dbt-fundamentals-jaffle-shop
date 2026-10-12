select
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_method,
    status,

    -- belopp lagras i cent, delar med 100 för hela valutaenheter
    amount / 100 as amount,
    created as created_at

from raw.stripe.payment