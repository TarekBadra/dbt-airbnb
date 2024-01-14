SELECT
    *
FROM 
    {{ ref('fct_reviews') }} AS r
INNER JOIN
    {{ ref('dim_listings_cleansed') }} as l
ON r.listing_id = l.listing_id
WHERE
    l.created_at >= r.review_date