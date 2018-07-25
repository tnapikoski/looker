view: notification_settings {
  sql_table_name: data_5b477838c366d.notification_settings ;;

  dimension: settings_con {
    type: yesno
    sql: ${TABLE}.settings_con ;;
  }

  dimension: settings_doc {
    type: yesno
    sql: ${TABLE}.settings_doc ;;
  }

  dimension: settings_id {
    type: number
    sql: ${TABLE}.settings_id ;;
  }

  dimension: settings_not {
    type: yesno
    sql: ${TABLE}.settings_not ;;
  }

  dimension: settings_que {
    type: yesno
    sql: ${TABLE}.settings_que ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: subscriptions {
    type: string
    sql: ${TABLE}.subscriptions ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sources.source_id, sources.source_name]
  }
}
