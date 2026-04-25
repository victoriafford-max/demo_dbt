{{ config(materialized='view') }}

select
    ArtistId,
    Name,
    Birthyear,
    Country
from {{ source('MUSIC', 'artist') }}