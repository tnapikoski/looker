view: form_elements {
  sql_table_name: data_5b477838c366d.form_elements ;;

  dimension: element_default {
    type: string
    sql: ${TABLE}.element_default ;;
  }

  dimension: element_help {
    type: string
    sql: ${TABLE}.element_help ;;
  }

  dimension: element_hidden {
    type: yesno
    sql: ${TABLE}.element_hidden ;;
  }

  dimension: element_html {
    type: string
    sql: ${TABLE}.element_html ;;
  }

  dimension: element_id {
    type: number
    sql: ${TABLE}.element_id ;;
  }

  dimension: element_js {
    type: string
    sql: ${TABLE}.element_js ;;
  }

  dimension: element_name {
    type: string
    sql: ${TABLE}.element_name ;;
  }

  dimension: element_order {
    type: number
    sql: ${TABLE}.element_order ;;
  }

  dimension: element_readonly {
    type: yesno
    sql: ${TABLE}.element_readonly ;;
  }

  dimension: element_required {
    type: yesno
    sql: ${TABLE}.element_required ;;
  }

  dimension: element_type {
    type: string
    sql: ${TABLE}.element_type ;;
  }

  dimension: form_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.form_id ;;
  }

  measure: count {
    type: count
    drill_fields: [element_name, forms.form_id, forms.form_name]
  }
}
