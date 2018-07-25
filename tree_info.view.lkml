view: tree_info {
  sql_table_name: data_5b477838c366d.tree_info ;;

  dimension: tree_info_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tree_info_id ;;
  }

  dimension: info {
    type: string
    sql: ${TABLE}.info ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [tree_info_id, sources.source_id, sources.source_name]
  }
}
