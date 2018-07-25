view: connections {
  sql_table_name: data_5b477838c366d.connections ;;

  dimension: connection_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.connection_id ;;
  }

  dimension: connection_desc {
    type: string
    sql: ${TABLE}.connection_desc ;;
  }

  dimension: connection_info {
    type: string
    sql: ${TABLE}.connection_info ;;
  }

  dimension: connection_name {
    type: string
    sql: ${TABLE}.connection_name ;;
  }

  dimension: connection_type {
    type: number
    sql: ${TABLE}.connection_type ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  measure: count {
    type: count
    drill_fields: [connection_id, connection_name, source_connections.count]
  }
}
