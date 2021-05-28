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
  access_filter: {
    field: tradingjobs.user_name
    user_attribute: account_owner_filter
  }

  access_filter: {
    field: ut_regions_table.grouped_name
    user_attribute: trading_service_centre_filter
  }

  join: ut_regions_table {
    sql_on: ${tradingjobs.servicecentrecode_mgmtac} = ${ut_regions_table.sales_code_d} ;;
    relationship: many_to_one
    view_label: "Trading Jobs"
    fields: [ut_regions_table.explore_join*]
  }

  join: salesforce_account_hierarchy {
    sql_on: ${tradingjobs.accountcode} = ${salesforce_account_hierarchy.account_number} ;;
    relationship: many_to_one
    view_label: "Trading Jobs"
    fields: [salesforce_account_hierarchy.forecast_key]
  }

  # access_filter: {
  #   field: tradingjobs.managername
  #   user_attribute: team_manager_filter
  # }
sql_always_where: ifnull(${servicecode},'exclude') != 'exclude' ;;
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

  access_filter: {
    field: vwtradingsuite.managementaccountservicecentre
    user_attribute: trading_service_centre_filter
  }

  # access_filter: {
  #   field: vwtradingsuite.managername
  #   user_attribute: team_manager_filter
  # }
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

  access_filter: {
    field: vwtradingsuite_monthly.managementaccountservicecentre
    user_attribute: trading_service_centre_filter
  }

  # access_filter: {
  #   field: vwtradingsuite_monthly.managername
  #   user_attribute: team_manager_filter
  # }

  # join: tradingjobs {
  #   type: left_outer
  #   sql_on: ${vwtradingsuite_monthly.accountcode} = ${tradingjobs.accountcode} and
  #           ${vwtradingsuite_monthly.wcmonthdate_month} = ${tradingjobs.booking_month}    ;;
  #   relationship: one_to_many
  # }

  #fields: [tradingjobs.explore_set*]
}

explore: commission_jobs {
  label: "New Business Commission Jobs"
  group_label: "DATAMART"
  hidden: yes
  access_filter: {
    field: commission_jobs.user_name
    user_attribute: bonus_name_filter
  }

}

  explore: commission_pay_history_account {
    label: "Bonus And Commission Account History"
    group_label: "DATAMART"
    hidden: yes
    access_filter: {
      field: commission_pay_history_account.username
      user_attribute: bonus_name_filter
    }



  }

    explore: commission_pay_history_final {
      label: "Bonus And Commission History"
      group_label: "DATAMART"
      hidden: yes
      access_filter: {
        field: commission_users.user_name
         user_attribute: bonus_name_filter
      }

    join: commission_users {
      type: left_outer
      relationship: many_to_one
      sql_on: ${commission_pay_history_final.userid} = ${commission_users.user_id} ;;
      fields: [commission_users.user_name,commission_users.department]
    }

  }

  explore: monthly_adjustments_accounts {
    group_label: "DATAMART"
    view_name: vwtradingsuite_monthly
    view_label: "Monthly Adjustments Accounts"
    #access_filter: {
     # field: vwtradingsuite_monthly.user_name
     # user_attribute: bonus_name_filter
   # }

    join: commission_pay_history_account {
      type: left_outer
      relationship: one_to_one
      sql_on: ${vwtradingsuite_monthly.accountcode} = ${commission_pay_history_account.accountcode}
              and ${vwtradingsuite_monthly.wcmonthdate_month} = ${commission_pay_history_account.bonus_date_month}  ;;
    }


  }
