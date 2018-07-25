view: pinned_elements {
  sql_table_name: data_5b477838c366d.pinned_elements ;;

  dimension: element_id {
    type: number
    sql: ${TABLE}.element_id ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: pin_id {
    type: number
    sql: ${TABLE}.pin_id ;;
  }

  dimension: pin_type {
    type: string
    sql: ${TABLE}.pin_type ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
