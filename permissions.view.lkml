view: permissions {
  sql_table_name: data_5b477838c366d.permissions ;;

  dimension: permission_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.permission_id ;;
  }

  dimension: c {
    type: yesno
    sql: ${TABLE}.C ;;
  }

  dimension: context {
    type: string
    sql: ${TABLE}.context ;;
  }

  dimension: context_id {
    type: number
    sql: ${TABLE}.context_id ;;
  }

  dimension: d {
    type: yesno
    sql: ${TABLE}.D ;;
  }

  dimension: r {
    type: yesno
    sql: ${TABLE}.R ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_type_id ;;
  }

  dimension: w {
    type: yesno
    sql: ${TABLE}.W ;;
  }

  dimension: x {
    type: yesno
    sql: ${TABLE}.X ;;
  }

  measure: count {
    type: count
    drill_fields: [permission_id, user_types.user_type_id, user_types.user_type_name, permission_duplicates.count]
  }
}
