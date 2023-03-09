{% macro get_rate_plan_charge_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "account_id", "datatype": dbt.type_string()},
    {"name": "account_receivable_accounting_code_id", "datatype": dbt.type_string()},
    {"name": "accounting_code", "datatype": dbt.type_string()},
    {"name": "amended_by_order_on", "datatype": "date"},
    {"name": "amendment_id", "datatype": dbt.type_string()},
    {"name": "apply_discount_to", "datatype": dbt.type_string()},
    {"name": "bill_cycle_day", "datatype": dbt.type_int()},
    {"name": "bill_cycle_type", "datatype": dbt.type_string()},
    {"name": "bill_to_contact_id", "datatype": dbt.type_string()},
    {"name": "bill_to_contact_snapshot_id", "datatype": dbt.type_string()},
    {"name": "billing_period", "datatype": dbt.type_string()}, 
    {"name": "billing_timing", "datatype": dbt.type_string()},
    {"name": "booking_exchange_rate", "datatype": dbt.type_float()},
    {"name": "booking_exchange_rate_date", "datatype": "date"}, 
    {"name": "charge_model", "datatype": dbt.type_string()},
    {"name": "charge_number", "datatype": dbt.type_string()},
    {"name": "charge_type", "datatype": dbt.type_string()},
    {"name": "charged_through_date", "datatype": "date"},
    {"name": "created_by_id", "datatype": dbt.type_string()},
    {"name": "created_date", "datatype": dbt.type_timestamp()},
    {"name": "credit_option", "datatype": dbt.type_string()},
    {"name": "default_payment_method_id", "datatype": dbt.type_string()},
    {"name": "deferred_revenue_accounting_code_id", "datatype": dbt.type_string()},
    {"name": "description", "datatype": dbt.type_string()},
    {"name": "discount_level", "datatype": dbt.type_string()},
    {"name": "dmrc", "datatype": dbt.type_float()}, 
    {"name": "dmrchome_currency", "datatype": dbt.type_float()}, 
    {"name": "dtcv", "datatype": dbt.type_float()}, 
    {"name": "dtcvhome_currency", "datatype": dbt.type_float()},
    {"name": "effective_end_date", "datatype": "date"},
    {"name": "effective_start_date", "datatype": "date"},
    {"name": "end_date_condition", "datatype": dbt.type_string()},
    {"name": "exchange_rate", "datatype": dbt.type_float()},
    {"name": "exchange_rate_date", "datatype": "date"},
    {"name": "home_currency", "datatype": dbt.type_string()},
    {"name": "id", "datatype": dbt.type_string()},
    {"name": "invoice_owner_id", "datatype": dbt.type_string()}, 
    {"name": "is_prepaid", "datatype": "boolean"},
    {"name": "is_processed", "datatype": "boolean"}, 
    {"name": "mrr", "datatype": dbt.type_float()},
    {"name": "mrrhome_currency", "datatype": dbt.type_float()},
    {"name": "name", "datatype": dbt.type_string()},
    {"name": "number_of_periods", "datatype": dbt.type_int()},
    {"name": "original_id", "datatype": dbt.type_string()},
    {"name": "original_order_date", "datatype": "date"},
    {"name": "price_change_option", "datatype": dbt.type_string()},
    {"name": "price_increase_percentage", "datatype": dbt.type_float()},
    {"name": "processed_through_date", "datatype": "date"},
    {"name": "product_id", "datatype": dbt.type_string()},
    {"name": "product_rate_plan_charge_id", "datatype": dbt.type_string()},
    {"name": "product_rate_plan_id", "datatype": dbt.type_string()}, 
    {"name": "quantity", "datatype": dbt.type_float()},
    {"name": "rate_plan_id", "datatype": dbt.type_string()}, 
    {"name": "recognized_revenue_accounting_code_id", "datatype": dbt.type_string()},
    {"name": "segment", "datatype": dbt.type_int()},
    {"name": "sold_to_contact_id", "datatype": dbt.type_string()}, 
    {"name": "specific_billing_period", "datatype": dbt.type_int()},
    {"name": "specific_end_date", "datatype": "date"},
    {"name": "specific_list_price_base", "datatype": dbt.type_int()},
    {"name": "subscription_id", "datatype": dbt.type_string()},
    {"name": "subscription_owner_id", "datatype": dbt.type_string()},
    {"name": "tcv", "datatype": dbt.type_float()}, 
    {"name": "tcvhome_currency", "datatype": dbt.type_float()},
    {"name": "transaction_currency", "datatype": dbt.type_string()},
    {"name": "trigger_date", "datatype": "date"},
    {"name": "trigger_event", "datatype": dbt.type_string()},
    {"name": "uom", "datatype": dbt.type_string()},
    {"name": "up_to_periods", "datatype": dbt.type_int()},
    {"name": "up_to_periods_type", "datatype": dbt.type_string()},
    {"name": "updated_by_id", "datatype": dbt.type_string()},
    {"name": "updated_date", "datatype": dbt.type_timestamp()}, 
    {"name": "version", "datatype": dbt.type_int()},
    {"name": "weekly_bill_cycle_day", "datatype": dbt.type_string()}
] %}

{{ fivetran_utils.add_pass_through_columns(columns, var('zuora_rate_plan_charge_pass_through_columns')) }}

{{ return(columns) }}

{% endmacro %}
