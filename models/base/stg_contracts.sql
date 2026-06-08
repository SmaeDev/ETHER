select
    address,
    block_number,
    byte_code as bytecode,
    date,
    last_modified

from {{ source('eth', 'contracts')}}