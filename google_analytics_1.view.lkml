view: google_analytics_1 {
  sql_table_name: data_5b477838c366d.Google Analytics (1) ;;

  dimension: ad_content {
    type: string
    sql: ${TABLE}.`Ad Content` ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.Campaign ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: keyword {
    type: string
    sql: ${TABLE}.Keyword ;;
  }

  dimension: medium {
    type: string
    sql: ${TABLE}.Medium ;;
  }

  dimension: pageviews {
    type: number
    sql: ${TABLE}.Pageviews ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.Sessions ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.Source ;;
  }

  dimension: source__medium {
    type: string
    sql: ${TABLE}.`Source / Medium` ;;
  }

  dimension_group: sys_cdate {
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
    sql: ${TABLE}.sys_cdate ;;
  }

  dimension: sys_id {
    type: number
    sql: ${TABLE}.sys_id ;;
  }

  dimension_group: sys_udate {
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
    sql: ${TABLE}.sys_udate ;;
  }

  dimension: sys_user_id {
    type: number
    sql: ${TABLE}.sys_user_id ;;
  }

  dimension: users {
    type: number
    sql: ${TABLE}.Users ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
