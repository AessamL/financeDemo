connection: "financial"

# include all the views
include: "*.view"

datagroup: financialdemo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: financialdemo_default_datagroup

explore: financial {}
