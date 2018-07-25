view: source_joins {
  sql_table_name: data_5b477838c366d.source_joins ;;

  dimension: join_id {
    type: number
    sql: ${TABLE}.join_id ;;
  }

  dimension: join_set {
    type: string
    sql: ${TABLE}.join_set ;;
  }

  dimension: join_setf {
    type: string
    sql: ${TABLE}.join_setf ;;
  }

  dimension: join_t1 {
    type: number
    sql: ${TABLE}.join_t1 ;;
  }

  dimension: join_t2 {
    type: number
    sql: ${TABLE}.join_t2 ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sources.source_id, sources.source_name]
  }
}
