CREATE TABLE IF NOT EXISTS transformers AS (
    SELECT
        *
    FROM
        read_csv_auto('../salaries.csv')
);