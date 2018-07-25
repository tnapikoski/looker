view: user_type_table_access {
  sql_table_name: data_5b477838c366d.user_type_table_access ;;

  dimension: data_read {
    type: yesno
    sql: ${TABLE}.data_read ;;
  }

  dimension: data_remove {
    type: yesno
    sql: ${TABLE}.data_remove ;;
  }

  dimension: data_write {
    type: yesno
    sql: ${TABLE}.data_write ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: user_type_access_id {
    type: number
    sql: ${TABLE}.user_type_access_id ;;
  }

  dimension: user_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [user_types.user_type_id, user_types.user_type_name, sources.source_id, sources.source_name]
  }
}
