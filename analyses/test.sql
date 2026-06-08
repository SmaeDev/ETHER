{{ codegen.generate_model_yaml(['stablecoin_activity_per_day'])}}




{# AUDIT
{{ audit_helper.compare_relations( source('eth', 'contracts'), source('eth', 'contracts_clone')) }} #}


{# DBT_UTILS STAR
Select 
{{ dbt_utils.star(from = ref('stg_transactions_enriched'), except=['new_fields'], quote_identifiers=False, prefix='stg_') }} 
from {{ ref('stg_transactions_enriched')}} #}

{# CODEGEN
{{ codegen.generate_source('eth_schema', database_name='eth', generate_columns= True, include_data_types= False) }}

{{ codegen.generate_model_yaml(['stg_transactions', 'stg_transactions_enriched', 'stablecoin_activity_per_day'])}} #}
