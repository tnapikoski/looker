view: source_profiles {
  sql_table_name: data_5b477838c366d.source_profiles ;;

  dimension: source_profile_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.source_profile_id ;;
  }

  dimension: f1 {
    type: number
    sql: ${TABLE}.f1 ;;
  }

  dimension: f2 {
    type: number
    sql: ${TABLE}.f2 ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: t1 {
    type: number
    sql: ${TABLE}.t1 ;;
  }

  dimension: t2 {
    type: number
    sql: ${TABLE}.t2 ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [source_profile_id]
  }
}
