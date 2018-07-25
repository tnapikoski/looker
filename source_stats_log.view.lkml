view: source_stats_log {
  sql_table_name: data_5b477838c366d.source_stats_log ;;

  dimension: source_stats_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.source_stats_log_id ;;
  }

  dimension_group: first_created {
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
    sql: ${TABLE}.first_created ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.last_updated ;;
  }

  dimension: size_on_disk {
    type: number
    sql: ${TABLE}.size_on_disk ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: total_records {
    type: number
    sql: ${TABLE}.total_records ;;
  }

  measure: count {
    type: count
    drill_fields: [source_stats_log_id, sources.source_id, sources.source_name]
  }
}
