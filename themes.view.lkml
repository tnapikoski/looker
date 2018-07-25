view: themes {
  sql_table_name: data_5b477838c366d.themes ;;

  dimension: theme_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.theme_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: theme_css {
    type: string
    sql: ${TABLE}.theme_css ;;
  }

  dimension: theme_name {
    type: string
    sql: ${TABLE}.theme_name ;;
  }

  dimension: theme_type {
    type: yesno
    sql: ${TABLE}.theme_type ;;
  }

  measure: count {
    type: count
    drill_fields: [theme_id, theme_name]
  }
}
