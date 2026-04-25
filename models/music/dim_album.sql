{{ config(materialized='view') }}

select
    AlbumId,
    Title,
    Prodyear,
    Cdyear
from {{ source('MUSIC', 'album') }}