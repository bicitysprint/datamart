connection: "datamart"

# include all the views
include: "/views/**/*.view"
include: "/*.view"

datagroup: datamart_default_datagroup {
sql_trigger: SELECT count(jobno) FROM datmart.dashboards;;
  max_cache_age: "24 hour"
}


explore: dashboards {

  label: "Job level reporting"
  persist_with: datamart_default_datagroup
  group_label: "DATAMART"
}
