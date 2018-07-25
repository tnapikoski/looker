view: sources {
  sql_table_name: data_5b477838c366d.sources ;;

  dimension: source_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.source_id ;;
  }

  dimension: backup {
    type: string
    sql: ${TABLE}.backup ;;
  }

  dimension_group: backup_timestamp {
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
    sql: ${TABLE}.backup_timestamp ;;
  }

  dimension: date_field {
    type: string
    sql: ${TABLE}.date_field ;;
  }

  dimension: htmljs {
    type: string
    sql: ${TABLE}.htmljs ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: locked {
    type: yesno
    sql: ${TABLE}.locked ;;
  }

  dimension: order_by {
    type: string
    sql: ${TABLE}.order_by ;;
  }

  dimension: preset_data {
    type: number
    sql: ${TABLE}.preset_data ;;
  }

  dimension: sched_job_id {
    type: number
    sql: ${TABLE}.sched_job_id ;;
  }

  dimension: source_data_location {
    type: string
    sql: ${TABLE}.source_data_location ;;
  }

  dimension: source_desc {
    type: string
    sql: ${TABLE}.source_desc ;;
  }

  dimension: source_group {
    type: string
    sql: ${TABLE}.source_group ;;
  }

  dimension: source_guid {
    type: string
    sql: ${TABLE}.source_guid ;;
  }

  dimension: source_join_type {
    type: string
    sql: ${TABLE}.source_join_type ;;
  }

  dimension: source_name {
    type: string
    sql: ${TABLE}.source_name ;;
  }

  dimension: source_parent {
    type: number
    sql: ${TABLE}.source_parent ;;
  }

  dimension: source_sql {
    type: string
    sql: ${TABLE}.source_sql ;;
  }

  dimension: source_status {
    type: string
    sql: ${TABLE}.source_status ;;
  }

  dimension: source_status_user {
    type: number
    sql: ${TABLE}.source_status_user ;;
  }

  dimension: source_type {
    type: yesno
    sql: ${TABLE}.source_type ;;
  }

  dimension: source_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_type_id ;;
  }

  dimension: source_where {
    type: string
    sql: ${TABLE}.source_where ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      source_id,
      source_name,
      source_types.source_type_id,
      source_types.source_type_name,
      api.count,
      business_rule_group.count,
      field_types.count,
      flows.count,
      forms.count,
      notification_settings.count,
      profile_log.count,
      source_charts.count,
      source_conditionals.count,
      source_connections.count,
      source_fields.count,
      source_joins.count,
      source_notes.count,
      source_pivots.count,
      source_stats_log.count,
      source_version_control.count,
      source_views.count,
      tree_info.count,
      user_exceptions.count,
      user_type_table_access.count
    ]
  }
}
