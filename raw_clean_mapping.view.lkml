view: raw_clean_mapping {
  sql_table_name: data_5b477838c366d.raw_clean_mapping ;;

  dimension: case {
    type: yesno
    sql: ${TABLE}.`case` ;;
  }

  dimension: clean {
    type: string
    sql: ${TABLE}.clean ;;
  }

  dimension: map_id {
    type: number
    sql: ${TABLE}.map_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: raw {
    type: string
    sql: ${TABLE}.raw ;;
  }

  dimension: tables {
    type: string
    sql: ${TABLE}.tables ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
