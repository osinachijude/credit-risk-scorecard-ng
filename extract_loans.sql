-- extract_loans.sql
-- Simulated production query for loan data extraction
SELECT
    customer_id,
    loan_amount_ngn,
    tenure_months,
    interest_rate,
    age,
    gender,
    employment_status,
    monthly_income_ngn,
    residence_type,
    bureau_score,
    existing_loans_count,
    ROUND(
        (loan_amount_ngn * interest_rate / tenure_months) / NULLIF(monthly_income_ngn, 0), 3
    ) AS debt_to_income_ratio,
    mobile_phone_usage_days,
    savings_balance_ngn,
    loan_purpose,
    region,
    application_channel,
    CASE 
        WHEN delinquency_90_days_flag = 1 
             AND DATEDIFF(month, application_date, first_payment_date) <= 12 
        THEN 1 
        ELSE 0 
    END AS default_target
FROM
    raw_loan_applications
WHERE
    application_date BETWEEN '2023-01-01' AND '2023-12-31'
    AND status = 'Funded';