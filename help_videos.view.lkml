view: help_videos {
  sql_table_name: data_5b477838c366d.help_videos ;;

  dimension: help_id {
    type: number
    sql: ${TABLE}.help_id ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: video_name {
    type: string
    sql: ${TABLE}.video_name ;;
  }

  dimension: video_tool {
    type: string
    sql: ${TABLE}.video_tool ;;
  }

  dimension: video_url {
    type: string
    sql: ${TABLE}.video_url ;;
  }

  measure: count {
    type: count
    drill_fields: [video_name]
  }
}
