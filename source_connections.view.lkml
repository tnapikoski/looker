view: source_connections {
  sql_table_name: data_5b477838c366d.source_connections ;;

  dimension: connection_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.connection_id ;;
  }

  dimension: connection_info {
    type: string
    sql: ${TABLE}.connection_info ;;
  }

  dimension: connection_update {
    type: string
    sql: ${TABLE}.connection_update ;;
  }

  dimension: source_con_id {
    type: number
    sql: ${TABLE}.source_con_id ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [connections.connection_id, connections.connection_name, sources.source_id, sources.source_name]
  }
}
