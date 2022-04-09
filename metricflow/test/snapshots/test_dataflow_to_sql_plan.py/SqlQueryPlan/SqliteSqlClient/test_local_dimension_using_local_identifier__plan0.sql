-- Compute Metrics via Expressions
SELECT
  subq_2.listings
  , subq_2.listing__country_latest
FROM (
  -- Aggregate Measures
  SELECT
    SUM(subq_1.listings) AS listings
    , subq_1.listing__country_latest
  FROM (
    -- Pass Only Elements:
    --   ['listings', 'listing__country_latest']
    SELECT
      subq_0.listings
      , subq_0.listing__country_latest
    FROM (
      -- Read Elements From Data Source 'listings_latest'
      SELECT
        1 AS listings
        , listings_latest_src_10003.capacity AS largest_listing
        , listings_latest_src_10003.capacity AS smallest_listing
        , listings_latest_src_10003.created_at AS ds
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS ds__week
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS ds__month
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS ds__quarter
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS ds__year
        , listings_latest_src_10003.created_at
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS created_at__week
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS created_at__month
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS created_at__quarter
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS created_at__year
        , listings_latest_src_10003.country AS country_latest
        , listings_latest_src_10003.is_lux AS is_lux_latest
        , listings_latest_src_10003.capacity AS capacity_latest
        , listings_latest_src_10003.created_at AS listing__ds
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__ds__week
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__ds__month
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__ds__quarter
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__ds__year
        , listings_latest_src_10003.created_at AS listing__created_at
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__created_at__week
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__created_at__month
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__created_at__quarter
        , '__DATE_TRUNC_NOT_SUPPORTED__' AS listing__created_at__year
        , listings_latest_src_10003.country AS listing__country_latest
        , listings_latest_src_10003.is_lux AS listing__is_lux_latest
        , listings_latest_src_10003.capacity AS listing__capacity_latest
        , listings_latest_src_10003.listing_id AS listing
        , listings_latest_src_10003.user_id AS user
        , listings_latest_src_10003.user_id AS listing__user
      FROM ***************************.dim_listings_latest listings_latest_src_10003
    ) subq_0
  ) subq_1
  GROUP BY
    subq_1.listing__country_latest
) subq_2