{{ config(materialized='view') }}

select
    pt.PlaylistId,
    pt.TrackId,
    p.Name as Name
from {{ source('MUSIC', 'playlisttrack') }} pt
join {{ source('MUSIC', 'playlist') }} p
    on pt.PlaylistId = p.PlaylistId