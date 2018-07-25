view: user_exceptions {
  sql_table_name: data_5b477838c366d.user_exceptions ;;

  dimension: exception_id {
    type: number
    sql: ${TABLE}.exception_id ;;
  }

  dimension: exception_list {
    type: string
    sql: ${TABLE}.exception_list ;;
  }

  dimension: exception_read {
    type: yesno
    sql: ${TABLE}.exception_read ;;
  }

  dimension: exception_remove {
    type: yesno
    sql: ${TABLE}.exception_remove ;;
  }

  dimension: exception_write {
    type: yesno
    sql: ${TABLE}.exception_write ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
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
