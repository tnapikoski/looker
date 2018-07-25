view: extender_link {
  sql_table_name: data_5b477838c366d.extender_link ;;

  dimension: extender_link_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.extender_link_id ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: extender_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.extender_id ;;
  }

  dimension: field {
    type: number
    sql: ${TABLE}.field ;;
  }

  dimension: property {
    type: string
    sql: ${TABLE}.property ;;
  }

  dimension: table {
    type: number
    sql: ${TABLE}.`table` ;;
  }

  measure: count {
    type: count
    drill_fields: [extender_link_id, extender.extender_id, extender.name, extender_map.count]
  }
}
