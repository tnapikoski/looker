view: notifications {
  sql_table_name: data_5b477838c366d.notifications ;;

  dimension: notification_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.notification_id ;;
  }

  dimension: notification_click {
    type: string
    sql: ${TABLE}.notification_click ;;
  }

  dimension: notification_message {
    type: string
    sql: ${TABLE}.notification_message ;;
  }

  dimension: notification_tooltip {
    type: string
    sql: ${TABLE}.notification_tooltip ;;
  }

  dimension: notification_type {
    type: string
    sql: ${TABLE}.notification_type ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [notification_id]
  }
}
