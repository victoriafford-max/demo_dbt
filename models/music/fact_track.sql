{{ config(materialized='view') }}

select distinct
    t.TrackId,
    t.Title as Name,
    t.MediaTypeId,
    t.GenreId,
    t.AlbumId,
    a.ArtistId,
    t.Composer,
    t.Milliseconds,
    t.Bytes,
    t.UnitPrice
from {{ source('MUSIC', 'track') }} t
left join {{ source('MUSIC', 'album') }} a
    on a.AlbumId = t.AlbumId
left join {{ source('MUSIC', 'artist') }} art
    on art.ArtistId = a.ArtistId