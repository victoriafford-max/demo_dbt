{{ config(materialized='view') }}

select
    GenreId,
    Name
from {{ source('MUSIC', 'genre') }}