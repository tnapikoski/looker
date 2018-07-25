view: messages {
  sql_table_name: data_5b477838c366d.messages ;;

  dimension: message_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.message_id ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_closable {
    type: yesno
    sql: ${TABLE}.is_closable ;;
  }

  dimension_group: message_end_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.message_end_dt ;;
  }

  dimension_group: message_start_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.message_start_dt ;;
  }

  dimension: message_text {
    type: string
    sql: ${TABLE}.message_text ;;
  }

  dimension: message_title {
    type: string
    sql: ${TABLE}.message_title ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [message_id]
  }
}
