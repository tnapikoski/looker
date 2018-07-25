view: source_version_control {
  sql_table_name: data_5b477838c366d.source_version_control ;;

  dimension: con_id {
    type: number
    sql: ${TABLE}.con_id ;;
  }

  dimension: is_active {
    type: number
    sql: ${TABLE}.is_active ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: vc_id {
    type: number
    sql: ${TABLE}.vc_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sources.source_id, sources.source_name]
  }
}
