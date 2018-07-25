view: extender_map {
  sql_table_name: data_5b477838c366d.extender_map ;;

  dimension: extender_map_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.extender_map_id ;;
  }

  dimension: extender_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.extender_id ;;
  }

  dimension: extender_link_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.extender_link_id ;;
  }

  dimension: fields {
    type: string
    sql: ${TABLE}.fields ;;
  }

  dimension: precedence {
    type: string
    sql: ${TABLE}.precedence ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.property ;;
  }

  measure: count {
    type: count
    drill_fields: [extender_map_id, extender_link.extender_link_id, extender.extender_id, extender.name]
  }
}
