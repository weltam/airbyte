

  create  table
    test_normalization.`dedup_exchange_rate_scd__dbt_tmp`
  as (
    
-- SQL model to build a Type 2 Slowly Changing Dimension (SCD) table for each record identified by their primary key
select
    id,
    currency,
    `date`,
    timestamp_col,
    `HKD@spéçiäl & characters`,
    hkd_special___characters,
    nzd,
    usd,
  `date` as _airbyte_start_at,
  lag(`date`) over (
    partition by id, currency, cast(nzd as char)
    order by `date` is null asc, `date` desc, _airbyte_emitted_at desc
  ) as _airbyte_end_at,
  case when lag(`date`) over (
    partition by id, currency, cast(nzd as char)
    order by `date` is null asc, `date` desc, _airbyte_emitted_at desc
  ) is null  then 1 else 0 end as _airbyte_active_row,
  _airbyte_emitted_at,
  _airbyte_dedup_exchange_rate_hashid
from _airbyte_test_normalization.`dedup_exchange_rate_ab4`
-- dedup_exchange_rate from test_normalization._airbyte_raw_dedup_exchange_rate
where _airbyte_row_num = 1
  )
