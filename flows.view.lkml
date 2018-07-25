view: flows {
  sql_table_name: data_5b477838c366d.flows ;;

  dimension: flow_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.flow_id ;;
  }

  dimension: config {
    type: string
    sql: ${TABLE}.config ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: sched_job_id {
    type: number
    sql: ${TABLE}.sched_job_id ;;
  }

  dimension: source_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.source_id ;;
  }

  dimension: trigger_type {
    type: string
    sql: ${TABLE}.trigger_type ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [flow_id, name, sources.source_id, sources.source_name]
  }
}
