view: source_notes {
  sql_table_name: data_5b477838c366d.source_notes ;;

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: note_id {
    type: number
    sql: ${TABLE}.note_id ;;
  }

  dimension: note_text {
    type: string
    sql: ${TABLE}.note_text ;;
  }

  dimension_group: note {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.note_time ;;
  }

  dimension: note_type {
    type: string
    sql: ${TABLE}.note_type ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [sources.source_id, sources.source_name]
  }
}
