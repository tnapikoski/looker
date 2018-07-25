view: workspaces {
  sql_table_name: data_5b477838c366d.workspaces ;;

  dimension: workspace_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.workspace_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [workspace_id, name, workspace_elements.count]
  }
}
