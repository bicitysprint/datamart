connection: "datamart"

# include all the views
include: "/views/**/*.view"
include: "/*.view"


datagroup: trading_default_datagroup {
  sql_trigger: SELECT count(jobno) FROM datmart.trading;;
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
