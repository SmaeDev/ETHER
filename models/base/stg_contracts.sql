select
    address,
    block_number,
    byte_code,
    date,
    last_modified

from {{ source('eth', 'contracts')}}