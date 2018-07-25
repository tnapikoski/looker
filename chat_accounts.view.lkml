view: chat_accounts {
  sql_table_name: data_5b477838c366d.chat_accounts ;;

  dimension: chat_account_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.chat_account_id ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: team {
    type: string
    sql: ${TABLE}.team ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [chat_account_id, name, chat_users.count]
  }
}
