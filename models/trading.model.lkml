connection: "datamart"

# include all the views
include: "/views/**/*.view"
include: "/*.view"


datagroup: trading_default_datagroup {
  sql_trigger: SELECT sum(revenue) FROM datmart.trading;;
  max_cache_age: "24 hour"
}

datagroup: tradingjobs_default_datagroup {
  sql_trigger: SELECT count(jobno) FROM datmart.tradingjobs ;;
  max_cache_age: "24 hour"
}

datagroup: tradingsuite_default_datagroup {
  sql_trigger: SELECT sum(revenue) FROM datamart.vwtradingsuite ;;
  max_cache_age: "24 hour"
}

datagroup: tradingsuite_monthly_default_datagroup {
  sql_trigger: SELECT sum(revenue) FROM datamart.vwtradingsuite_monthly ;;
  max_cache_age: "24 hour"
}


explore: trading {

  label: "Trading"
  persist_with: trading_default_datagroup
  group_label: "DATAMART"
  hidden: yes

  join: salesforce_account_hierarchy {
    view_label: "Salesforce Accounts"
    type: left_outer
    sql_on: ${trading.accountcode} = ${salesforce_account_hierarchy.account_number} ;;
    relationship: many_to_one
    fields: [salesforce_account_hierarchy.account_detail*]
  }

  join: dt_sfuser {
    view_label: "Salesforce User"
    type: left_outer
    sql_on: ${salesforce_account_hierarchy.account_manager_id} = ${dt_sfuser.id} ;;
    relationship: many_to_one
    fields: [dt_sfuser.detail*]
  }

}

explore: tradingjobs {

  label: "Trading Jobs"
  view_label: "Trading Jobs"
  persist_with: tradingjobs_default_datagroup
  group_label: "DATAMART"
  hidden: no
  fields: [tradingjobs.explore_set*]

}

explore: vwtradingsuite {

  label: "Trading Weekly"
  view_label: "Trading Weekly"
  persist_with: tradingsuite_default_datagroup
  group_label: "DATAMART"
  hidden: no
  access_filter: {
    field: vwtradingsuite.user_name
    user_attribute: account_owner_filter
  }
  #fields: [tradingjobs.explore_set*]

}

explore: vwtradingsuite_monthly {

  label: "Trading Monthly"
  view_label: "Trading Monthly"
  persist_with: tradingsuite_monthly_default_datagroup
  group_label: "DATAMART"
  hidden: no
  access_filter: {
    field: vwtradingsuite_monthly.user_name
    user_attribute: account_owner_filter
  }
  #fields: [tradingjobs.explore_set*]

}
