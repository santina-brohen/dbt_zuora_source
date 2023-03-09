{% macro get_invoice_item_columns() %}

{% set columns = [
    {"name": "_fivetran_synced", "datatype": dbt.type_timestamp()},
    {"name": "account_id", "datatype": dbt.type_string()},
    {"name": "account_receivable_accounting_code_id", "datatype": dbt.type_string()},
    {"name": "accounting_code", "datatype": dbt.type_string()}, 
    {"name": "amendment_id", "datatype": dbt.type_string()},
    {"name": "applied_to_invoice_item_id", "datatype": dbt.type_string()},
    {"name": "balance", "datatype": dbt.type_float()},
    {"name": "bill_to_contact_id", "datatype": dbt.type_string()}, 
    {"name": "charge_amount", "datatype": dbt.type_float()}, 
    {"name": "charge_amount_home_currency", "datatype": dbt.type_float()},
    {"name": "charge_date", "datatype": dbt.type_timestamp()},
    {"name": "charge_name", "datatype": dbt.type_string()},
    {"name": "created_by_id", "datatype": dbt.type_string()},
    {"name": "created_date", "datatype": dbt.type_timestamp()},
    {"name": "default_payment_method_id", "datatype": dbt.type_string()},
    {"name": "deferred_revenue_accounting_code_id", "datatype": dbt.type_string()},
    {"name": "exchange_rate", "datatype": dbt.type_float()},
    {"name": "exchange_rate_date", "datatype": "date"},
    {"name": "exclude_item_billing_from_revenue_accounting", "datatype": "boolean"},
    {"name": "home_currency", "datatype": dbt.type_string()},
    {"name": "id", "datatype": dbt.type_string()},
    {"name": "invoice_id", "datatype": dbt.type_string()},
    {"name": "journal_entry_id", "datatype": dbt.type_string()},
    {"name": "journal_run_id", "datatype": dbt.type_string()},
    {"name": "parent_account_id", "datatype": dbt.type_string()},
    {"name": "processing_type", "datatype": dbt.type_string()},
    {"name": "product_id", "datatype": dbt.type_string()},
    {"name": "product_rate_plan_charge_id", "datatype": dbt.type_string()},
    {"name": "product_rate_plan_id", "datatype": dbt.type_string()},
    {"name": "provider_exchange_rate_date", "datatype": "date"},
    {"name": "quantity", "datatype": dbt.type_float()},
    {"name": "rate_plan_charge_id", "datatype": dbt.type_string()},
    {"name": "rate_plan_id", "datatype": dbt.type_string()},
    {"name": "recognized_revenue_accounting_code_id", "datatype": dbt.type_string()},
    {"name": "rev_rec_start_date", "datatype": "date"},
    {"name": "service_end_date", "datatype": "date"},
    {"name": "service_start_date", "datatype": "date"},
    {"name": "sku", "datatype": dbt.type_string()},
    {"name": "sold_to_contact_id", "datatype": dbt.type_string()},
    {"name": "source_item_type", "datatype": dbt.type_string()},
    {"name": "subscription_id", "datatype": dbt.type_string()},
    {"name": "tax_amount", "datatype": dbt.type_float()},
    {"name": "tax_code", "datatype": dbt.type_string()},
    {"name": "tax_exempt_amount", "datatype": dbt.type_float()},
    {"name": "tax_mode", "datatype": dbt.type_string()},
    {"name": "transaction_currency", "datatype": dbt.type_string()},
    {"name": "unit_price", "datatype": dbt.type_float()},
    {"name": "uom", "datatype": dbt.type_string()},
    {"name": "updated_by_id", "datatype": dbt.type_string()},
    {"name": "updated_date", "datatype": dbt.type_timestamp()}
] %}

{{ return(columns) }}

{% endmacro %}
