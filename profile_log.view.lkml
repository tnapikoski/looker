view: profile_log {
  sql_table_name: data_5b477838c366d.profile_log ;;

  dimension: profile_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.profile_log_id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: function {
    type: string
    sql: ${TABLE}.function ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  measure: count {
    type: count
    drill_fields: [profile_log_id, sources.source_id, sources.source_name]
  }
}
