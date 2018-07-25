view: extender {
  sql_table_name: data_5b477838c366d.extender ;;

  dimension: extender_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.extender_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [extender_id, name, extender_link.count, extender_map.count]
  }
}
