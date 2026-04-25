{{ config(materialized='view') }}

select
    MediaTypeId,
    Name
from {{ source('MUSIC', 'media_type') }}