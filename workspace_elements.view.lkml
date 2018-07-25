view: workspace_elements {
  sql_table_name: data_5b477838c366d.workspace_elements ;;

  dimension: element_id {
    type: number
    sql: ${TABLE}.element_id ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: ref_id {
    type: number
    sql: ${TABLE}.ref_id ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: workspace_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.workspace_id ;;
  }

  measure: count {
    type: count
    drill_fields: [workspaces.workspace_id, workspaces.name]
  }
}
