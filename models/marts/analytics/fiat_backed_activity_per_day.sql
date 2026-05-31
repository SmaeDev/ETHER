select * 

{# pour bypasser le deprecation date, v=2 #}
from {{ ref('stablecoin_activity_per_day', v=2) }}

where type='Fiat-backed'