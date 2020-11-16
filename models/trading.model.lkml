connection: "datamart"

# include all the views
include: "/views/**/*.view"

datagroup: trading_default_datagroup {
  sql_trigger: SELECT count(jobno) FROM datmart.trading;;
  max_cache_age: "24 hour"
}


explore: trading {

  label: "Traiding"
  persist_with: trading_default_datagroup
  group_label: "DATAMART"
}
