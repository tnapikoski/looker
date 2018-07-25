view: chat_users {
  sql_table_name: data_5b477838c366d.chat_users ;;

  dimension: chat_user_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.chat_user_id ;;
  }

  dimension: chat_account_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.chat_account_id ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.user_name ;;
  }

  measure: count {
    type: count
    drill_fields: [chat_user_id, user_name, display_name, chat_accounts.chat_account_id, chat_accounts.name]
  }
}
