view: help_windows {
  sql_table_name: data_5b477838c366d.help_windows ;;

  dimension: arrow_pos {
    type: string
    sql: ${TABLE}.arrow_pos ;;
  }

  dimension: element_id {
    type: string
    sql: ${TABLE}.element_id ;;
  }

  dimension: help_body {
    type: string
    sql: ${TABLE}.help_body ;;
  }

  dimension: help_title {
    type: string
    sql: ${TABLE}.help_title ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
