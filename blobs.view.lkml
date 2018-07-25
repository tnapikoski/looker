view: blobs {
  sql_table_name: data_5b477838c366d.blobs ;;

  dimension: blob_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.blob_id ;;
  }

  dimension: blob {
    type: string
    sql: ${TABLE}.`blob` ;;
  }

  dimension: blob_guid {
    type: string
    sql: ${TABLE}.blob_guid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [blob_id, name]
  }
}
